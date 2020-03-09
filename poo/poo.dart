import 'Class01.dart';
import 'MyChildClass.dart';

main(List<String> args) {
	Class01 cInst = Class01(15, 'my string', true);
	Class01 cInst2 = Class01.onlyNumAttrib(27);
	
	print(cInst.n1);
	print(cInst.multi(2));
	print(cInst.isBoolNegative);
	print(cInst2.str01);
	cInst2.isBoolNegative = false;
	print(cInst2.isBoolNegative);

	MyChildClass mcc = MyChildClass();
	mcc.parentMethod();
	mcc.metododPropio();

}