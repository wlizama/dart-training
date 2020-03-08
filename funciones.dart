
bool isTrue() {
	return true;
}

// el tipo de dato a retornar se puede obviar
isString() {
	return "Esto es un string";
}

// funcion de autoreturn
getOneLineFn(int param1) => param1 == "";


// parametro por defecto y nombraddo
fnParametrosDefecto({ String text: 'cadena por defecto' }) {
	print('texto=> $text');
}

// parametro posicionado y opcional
fnPositionOptionalParam(String de, String para, [String tono]) {
	print('Mensaje de: $de para $para');
	if (tono != null) {
		print('El mensaje llego con un tono de voz: $tono');
	}
}


main(List<String> args) {
	print(getOneLineFn(15));
	fnParametrosDefecto(text:'Wily');

	fnPositionOptionalParam('Wily', 'Colon');
	fnPositionOptionalParam('Wily', 'Rivera', 'alto');
}
