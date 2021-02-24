interface Question {
	value : number
}

function fibonacci(data:Question):number {
	var pattern:Array<number> = new Array()
	var x:number = 0;

	while (x < data.value + 1) {
		if (x == 0 || x == 1) {
			pattern.push(x)
		} else {
			pattern.push(pattern[x - 1] + pattern[x - 2])
		}
		x++;
	}
	return pattern[x - 1]
}
