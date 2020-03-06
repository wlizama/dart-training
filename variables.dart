main(List<String> args) {

	// las variables no inicializadas se inicializan con 
	// el valor null
	int myInt;
	print(myInt);

	var myVar = 'Wily colon';
	// la sgte linea dara error ya que la variable fue
	// declarada como String devido a su valor inicial
	//myVar = 5;

	// se peude asignar cualquier valor si la variable se declara como 
	// Object o dynamic 
	dynamic myDynamic = 'Wiy Colon?';
	myDynamic = 26;

	// los valores de una variable final no se pueden cambiar
	final myFinal = 3.1415;
	final double myPIFinal = 3.1415;

	// las variables de tipo const se inicializar su valores en tiempo de compilacion
	// no se puede cambiar su valor luego 
	const myConst = 1000000;
	const double atm = 1.01325 * myConst;


	// tipos
	var varType = 'var \'String\' type';
	int intType = 16;
	double doubleType = 13;
	print(doubleType); // 13.0
	String concat1 = 'Este es un string'
					 ' concatenado?'
					 ' ado?';
	print(concat1);
	String concat2 = '''Esta es una cadena 
	multilinea
	multilinea en serio
	''';
	print(concat2);
	bool isTrue = true;
	

	// parsing
	var one = int.parse('4521');
	var two = double.parse('124.15');
	var three = 5.toString();

	// listas
	var myList = [8,9,6,3,1];
	print(myList.length);
	print(myList[2]);
	print(myList);
	myList[2] = 25;
	print(myList);
	
	var myList1 = [2,63,1,8,25];
	var myList2 = [5,9,23,4];
	var myList3 = [...myList1,...myList2];
	print(myList3);

	var myList4;
	var myList5 = [0, ...?myList4]; // para evitar excepciones en caso del valor nulo
	print(myList5);

	// sets
	var mySet = {'set01', 'set02', 'set03'};
	print(mySet);
	var myEmptySet = <String>{};
	myEmptySet.add('Richi palma');
	myEmptySet.add('Alita broaster');
	myEmptySet.add('U cato');
	print(myEmptySet);

	// maps
	var gifts = {
		// Key:    Value
		'first': 'partridge',
		'second': 'turtledoves',
		'fifth': 'golden rings'
	};
	print(gifts);
	print(gifts['second']);
	var nobleGases = {
		2: 'helium',
		10: 'neon',
		18: 'argon',
	};
}