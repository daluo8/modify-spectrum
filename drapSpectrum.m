clc;clear;
m=load('dector2.phsp');
count=1;
for i= 1:6637071
    if(m(i,8)==2212)
        if(m(i,10))
            n(count)=m(i,6);
            count=count+1;
        end
    end
end
x=zeros(100,0);
[f,x]=ksdensity(n);
f=f./max(f);
plot(x,f,'--');
hold on;
xlabel('proton energy(MeV)')
ylabel('proton fluence');
% m=load('specBeforeAir_2.phsp');
% count=1;
% for i= 1:105937
%     if(m(i,8)==2212)
%         n(count)=m(i,6);
%         count=count+1;
%     end
% end
% x=zeros(100,0);
% [f,x]=ksdensity(n);
% f=f./max(f);
% plot(x,f,'-');
% legend('10,000protons','100,000');