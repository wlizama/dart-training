import 'dart:io';


processRequest(HttpRequest httpreq) {
	print('request in from ${httpreq.uri.path}');
	final response = httpreq.response;
	if (httpreq.uri.path == '/hello') {
		response
		..headers.contentType = ContentType(
			'text',
			'plain'
		)
		..write('Hello elo from server');
	}
	else
		response.statusCode = HttpStatus.notFound;
	
	response.close();
}

// probar en navegador con 
// http://localhost:3179
// http://localhost:3179/hello
Future main(List<String> args) async {
	final requests = await HttpServer.bind('localhost', 3179);
	await for(var req in requests) {
		processRequest(req);
	}
}