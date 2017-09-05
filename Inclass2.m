%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii, 2) ~= 0
        disp(ii)
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

for ii = 1:2:20;
    disp(int2str(ii))
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

ii = 1:2:20;
disp(num2str(ii))
%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

a. 

for ii = 1:100
    z(ii) = ii*ii;
    disp(z(ii))
end

ii = 1:100
z = ii.^2

b. 
z = 0;
for ii = 1:100
    z = z + ii;
    disp (z)
end

ii = 1:100
z = cumsum(ii)


c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,x)^2);
    disp(z(ii))
end

xx = rand(50,2)
z = sqrt(sum(xx.^2,2))

% % d. what is the formula in c computing?

The Pythagorean theorem

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

x = 0:4*pi
y = sin(x)
z = cos(x)

figure;
plot (x, y, 'r--');
hold on;
plot (x, z, 'b-');
title ('sin(x) and cos(x)')

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

figure;
subplot (2, 1, 1)
plot (x, y, 'r--')
title ('sin (x)')

subplot (2, 1, 2)
plot (x, z, 'b-')
title ('cos (x)')

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);

figure;
scatter(xy_dat(:,1), xy_dat(:,2))

%plot the data in the xy plane.

%now imagine there is some fluorescence data corresponding to the same
%cells
% fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

xy_dat = rand(100,2);

figure;
scatter(xy_dat(:,1), xy_dat(:,2), 5, rand(100,1))