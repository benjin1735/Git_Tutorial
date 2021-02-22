fs = pi/30
th = 0:fs:pi
x = sin(th)
y = cos(th)
[ h,t ] = impulse_response( x, y, fs )