clear, clc, close all
row= 1000
%% Monte_Carlo_Simulation_For_Area
d_Area = log(lognrnd(85,9,row,1));
Area2=100*d_Area
random_number_of_area= Area2

figure
hist(Area2) %histogram
title('Monte Carlo Simulation for Area')
xlabel('Area (acres)')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_Area
Mean_Area= mean(Area2)
Std_Area= std(Area2)
Percentil_Area10=prctile(Area2,10)
Percentil_Area50=prctile(Area2,50)
Percentil_Area90=prctile(Area2,90)

%% Monte_Carlo_Simulation_For_Thickness
d_Thickness = log(lognrnd(100,10,row,1));
random_number_of_thickness= d_Thickness

figure
hist(d_Thickness) %histogram
title('Monte Carlo Simulation for Thickness')
xlabel('Thickness(ft)')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_Thickness
Mean_Thickness= mean(d_Thickness)
Std_Thicness= std(d_Thickness)
Percentil_Thickness10=prctile(d_Thickness,10)
Percentil_Thickness50=prctile(d_Thickness,50)
Percentil_Thickness90=prctile(d_Thickness,90)

%% Monte Carlo Simulation for Porosity
d_poro = log(lognrnd(0.25,0.04,row,1));
random_number_of_porosity= d_poro

figure
hist(d_poro) %histogram
title('Monte Carlo Simulation for Porosity')
xlabel('Porosity (P.U)')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_Porosity
Mean_Porosity= mean(d_poro)
Std_Porosity= std(d_poro)
Percentil_Porosity10=prctile(d_poro,10)
Percentil_Porosity50=prctile(d_poro,50)
Percentil_Porosity90=prctile(d_poro,90)

%% Monte_Carlo_Simulation_for_Connate water Saturation
d_swc = log(lognrnd(0.25,0.05,row,1));
random_number_of_swc= d_swc

figure
hist(d_swc) %histogram
title('Monte Carlo Simulation for Connate water Saturation (swc)')
xlabel('Connate water Saturation')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_SWC
Mean_swc=mean(d_swc)
Std_swc= std(d_swc)
Percentil_swc10=prctile(d_swc,10)
Percentil_swc50=prctile(d_swc,50)
Percentil_swc90=prctile(d_swc,90)

%% Monte_Carlo_Simulation_for_Oil Formation Volume Factor
d_Bo = log(lognrnd(1.29,0.05,row,1));
random_number_of_Bo= d_Bo

figure
hist(d_Bo) %histogram
title('Monte Carlo Simulation for Oil Formation Volume Factor (Bo)')
xlabel('Oil Formation Volume Factor (rb/stb)')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_Bo
Mean_Bo= mean(d_Bo)
Std_Bo= std(d_Bo)
Percentil_Bo10=prctile(d_Bo,10)
Percentil_Bo50=prctile(d_Bo,50)
Percentil_Bo90=prctile(d_Bo,90)

%% Monte_Carlo_Simulation_for_Volumetrik
%N= 7758*A*H*porosity*(1-Swc)/Bo; %Volumetric (Stb)
A = [Area2]
H= [d_Thickness]
Porosity= [d_poro]
Swc = [d_swc]
Bo = [d_Bo]
d_N= 7758*(A.*H).*(Porosity.*(1-Swc))./Bo

figure
hist(d_N) 
title('Monte Carlo Simulation for Volumetrik')
xlabel('Volumetrik(stb)')
ylabel ('Number of Data')

%mean_Std_Percentil_Of_Volumetrik
Mean_Volumetrik= mean(d_N)
Std_Volumetrik= std(d_N)
Percentil_Volumetrik10=prctile(d_N,10)
Percentil_Volumetrik50=prctile(d_N,50)
Percentil_Volumetrik90=prctile(d_N,90)


