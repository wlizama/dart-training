class Class01 {
	// todos los atributos de clase no inicializados
	// por defecto inicializan en null
	num n1;
	String str01;
	bool isBool;

	// constructor syntaxis sugar
	// igual que definirlo:
	// Class01(num n1, String str01, bool isBool) {
	//  	this.ni = ni;
	// 		this.str01 = str01;
	// 		this.isBool = isBool;
	// }
	Class01(this.n1, this.str01, this.isBool);

	// constructor nombrado
	Class01.myNamedConstructor() {
		print('Este es un constructor nombrado');
	}

	// delega a otro constructor
	Class01.onlyNumAttrib(num n1) : this(n1, '', false);

	// metodos
	num multi(num porCuanto) {
		return n1 * porCuanto;
	}

	// getters & setters
	bool get isBoolNegative => !isBool;
	set isBoolNegative(bool bValue) => isBool = !bValue;
}