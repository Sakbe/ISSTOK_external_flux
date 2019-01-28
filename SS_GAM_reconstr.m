%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Script for testing the implementation of
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% substraction of external fluxes from the
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% mirnov coils at ISTTOK

close all
clear all

load('shot_45374.mat');
shot_hor=data;
load('shot_45375.mat');
shot_vert=data;
load('shot_45378.mat');
shot_prim=data;
load('shot_45379.mat');
shot_sum=data;



%% Plots

figure(1)
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_hor.time,shot_hor.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_hor.time,shot_hor.ext_flux(i,:),'-.','LineWidth',2)
grid on
end



