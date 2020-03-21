import 'dart:convert';
import 'dart:io';


// Response 200: [Hello elo from server]
Future main(List<String> args) async {
	var url = Uri.parse('http://localhost:3179/hello');
	var httpclient = HttpClient();
	var request = await httpclient.getUrl(url);
	var response = await request.close();
	var data = await utf8.decoder.bind(response).toList();
	print('Response ${response.statusCode}: ${data}');
	httpclient.close();
}