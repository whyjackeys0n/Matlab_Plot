clear 
clc

data = xlsread("PBE_isif0_sort.csv");
La = data(:,2);
Li = data(:,3);
E = data(:,4);
figure(1)
p1 = plot(La(1:34),E(1:34),'o','MarkerSize',20,'MarkerEdgeColor','#0072BD','MarkerFaceColor','#0072BD','LineWidth',1.5);
p1.MarkerEdgeColor = [1 1 1];
hold on
p2 = plot(La(35:50),E(35:50),'s','MarkerSize',20,'MarkerEdgeColor','#D95319','MarkerFaceColor','#D95319','LineWidth',1.5);
p2.MarkerEdgeColor = [1 1 1];
hold on
p3 = plot(La(51:54),E(51:54),'^','MarkerSize',20,'MarkerEdgeColor','#77AC30','MarkerFaceColor','#77AC30','LineWidth',1.5);
p3.MarkerEdgeColor = [1 1 1];
legend('#Li=0','#Li=1','#Li=2');
set(gca,'FontSize',30,'FontName','Arial');

title({'Geometry Optimization: Different La number (ISIF=0)';''})
xlabel('# La') 
ylabel('Energy (eV)') 
set(gcf,'Position',[0 0 1200 900])

data = xlsread("PBE_isif3_sort.csv");
La = data(:,2);
Li = data(:,3);
E = data(:,4);
figure(2)
p4 = plot(La(1:34),E(1:34),'o','MarkerSize',20,'MarkerEdgeColor','#0072BD','MarkerFaceColor','#0072BD','LineWidth',1.5);         
p4.MarkerEdgeColor = [1 1 1];
hold on
p5 = plot(La(35:50),E(35:50),'s','MarkerSize',20,'MarkerEdgeColor','#D95319','MarkerFaceColor','#D95319','LineWidth',1.5);
p5.MarkerEdgeColor = [1 1 1];
hold on
p6 = plot(La(51:54),E(51:54),'^','MarkerSize',20,'MarkerEdgeColor','#77AC30','MarkerFaceColor','#77AC30','LineWidth',1.5);
p6.MarkerEdgeColor = [1 1 1];
legend('#Li=0','#Li=1','#Li=2');
set(gca,'FontSize',30,'FontName','Arial');
title({'Geometry Optimization: Different La number (ISIF=3)';''})
xlabel('# La') 
ylabel('Energy (eV)') 
set(gcf,'Position',[0 0 1200 900])
