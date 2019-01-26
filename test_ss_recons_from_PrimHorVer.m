close all
clear all


shot= 'shot_44503.mat'; 
load(shot);
time_sec=1e-6*data.time(11:end);
time_step=-time_sec(1)+time_sec(2);

prim=double(data.prim(11:end));
hor=double(data.hor(11:end));
vert=double(data.vert(11:end));
inputs=[vert,prim,hor]';

for i=1:12
    output(i,:)=0.1*double(data.mirnv_corr(i,(11:end)));
end
for i=1:12
    output(i,:)=1*double(data.mirnv_corr(i,(11:end)));
end

%% Lets estimate the prim
filename = 'ss_mirn_prim.mat'; 
load(filename);

ss_arrays_prim(:,:,1)=ss1;
ss_arrays_prim(:,:,2)=ss2;
ss_arrays_prim(:,:,3)=ss3;
ss_arrays_prim(:,:,4)=ss4;
ss_arrays_prim(:,:,5)=ss5;
ss_arrays_prim(:,:,6)=ss6;
ss_arrays_prim(:,:,7)=ss7;
ss_arrays_prim(:,:,8)=ss8;
ss_arrays_prim(:,:,9)=ss9;
ss_arrays_prim(:,:,10)=ss10;
ss_arrays_prim(:,:,11)=ss11;
ss_arrays_prim(:,:,12)=ss12;

for i=1:12
   y_prim(:,i)=lsim(ss_arrays_prim(:,:,i),inputs(2,:)',time_sec'); 
end


% for i=1:12
% x_ini_prim=ss_arrays_prim(:,:,i).x0;
% x_prim(:,i)=x_ini_prim;
% end
% 
% for i=1:length(time_sec)
%     for j=1:12
% y_prim(i,j)=ss_arrays_prim(:,:,j).C*x_prim(:,j);
% x_prim(:,j)=ss_arrays_prim(:,:,j).A*x_prim(:,j)+ss_arrays_prim(:,:,j).B*inputs(2,i);
%     end
% end

%% Calculate for the vert
filename = 'ss_mirn_vert.mat'; 
load(filename);

ss_arrays_vert(:,:,1)=ss1;
ss_arrays_vert(:,:,2)=ss2;
ss_arrays_vert(:,:,3)=ss3;
ss_arrays_vert(:,:,4)=ss4;
ss_arrays_vert(:,:,5)=ss5;
ss_arrays_vert(:,:,6)=ss6;
ss_arrays_vert(:,:,7)=ss7;
ss_arrays_vert(:,:,8)=ss8;
ss_arrays_vert(:,:,9)=ss9;
ss_arrays_vert(:,:,10)=ss10;
ss_arrays_vert(:,:,11)=ss11;
ss_arrays_vert(:,:,12)=ss12;

for i=1:12
   y_vert(:,i)=lsim(ss_arrays_vert(:,:,i),inputs(1,:)',time_sec'); 
end

% for i=1:12
% x_ini_vert=ss_arrays_vert(:,:,i).x0;
% x_vert(:,i)=x_ini_vert;
% end
% 
% for i=1:length(time_sec)
%     for j=1:12
% y_vert(i,j)=ss_arrays_vert(:,:,j).C*x_vert(:,j);
% x_vert(:,j)=ss_arrays_vert(:,:,j).A*x_vert(:,j)+ss_arrays_vert(:,:,j).B*inputs(1,i);
%     end
% end


%%  Calculate for the horiz
filename = 'ss_mirn_hor.mat'; 
load(filename);

ss_arrays_hor(:,:,1)=ss1;
ss_arrays_hor(:,:,2)=ss2;,
ss_arrays_hor(:,:,3)=ss3;
ss_arrays_hor(:,:,4)=ss4;
ss_arrays_hor(:,:,5)=ss5;
ss_arrays_hor(:,:,6)=ss6;
ss_arrays_hor(:,:,7)=ss7;
ss_arrays_hor(:,:,8)=ss8;
ss_arrays_hor(:,:,9)=ss9;
ss_arrays_hor(:,:,10)=ss10;
ss_arrays_hor(:,:,11)=ss11;
ss_arrays_hor(:,:,12)=ss12;

for i=1:12
   y_hor(:,i)=lsim(ss_arrays_hor(:,:,i),inputs(3,:)',time_sec'); 
end

% for i=1:12
% x_ini_hor=ss_arrays_hor(:,:,i).x0;
% x_hor(:,i)=x_ini_hor;
% end
% 
% for i=1:length(time_sec)
%     for j=1:12
% y_hor(i,j)=ss_arrays_hor(:,:,j).C*x_hor(:,j);
% x_hor(:,j)=ss_arrays_hor(:,:,j).A*x_hor(:,j)+ss_arrays_hor(:,:,j).B*inputs(3,i);
%     end
% end

return
