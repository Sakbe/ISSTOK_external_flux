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

time=1e-6*data.time;

%% Plots

figure(1)