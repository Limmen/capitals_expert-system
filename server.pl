:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).

% we need this module from the HTTP client library for http_read_data
:- use_module(library(http/http_client)).
% http_reply_from_files is here
:- use_module(library(http/http_files)).
% http_404 is in here
:- use_module(library(http/http_dispatch)).
% html generation and mailman
:- use_module(library(http/html_write)).
% html_resource
:- use_module(library(http/html_head)).

:- use_module(library(http/http_parameters)).

:- ensure_loaded(['capitals.pl']).

:- multifile http:location/3.

http:location(files, '/f', []).

% this serves files from the directory assets
% under the working directory
:- http_handler(files(.), serve_files, [prefix]).

serve_files(Request) :-
	 http_reply_from_files('resources', [], Request).
serve_files(Request) :-
	  http_404([], Request).


% this serves files from the directory assets
% under the working directory
:- http_handler('/', root_handler, []).

server(Port) :-
        http_server(http_dispatch, [port(Port)]).

root_handler(Request) :-
    start(Request).

:- http_handler('/form_handler', form_handler, []).
:- http_handler('/undo_handler', undo_handler, []).

form_handler(Request) :-
    http_parameters(Request,
                    [response(Response, [atom]),
                   question(Question, [atom])]),
    assert(asked(Question)),
    ((Response == yes ; Response == y)
      ->
          assert(yes(Question));
      (Response == no ; Response == n)
      ->
          assert(no(Question));
    true), 
    http_redirect(moved, '/', Request).

undo_handler(Request) :-
    undo,
    http_redirect(moved, '/', Request). 


render(unknown, Request):- question(Question),
                           render_question(Question, Request).
                           
render(Capital, Request):- render_answer(Capital, Request).

render_question(done, Request):-
    render_answer(unknown, Request).

render_question(Question, Request):-
	reply_html_page(
	    title('Guess the capital'),
	   div(class='center-block container',[
            \html_requires(files('style.css')),
            \html_requires(files('bootstrap.min.css')),
            h1([class=title], ['Let me guess the capital you are thinking of.', small('(Europe only!)')]),
            p([class=question],['Is  this true for the capital: ', b('~w ?'-[Question]), ' (yes/no)']),
	     form([action='/form_handler', method='POST'], [
		div([class='form-group input'], [
		  input([name=response, id=response, class='form-control'])
		      ]),
        p([], [
		      input([name=question, type=hidden, value='~w'-[Question]])
		 ]),
		button([class='btn btn-default', type=submit], ['Answer'])
	      ]),
         p(''),
         form([action='/undo_handler', method='POST'], [
		          button([class='btn btn-default', type=submit], ['Restart (undo all answers)'])
	         ])
        ])).


render_answer(Capital, Request):-
    reply_html_page
	    title('Guess the capital'),
        div(class='center-block container',[
                \html_requires(files('style.css')),
                \html_requires(files('bootstrap.min.css')),
                h1([class=title], ['Let me guess the capital you are thinking of.', small('(Europe only!)')]),
                p([class=question],['I guess that the capital is:  ', b('~w '-[Capital])]),
            form([action='/undo_handler', method='POST'], [
		          button([class='btn btn-default', type=submit], ['Restart (undo all answers)'])
	            ])
        ]
        )).
