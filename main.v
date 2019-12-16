module main

import vweb

const (
	port = 8081
)

struct App {
pub mut:
	vweb vweb.Context
	cnt int
}

fn main() {
	app := App{}
	vweb.run(mut app, port)
	//vweb.run<App>(Port)
}

pub fn (app mut App) init() {
	app.vweb.handle_static('.')
}

pub fn (app mut App) json_endpoint() {
	app.vweb.json('{"a": 1}')
}

pub fn (app mut App) index() {
	app.cnt++
	$vweb.html()
}

pub fn (app mut App) text() {
	app.vweb.text('Hello world')
}

pub fn (app mut App) cookie() {
	app.vweb.text('Headers:')
	app.vweb.set_cookie('cookie', 'test')
	app.vweb.text(app.vweb.headers)
	app.vweb.text('Text: hello world')
}

