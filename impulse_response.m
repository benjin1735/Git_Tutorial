function [ h,t ] = impulse_response( x, y, fs )
%impulse_response returns the impulse response of the system given the
%system input, x, and system output, y.
%   inputs: x, measured input signal
%           y, measured output signal
%           fs, sampling frequency of measurements
%   outputs:    h, calculated impulse response

[X,f] = fdomain(x,fs);
[Y,f] = fdomain(y,fs);
H = Y./X;   % the calculated frequency response
%Changed X./Y to Y./X, Ben Jin 2/22/21
[h,t] = tdomain(H,fs);

plot(t,h)
title('impulse response')
xlabel('time')

end

