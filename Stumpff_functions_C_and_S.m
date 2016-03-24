%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg


% plot of the Stumpff functions C(z) and S(z)
close all; clear all; clc;
%% INPUTS
z1=linspace(-50,0,1e2);
z2=linspace(0,30,1e2);
z3=linspace(0,500,1e2);
z={[z1],[z2],[z3]};
%% solution
for m=1:length(z)
    for n=1:length(z1)
        if z{m}(n)>0
            s{m}(n)=(sqrt(z{m}(n))-sin(sqrt(z{m}(n))))/(sqrt(z{m}(n)))^3;
            c{m}(n)=(1-cos(sqrt(z{m}(n))))/z{m}(n);
        elseif z{m}(n)<0
            s{m}(n)=(sinh(sqrt(-z{m}(n)))-sqrt(-z{m}(n)))/(sqrt(-z{m}(n)))^3;
            c{m}(n)=(cosh(sqrt(-z{m}(n)))-1)/-z{m}(n);
        elseif z{m}(n)==0
            s{m}(n)=1/6;
            c{m}(n)=1/2;
        end
    end
end
%% plotting
for k=1:length(z)
    figure(k);
    set(gcf,'color','w');
    plot(z{k},c{k},z{k},s{k},'linewidth',2);
    legend('C(z)','S(z)');
    xlabel('z','fontsize',18);
    ylabel('C(z), S(z)','fontsize',18);
    grid on;
end



