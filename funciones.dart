
bool isTrue() {
	return true;
}

// el tipo de dato a retornar se puede obviar
isString() {
	return "Esto es un string";
}

// funcion de autoreturn
getOneLineFn(int param1) => param1 == "";


// parametro por defecto y nombrado
// puede asignarse con ":" dos puntos, pero esto dejara de funcionar en 
// versiones futuras, lo reemplaza "=" el signo de igual
fnParametrosDefecto({ String text = 'cadena por defecto' }) {
	print('texto=> $text');
}

// parametro posicionado y opcional
fnPositionOptionalParam(String de, String para, [String tono]) {
	print('Mensaje de: $de para $para');
	if (tono != null) {
		print('El mensaje llego con un tono de voz: $tono');
	}
}

// asignar una funcion como variable!
// javascript??? donde??
var gritar = (msg) => '¡¡${msg.toString().toUpperCase()}!!';

// toda funcion retorna un valor, si no es especificado
// estonces es null
nullRetorned(){}

// toda aplicacion debe tener una funccion main que funciona como punto de entrada
main(List<String> args) {
	print(getOneLineFn(15));
	fnParametrosDefecto(text:'Wily');

	fnPositionOptionalParam('Wily', 'Colon');
	fnPositionOptionalParam('Wily', 'Rivera', 'alto');

	print(gritar("miau"));

	// funciones anominas, más parentesco a JS... ummmh, no que va, es solo coincidencia
	var myList = ['guau', 'pio', 'hola'];
	myList.forEach((lItem) {
		print(gritar(lItem));
	});

	print(nullRetorned());
}
