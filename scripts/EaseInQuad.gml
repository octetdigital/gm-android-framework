///EaseInQuad(elapsed,initialval,destinationval,duration)

/*
    EXAMPLE: Inital value = 100 and destination = 0 and we need to 
        reach it in 2 seconds.
        t is variable and should be passed in as a factor of d 0 - 2 in this case
        b is 100
        c is 0 - 100
        d is 2
*/

var _t = argument[0];
var _b = argument[1];
var _c = argument[2] - argument[1]; //CHANGE
var _d = argument[3];

_t /= _d;
	return _c*_t*_t + _b;