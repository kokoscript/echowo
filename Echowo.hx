class Echowo {
	public static function main(){
		var noNewline:Bool = false;
		var built:String;
		var input:String = "";
		
		// If -n is the first argument before some text, print without a newline at the end
		if(Sys.args().length > 1 && Sys.args()[0] == "-n"){
			noNewline = true;
		}

		// If there's spaces, the string will have been split, rejoin
		for(i in 0...Sys.args().length){
			if(!(noNewline && i == 0)){
				if(i != Sys.args().length - 1){
					input += Sys.args()[i] + " ";
				}
				else {
					input += Sys.args()[i];
				}
			}
		}

		// uwufication
		input = StringTools.replace(input, "ll", "ww");
		input = StringTools.replace(input, "orr", "oww");
		input = StringTools.replace(input, "or", "ow");
		input = StringTools.replace(input, "er", "ew");
		input = StringTools.replace(input, "na", "nya");
		input = StringTools.replace(input, "nan", "nyan");
		input = StringTools.replace(input, "ma", "mya");
		input = StringTools.replace(input, "mam", "myam");
		
		built = randomUwuism() + " " + input + " " + randomUwuism();
		if(!noNewline) Sys.println(built);
		else Sys.print(built);
	}

	static function randomUwuism():String {
		var rand:Int = Std.random(10);
		switch(rand){
			case 0: return "uwu";
			case 1: return "owo";
			case 2: return "^w^";
			case 3: return "murr...";
			case 4: return "nya!";
			case 5: return "nyanyan!";
			case 6: return "huoooh...";
			case 7: return "nyu...";
			case 8: return ":3";
			case 9: return "rawr!";
			default: return "fuck!!!1!";
		}
	}
}
