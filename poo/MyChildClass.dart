import 'MyParentClass.dart';

class MyChildClass extends MyParentClass {

	// hacer notar la intencion de la sobreescritura
	@override
	void parentMethod() {
		print('metodo sobreescrito');
	}

	void metododPropio() {
		print('este es un metodo solo de hijo');
	}
}