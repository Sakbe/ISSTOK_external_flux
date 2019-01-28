%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Script for testing the implementation of
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% substraction of external fluxes from the
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% mirnov coils at ISTTOK

close all
clear all

load('shot_45374.mat');
load('shot_45411.mat');
shot_hor=data;
load('shot_45375.mat');
shot_vert=data;
load('shot_45378.mat');
shot_prim=data;
load('shot_45412.mat');
shot_sum=data;
load('shot_45414.mat')
shot_plasma=data;


%% Plots

figure(1)
suptitle(['Shot #',num2str( shot_hor.shot),'Heaviside Horizontal'])
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_hor.time,shot_hor.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_hor.time,shot_hor.ext_flux(i,:),'-.','LineWidth',2)
grid on
xlabel('Time [s]')
ylabel('Magnetic Flux [V s]')
leg=legend(['Mirnov #', num2str(i)],'Estimated');
set(leg,'Location','NorthEast');
xlim([0 1])
end

figure(2)
suptitle(['Shot #',num2str( shot_vert.shot),'Heaviside Vertical'])
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_vert.time,shot_vert.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_vert.time,shot_vert.ext_flux(i,:),'-.','LineWidth',2)
grid on
xlabel('Time [s]')
ylabel('Magnetic Flux [V s]')
legend(['Mirnov #', num2str(i)],'Estimated')
xlim([0 1])
end

figure(3)
suptitle(['Shot #',num2str( shot_prim.shot),'Heaviside Primary'])
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_prim.time,shot_prim.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_prim.time,shot_prim.ext_flux(i,:),'-.','LineWidth',2)
grid on
xlabel('Time [s]')
ylabel('Magnetic Flux [V s]')
legend(['Mirnov #', num2str(i)],'Estimated')
xlim([0 1])
end

figure(4)
suptitle(['Shot #',num2str( shot_sum.shot),'Heaviside Primary, Vertical and Primary'])
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_sum.time,shot_sum.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_sum.time,shot_sum.ext_flux(i,:),'-.','LineWidth',2)
grid on
xlabel('Time [s]')
ylabel('Magnetic Flux [V s]')
legend(['Mirnov #', num2str(i)],'Estimated')
xlim([0 1])
end

figure(5)
suptitle(['Shot # ',num2str( shot_plasma.shot),'Plasma'])
for i=1:12
subplot(3,4,i)
plot(1e-6*shot_plasma.time,shot_plasma.mirnv_corr(i,:),'LineWidth',2)
hold on
plot(1e-6*shot_plasma.time,shot_plasma.mirnv_corr_flux(i,:),'-.','LineWidth',2)
grid on
xlabel('Time [s]')
ylabel('Magnetic Flux [V s]')
legend(['Mirnov #', num2str(i)],'Corrected')
xlim([0 1])
end