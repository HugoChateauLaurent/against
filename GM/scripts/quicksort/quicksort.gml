/*
var A;
var low = argument1;
var high = argument2;
var ret = noone;

if(low<high){
	ret = partition(A,low, high);
	A = ret[0];
	A = quicksort(A,low,high);
	A = quicksort(A, ret[1], high);
}

return A;
