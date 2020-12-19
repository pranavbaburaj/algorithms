interface Question {
  array1 : Array<number>,
  array2 : Array<number>
}

function median_of_two_sorted_arrays(data:Question):number {
	array = data.array1 + data.array2;
	array.sort(function(a, b) {
		return a - b;
	})
	// array_length = array.length;
	if (array.length % 2 == 0){
		sum = array[array.length / 2] + array[(array.length / 2) - 1];
		return sum / 2;
	} else {
		return array[Math.floor(array.length / 2)]
	}
}

