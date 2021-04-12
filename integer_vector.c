#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define NONE 0;

struct Vector {
	int vector_length;
	int vector_array[];
};

int length(struct Vector *vector) {
	return vector->vector_length;
}

void print(struct Vector *vector){
	for(int index=0; index<vector->vector_length;index++){
		printf("%d", vector->vector_array[index]);
	}
}

void add(struct Vector *vector, int data){
	vector->vector_array[vector->vector_length] = data;
	vector->vector_length += 1;
}

void pop(struct Vector *vector, int index){
	vector->vector_array[index] = NONE
}


int main(int argc, const char *argv[]) {
	struct Vector vector = {0, {}};
	add(&vector, 5);
  return 0;
}
