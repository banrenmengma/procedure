function [x,y,Dis]=citydata

LatLon=[116.28,39.54; 121.29,31.14; 117.11,39.09; 106.32,29.32; 126.41,45.45;
        125.19,43.52; 123.24,41.50; 111.48,40.49; 114.28,38.02; 112.34,37.52;
        117.00,36.38; 113.42,34.48; 108.54,34.16; 103.49,36.03; 106.16,38.20;
        101.45,36.38;  87.36,43.48; 117.18,31.51; 118.50,32.02; 120.09,30.14;
        113.00,28.11; 115.52,28.41; 114.21,30.37; 104.05,30.39; 106.42,26.35;
        119.18,26.05; 113.15,23.08; 110.20,20.02; 108.20,22.48; 102.41,25.00;
         90.08,29.39; 114.10,22.18; 113.35,22.14; 121.31,25.03];
 x=LatLon(:,1);
 y=LatLon(:,2);
 
 % Latitude/Longitude Distance Calculation:
 % http://www.mathforum.com/library/drmath/view/51711.html
 
Lat = y/180*pi;
Lon = x/180*pi;
numx=length(x);
Dis=zeros(numx);
R = 6378.137;
for i=1:numx
    for j=1:numx
        dLat=Lat(i)-Lat(j);
        dLon=Lon(i)-Lon(j);
        Dis(i,j)= 2*R*asin(sqrt(sin(dLat/2)^2+sin(dLon/2)^2*cos(Lat(i))*cos(Lat(j))));  
    end
end