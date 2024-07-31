addpath(genpath('Functions/'))
addpath('Classes')
addpath(genpath('Raw Data/'))
addpath(genpath('Data/'))
addpath(genpath('Results'))
load('colorfinal.mat')
colormap(Agua)
format long

%% Final Test

t11 = readtable("18.3 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("18.3 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("18.3 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("18.4 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("18.4 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("18.4 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("18.7 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("18.7 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("18.7 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t34 = readtable("18.7 4.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t35 = readtable("18.7 5.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t36 = readtable("18.7 6.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("19.0 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("19.0 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("19.0 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("19.3 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("19.3 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("19.3 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("19.6 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("19.6 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t63 = readtable("19.6 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t64 = readtable("19.6 4.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t71 = readtable("19.9 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t72 = readtable("19.9 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t73 = readtable("19.9 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t81 = readtable("20.2 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t82 = readtable("20.2 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t83 = readtable("20.2 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t91 = readtable("20.4 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t92 = readtable("20.4 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t93 = readtable("20.4 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33, t34, t35, t36);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);
[h6, s6, p6, ss6] = one(t61, t62, t63);
[h7, s7, p7, ss7] = one(t71, t72, t73);
[h8, s8, p8, ss8] = one(t81, t82, t83);
[h9, s9, p9, ss9] = one(t91, t92, t93);

h = [h1 h2 h3 h4 h5 h6 h7 h8 h9];
sh = [s1 s2 s3 s4 s5 s6 s7 s8 s9];
p = [p1 p2 p3 p4 p5 p6 p7 p8 p9];
sp = [ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8 ss9];

l = [18.3 18.4 18.7 19.0 19.3 19.6 19.9 20.2 20.4];

% errorbar(l, p, sp, 'k', 'linewidth', 1);

% Plot Test
time = table2array(t83(:,1));
head = table2array(t83(:,2));

plot(time, head)

%{

t11 = readtable("A 12.3 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("A 12.3 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("A 12.3 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("A 12.0 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("A 12.0 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("A 12.0 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("A 11.7 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("A 11.7 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("A 11.7 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("A 11.4 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("A 11.4 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("A 11.4 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("A 11.1 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("A 11.1 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("A 11.1 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("A 10.8 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("A 10.8 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t63 = readtable("A 10.8 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t71 = readtable("A 10.5 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = [12.3, 12.0, 11.7, 11.4, 11.1, 10.8, 10.5];

[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);
[h6, s6, p6, ss6] = one(t61, t62, t63);
[h7, s7, p7, ss7] = one(t71);

h = [h1 h2 h3 h4 h5 h6 h7];
sh = [s1 s2 s3 s4 s5 s6 s7];
p = [p1 p2 p3 p4 p5 p6 p7];
sp = [ss1 ss2 ss3 ss4 ss5 ss6 ss7];

errorbar(l, h, sh);

%}

%{

!! Working Length Test v2

t1 = readtable("20.4.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t2 = readtable("20.1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t3 = readtable("19.8.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t4 = readtable("19.5.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t5 = readtable("19.2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t6 = readtable("18.9.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t7 = readtable("18.6.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t8 = readtable("18.3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t9 = readtable("18.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t10 = readtable("17.7.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t11 = readtable("17.4.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = [20.4, 20.1, 19.8, 19.5, 19.2, 18.9, 18.6, 18.3, 18, 17.7, 17.4];

[h1, s1, p1, ss1] = one(t1);
[h2, s2, p2, ss2] = one(t2);
[h3, s3, p3, ss3] = one(t3);
[h4, s4, p4, ss4] = one(t4);
[h5, s5, p5, ss5] = one(t5);
[h6, s6, p6, ss6] = one(t6);
[h7, s7, p7, ss7] = one(t7);
[h8, s8, p8, ss8] = one(t8);
[h9, s9, p9, ss9] = one(t9);
[h10, s10, p10, ss10] = one(t10);
[h11, s11, p11, ss11] = one(t11);

h = [h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11];
sh = [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11];
p = [p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11];
sp = [ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8 ss9 ss10 ss11];

errorbar(l, h, sh);

%}

%% Athavan Test

%{

a1 = readtable("L -2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
a2 = readtable("L -2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
a3 = readtable("L -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
a4 = readtable("L -2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

[h1, s1, p1, ss1] = one(a1);
[h2, s2, p2, ss2] = one(a2);
[h3, s3, p3, ss3] = one(a3);
[h4, s4, p4, ss4] = one(a4);

h = [h1 h2 h3 h4];
sh = [s1 s2 s3 s4];
p = [p1 p2 p3 p4];
sp = [ss1 ss2 ss3 ss4];

l = [1, 2, 3, 4];

errorbar(l, h, sh);
errorbar(l, p, sp);

%}


%{

%% Graph All of Experiment 1

t0402A_l = table2array(t0402A(:,1));
t0402A_h = table2array(t0402A(:,2));
t0402A_p = table2array(t0402A(:,4));

t0403A_l = table2array(t0403A(:,1));
t0403A_h = table2array(t0403A(:,2));
t0403A_p = table2array(t0403A(:,4));

t0404A_l = table2array(t0404A(:,1));
t0404A_h = table2array(t0404A(:,2));
t0404A_p = table2array(t0404A(:,4));

t0502A_l = table2array(t0502A(:,1));
t0502A_h = table2array(t0502A(:,2));
t0502A_p = table2array(t0502A(:,4));

t0503A_l = table2array(t0503A(:,1));
t0503A_h = table2array(t0503A(:,2));
t0503A_p = table2array(t0503A(:,4));

t0504A_l = table2array(t0504A(:,1));
t0504A_h = table2array(t0504A(:,2));
t0504A_p = table2array(t0504A(:,4));

t06302A_l = table2array(t06302A(:,1));
t06302A_h = table2array(t06302A(:,2));
t06302A_p = table2array(t06302A(:,4));

t06303A_l = table2array(t06303A(:,1));
t06303A_h = table2array(t06303A(:,2));
t06303A_p = table2array(t06303A(:,4));

t06304A_l = table2array(t06304A(:,1));
t06304A_h = table2array(t06304A(:,2));
t06304A_p = table2array(t06304A(:,4));

t04202SS_l = t04202SS(:,1);
t04202SS_h = t04202SS(:,2);
t04202SS_p = t04202SS(:,4);

t04203SS_l = t04203SS(:,1);
t04203SS_h = t04203SS(:,2);
t04203SS_p = t04203SS(:,4);

t04204SS_l = t04204SS(:,1);
t04204SS_h = t04204SS(:,2);
t04204SS_p = t04204SS(:,4);

t04802SS_l = t04802SS(:,1);
t04802SS_h = t04802SS(:,2);
t04802SS_p = t04802SS(:,4);

t04803SS_l = table2array(t04803SS(:,1));
t04803SS_h = table2array(t04803SS(:,2));
t04803SS_p = table2array(t04803SS(:,4));

t04804SS_l = table2array(t04804SS(:,1));
t04804SS_h = table2array(t04804SS(:,2));
t04804SS_p = table2array(t04804SS(:,4));


hold on

%plot(t0402A_l, t0402A_h, 'r', 'linewidth', 2)
%plot(t0403A_l, t0403A_h, 'b', 'linewidth', 2)
%plot(t0404A_l, t0404A_h, 'g', 'linewidth', 2)

%plot(t0502A_l, t0502A_h, 'r', 'linewidth', 2)
%plot(t0503A_l, t0503A_h, 'b', 'linewidth', 2)
%plot(t0504A_l, t0504A_h, 'g', 'linewidth', 2)

%plot(t06302A_l, t06302A_h, 'r', 'linewidth', 2)
%plot(t06303A_l, t06303A_h, 'b', 'linewidth', 2)
%plot(t06304A_l, t06304A_h, 'g', 'linewidth', 2)

%plot(t04202SS_l, t04202SS_h, 'r', 'linewidth', 2)
%plot(t04203SS_l, t04203SS_h, 'b', 'linewidth', 2)
%plot(t04204SS_l, t04204SS_h, 'g', 'linewidth', 2)

plot(t04802SS_l, t04802SS_h, 'r', 'linewidth', 2)
plot(t04803SS_l, t04803SS_h, 'b', 'linewidth', 2)
plot(t04804SS_l, t04804SS_h, 'g', 'linewidth', 2)



legend("2 cm", "3 cm", "4 cm")
xlabel("Deviation from Working Length (cm)")
ylabel("Head (cm)")

hold off

%}



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Experiment 1 for 4 cm wide, 0.063 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 4 cm wide, 0.063 inch thick A

t11 = readtable("L -2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("L -2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("L -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("L -2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("L -1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("L -1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("L -1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("L -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("L -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("L -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("L -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("L -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("L -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("L 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("L 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t63 = readtable("L 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t71 = readtable("L 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t72 = readtable("L 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t73 = readtable("L 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t81 = readtable("L 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);
[h6, s6, p6, ss6] = one(t61, t62, t63);
[h7, s7, p7, ss7] = one(t71, t72, t73);
[h8, s8, p8, ss8] = one(t81);

h = [h1 h2 h3 h4 h5 h6 h7 h8];
sh = [s1 s2 s3 s4 s5 s6 s7 s8];
p = [p1 p2 p3 p4 p5 p6 p7 p8];
sp = [ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8];

% Plot
l = [-2.5 -2 -1.5 -1 -0.5 0 0.5 1];

% Change variable name in 3 places!
t06304A = table(l', h', sh', p', sp');
save('Results/Tables/t06304A.mat','t06304A')

fl = -2.5;
wl = -2;
wr = 0.5;
fr = 1;

%{

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
% createtextbox('h', 63, 4, 'a');
hold off

% fname = 'Results/Unsorted Figures';
% saveas(gca, fullfile(fname, "t06304A_H"), 'png');

%}

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
% createtextbox('p', 63, 4, 'a');
hold off

% fname = 'Results/Unsorted Figures';
% saveas(gca, fullfile(fname, "t06304A_P"), 'png');


%}

!: Experiment 1 for 3 cm wide, 0.063 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 3 cm wide, 0.063 inch thick A

t11 = readtable("K -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("K -1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("K -1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("K -1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("K -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("K -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("K -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("K -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("K -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("K -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("K 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("K 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("K 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("K 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("K 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t72 = readtable("K 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t53);
[h6, s6, p6, ss6] = one(t61, t62);
[h7, s7, p7, ss7] = one(t72);


h = [h1 h2 h3 h4 h5 h6 h7];
sh = [s1 s2 s3 s4 s5 s6 s7];
p = [p1 p2 p3 p4 p5 p6 p7];
sp = [ss1 ss2 ss3 ss4 ss5 ss6 ss7];

% Plot
l = [-2 -1.5 -1 -0.5 0 0.5 1];

% Change variable name in 3 places!
t06303A = table(l', h', sh', p', sp');
save('Results/Tables/t06303A.mat','t06303A')

fl = -2.25;
wl = -2;
wr = 0;
fr = 0.75;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 63, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t06303A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 63, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t06303A_P"), 'png');

clf

%}

!: Experiment 1 for 2 cm wide, 0.063 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 2 cm wide, 0.063 inch thick SS

t11 = readtable("J -2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("J -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("J -2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("J -1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("J -1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("J -1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("J -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("J -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("J -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("J -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("J -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("J -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("J 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("J 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("J 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("J 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t53);
[h6, s6, p6, ss6] = one(t61, t62);

h = [h1 h2 h3 h4 h5 h6];
sh = [s1 s2 s3 s4 s5 s6];
p = [p1 p2 p3 p4 p5 p6];
sp = [ss1 ss2 ss3 ss4 ss5 ss6];

% Plot
l = [-2 -1.5 -1 -0.5 0.5 1];

% Change variable name in 3 places!
t06302A = table(l', h', sh', p', sp');
save('Results/Tables/t06302A.mat','t06302A')

fl = -2.25;
wl = -2;
wr = 0;
fr = 0.75;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 63, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t06302A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 63, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t06302A_P"), 'png');

clf

%}

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Experiment 1 for 4 cm wide, 0.05 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 4 cm wide, 0.05 inch thick A

t11 = readtable("I -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("I -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("I -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("I -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("I -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("I -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("I 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("I 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("I 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("I 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("I 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("I 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("I 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("I 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("I 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("I 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52);
[h6, s6, p6, ss6] = one(t61, t62);

h = [h1 h2 h3 h4 h5 h6];
sh = [s1 s2 s3 s4 s5 s6];
p = [p1 p2 p3 p4 p5 p6];
sp = [ss1 ss2 ss3 ss4 ss5 ss6];

% Plot
l = [-1 -0.5 0 0.5 1 1.5];

% Change variable name in 3 places!
t0504A = table(l', h', sh', p', sp');
save('Results/Tables/t0504A.mat','t0504A')

fl = -1.25;
wl = -1;
wr = 0.5;
fr = 1.25;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 50, 4, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0504A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 50, 4, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0504A_P"), 'png');

clf

%}

!: Experiment 1 for 3 cm wide, 0.05 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 3 cm wide, 0.05 inch thick A

t11 = readtable("H -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("H -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("H -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("H -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("H -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("H 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("H 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("H 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("H 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("H 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("H 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("H 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("H 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("H 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("H 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52);
[h6, s6, p6, ss6] = one(t61);

h = [h1 h2 h3 h4 h5 h6];
sh = [s1 s2 s3 s4 s5 s6];
p = [p1 p2 p3 p4 p5 p6];
sp = [ss1 ss2 ss3 ss4 ss5 ss6];

% Plot
l = [-1 -0.5 0 0.5 1 1.5];

% Change variable name in 3 places!
t0503A = table(l', h', sh', p', sp');
save('Results/Tables/t0503A.mat','t0503A')

fl = -1;
wl = -0.5;
wr = 1;
fr = 1.5;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 50, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0503A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 50, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0503A_P"), 'png');

clf

%}

!: Experiment 1 for 2 cm wide, 0.05 inch thick A 

%{

% DATA ANALYSIS EXPERIMENT 1 for 2 cm wide, 0.05 inch thick A

t11 = readtable("G -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("G -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("G -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("G -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("G -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("G -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("G 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("G 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("G 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("G 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("G 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("G 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("G 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("G 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52);

h = [h1 h2 h3 h4 h5];
sh = [s1 s2 s3 s4 s5];
p = [p1 p2 p3 p4 p5];
sp = [ss1 ss2 ss3 ss4 ss5];

% Plot
l = [-1 -0.5 0 0.5 1];

% Change variable name in 3 places!
t0502A = table(l', h', sh', p', sp');
save('Results/Tables/t0502A.mat','t0502A')

fl = -1.25;
wl = -1;
wr = 0.5;
fr = 1;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 50, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0502A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 50, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0502A_P"), 'png');

clf

%}

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Experiment 1 for 4 cm wide, 0.04 inch thick A 

%{

t01 = readtable("F 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t02 = readtable("F 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t03 = readtable("F 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("F 1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("F 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("F 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("F 2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("F 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("F 2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h0, s0, p0, ss0] = one(t01, t02, t03);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22);
[h3, s3, p3, ss3] = one(t31);

h = [h0 h1 h2 h3];
sh = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];
sp = [ss0 ss1 ss2 ss3];

l = [1 1.5 2 2.5];

t0404A = table(l', h', sh', p', sp');
save('Results/Tables/t0404A.mat','t0404A')

% Working Length Ranges for Working Ranges
fl = 0.5;
wl = 1;
wr = 1.5;
fr = 2.25;

% Fully Automated Plot Downloader

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 40, 4, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0404A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 40, 4, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0404A_P"), 'png');

clf


%}

!: Experiment 1 for 3 cm wide, 0.04 inch thick A 

%{

t01 = readtable("E 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t02 = readtable("E 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t03 = readtable("E 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("E 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("E 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("E 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("E 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("E 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("E 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("E 1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("E 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("E 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("E 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h0, s0, p0, ss0] = one(t01, t02, t03);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41);

h = [h0 h1 h2 h3 h4];
sh = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];
sp = [ss0 ss1 ss2 ss3 ss4];

l = [0 0.5 1 1.5 2];

t0403A = table(l', h', sh', p', sp');
save('Results/Tables/t0403A.mat','t0403A')

% Plot
fl = -0.25;
wl = 0;
wr = 1.5;
fr = 2;

% Fully Automated Plot Downloader

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 40, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0403A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 40, 3, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0403A_P"), 'png');

clf


%}

!: Experiment 1 for 2 cm wide, 0.04 inch thick A

%{

% DATA ANALYSIS EXPERIMENT 1 for 2 cm wide, 0.04 inch thick A 

t01 = readtable("D -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t02 = readtable("D -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t03 = readtable("D -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("D 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("D 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("D 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("D 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("D 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("D 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("D 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("D 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("D 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("D 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h0, s0, p0, ss0] = one(t01, t02, t03);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41);

h = [h0 h1 h2 h3 h4];
sh = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];
sp = [ss0 ss1 ss2 ss3 ss4];

l = [-0.5 0 0.5 1 1.5];

t0402A = table(l', h', sh', p', sp');
save('Results/Tables/t0402A.mat','t0402A')

% Plot
fl = -1;
wl = -0.5;
wr = 1;
fr = 1.5;

% Fully Automated Plot Downloader

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 40, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0402A_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 40, 2, 'a');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t0402A_P"), 'png');

clf

%}

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Experiment 1 for 4 cm wide, 0.048 inch thick SS

%{

% DATA ANALYSIS EXPERIMENT 1 for 4 cm wide, 0.048 inch thick SS 

t01 = readtable("C 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t02 = readtable("C 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("C 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("C 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("C 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("C 1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("C 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("C 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("C 2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("C 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("C 2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("C 2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("C 2.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("C 3 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("C 3 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h0, s0, p0, ss0] = one(t01, t02);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42);
[h5, s5, p5, ss5] = one(t51, t52);

h = [h0 h1 h2 h3 h4 h5];
sh = [s0 s1 s2 s3 s4 s5];
p = [p0 p1 p2 p3 p4 p5];
sp = [ss0 ss1 ss2 ss3 ss4 ss5];

l = [0.5 1 1.5 2 2.5 3];

t04804SS = table(l', h', sh', p', sp');
save('Results/Tables/t04804SS.mat','t04804SS')

% Plot
fl = 0.5;
wl = 1;
wr = 2;
fr = 2.75;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 48, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04804SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 48, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04804SS_P"), 'png');

clf


%}

!: Experiment 1 for 3 cm wide, 0.048 inch thick SS

%{

% DATA ANALYSIS EXPERIMENT 1 for 3 cm wide, 0.048 inch thick SS

t0 = readtable("B 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("B 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("B 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("B 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("B 1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("B 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("B 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("B 2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("B 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("B 2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("B 2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("B 2.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("B 2.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("B 3 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("B 3 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("B 3 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

% Process Raw Data
[h0, s0, p0, ss0] = one(t0);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);

h = [h0 h1 h2 h3 h4 h5];
sh = [s0 s1 s2 s3 s4 s5];
p = [p0 p1 p2 p3 p4 p5];
sp = [ss0 ss1 ss2 ss3 ss4 ss5];

% Plot
l = [0.5 1 1.5 2 2.5 3];

% Change variable name in 3 places!
t04803SS = table(l', h', sh', p', sp');
save('Results/Tables/t04803SS.mat','t04803SS')

fl = 0.5;
wl = 1;
wr = 3;
fr = 100;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 48, 3, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04803SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 48, 3, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04803SS_P"), 'png');

clf

%}

!: Experiment 1 for 2 cm wide, 0.048 inch thick SS

%{

% DATA ANALYSIS EXPERIMENT 1 for 2 cm wide, 0.048 inch thick SS

t01 = readtable("A -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("A -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("A -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("A -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("A 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("A 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("A 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("A 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("A 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("A 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("A 1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("A 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("A 1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("A 1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("A 1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("A 1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t61 = readtable("A 2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t62 = readtable("A 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t63 = readtable("A 2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t71 = readtable("A 2.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t72 = readtable("A 2.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t73 = readtable("A 2.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t81 = readtable("A 3 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

[h0, s0, p0, ss0] = one(t01);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);
[h6, s6, p6, ss6] = one(t61, t62, t63);
[h7, s7, p7, ss7] = one(t71, t72, t73);
[h8, s8, p8, ss8] = one(t81);

l = [-1, -0.5, 0, 0.5, 1, 1.5, 2, 2.5, 3];

h = [h0 h1 h2 h3 h4 h5 h6 h7 h8];
sh = [s0 s1 s2 s3 s4 s5 s6 s7 s8];
p = [p0 p1 p2 p3 p4 p5 p6 p7 p8];
sp = [ss0 ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8];

t04802SS = [l', h', sh', p', sp'];
save('Results/Tables/t04802SS.mat','t04802SS')

wl = -0.5;
fl = -1;
wr = 2.5;
fr = 3;


hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 48, 2, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04802SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 48, 2, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04802SS_P"), 'png');

clf

%}

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Experiment 1 for 6 cm wide, 0.042 inch thick SS

%{ 

t11 = readtable("$ -2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("$ -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("$ -2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("$ -1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("$ -1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("$ -1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = [2.5 3];

[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);


h = [h1 h2];
sh = [s1 s2];
p = [p1 p2];
sp = [ss1 ss2];

t04206SS = [l', h', sh', p', sp'];
save('Results/Tables/t04206SS.mat','t04206SS')

wl = 2.5;
fl = 2.25;
wr = 3;
fr = 100;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 42, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04206SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 42, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04206SS_P"), 'png');

clf

%}

!: Experiment 1 for 5 cm wide, 0.042 inch thick SS

%{

%t11 = readtable("# 2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("# 2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("# 2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = 2;

[h, sh, p, sp] = one(t12, t13);

t04205SS = [l, h, sh, p, sp];
save('Results/Tables/t04205SS.mat','t04205SS')

wl = 2;
fl = 1.75;
wr = 2.01;
fr = 2.25;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 42, 5, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04205SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 42, 5, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04205SS_P"), 'png');

clf

%}

!: Experiment 1 for 4 cm wide, 0.042 inch thick SS

%{

t11 = readtable("$ -2 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("$ -2 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("$ -2 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("$ -1.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("$ -1.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("$ -1.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("$ -1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("$ -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("$ -1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("$ -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("$ -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("$ -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("$ 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t52 = readtable("$ 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t53 = readtable("$ 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = [-2 -1.5, -1, -0.5, 0];

[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51, t52, t53);

h = [h1 h2 h3 h4 h5];
sh = [s1 s2 s3 s4 s5];
p = [p1 p2 p3 p4 p5];
sp = [ss1 ss2 ss3 ss4 ss5];

t04204SS = [l', h', sh', p', sp'];
save('Results/Tables/t04204SS.mat','t04204SS')

wl = -2;
fl = -2.25;
wr = 0;
fr = 0.25;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 42, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04204SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 42, 4, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04204SS_P"), 'png');

clf

%}

!: Experiment 1 for 3 cm wide, 0.042 inch thick SS

%{

% DATA ANALYSIS EXPERIMENT 1 for 3 cm wide, 0.042 inch thick SS

t11 = readtable("@ -1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("@ -0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("@ -0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("@ -0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("@ 0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("@ 0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("@ 0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("@ 0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("@ 0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t43 = readtable("@ 0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t51 = readtable("@ 1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

l = [-1 -0.5, 0, 0.5, 1];

[h1, s1, p1, ss1] = one(t11);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42, t43);
[h5, s5, p5, ss5] = one(t51);

h = [h1 h2 h3 h4 h5];
sh = [s1 s2 s3 s4 s5];
p = [p1 p2 p3 p4 p5];
sp = [ss1 ss2 ss3 ss4 ss5];

wl = -0.5;
fl = -1;
wr = 0.5;
fr = 1;

t04203SS = [l', h', sh', p', sp'];
save('Results/Tables/t04203SS.mat','t04203SS')

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 42, 3, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04203SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 42, 3, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04203SS_P"), 'png');

clf


%}

!: Experiment 1 for 2 cm wide, 0.042 inch thick SS

%{

% DATA ANALYSIS EXPERIMENT 1 for 2 cm wide, 0.042 inch thick SS

t01 = readtable("-1 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t11 = readtable("-0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t12 = readtable("-0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t13 = readtable("-0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t21 = readtable("0 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t22 = readtable("0 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t23 = readtable("0 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t31 = readtable("0.5 cm 1.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t32 = readtable("0.5 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t33 = readtable("0.5 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

t41 = readtable("1 cm 2.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t42 = readtable("1 cm 3.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');


l = [-1 -0.5, 0, 0.5, 1];

[h0, s0, p0, ss0] = one(t01);
[h1, s1, p1, ss1] = one(t11, t12, t13);
[h2, s2, p2, ss2] = one(t21, t22, t23);
[h3, s3, p3, ss3] = one(t31, t32, t33);
[h4, s4, p4, ss4] = one(t41, t42);

h = [h0 h1 h2 h3 h4];
sh = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];
sp = [ss0 ss1 ss2 ss3 ss4];

t04202SS = [l', h', sh', p', sp'];
save('Results/Tables/t04202SS.mat','t04202SS')

green = [6/255, 255/255, 0];
yellow = [255/255, 228/255, 0];
red = [255/255, 23/255, 0];

wl = -0.5;
fl = -1;
wr = 0.5;
fr = 1;

hold on
gradientrectangle(h, sh, fl, wl, wr, fr);
errorbar(l, h, sh, 'k', 'linewidth', 1);
createtextbox('h', 42, 2, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04202SS_H"), 'png');

clf

hold on
gradientrectangle(p, sp, fl, wl, wr, fr);
errorbar(l, p, sp, 'k', 'linewidth', 1);
createtextbox('p', 42, 2, 's');
hold off

fname = 'Results/Unsorted Figures';
saveas(gca, fullfile(fname, "t04202SS_P"), 'png');

clf

%}

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!: Monroe Hook Height Data Analysis

%{

% MONROE HOOK HEIGHT

t0 = readtable("0 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t1 = readtable("1 turn.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t2 = readtable("2 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t3 = readtable("3 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t4 = readtable("4 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t5 = readtable("5 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t6 = readtable("6 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t7 = readtable("7 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t8 = readtable("8 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t9 = readtable("9 turns.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

[h0, s0, p0, ss0] = one(t0);
[h1, s1, p1, ss1] = one(t1);
[h2, s2, p2, ss2] = one(t2);
[h3, s3, p3, ss3] = one(t3);
[h4, s4, p4, ss4] = one(t4);
[h5, s5, p5, ss5] = one(t5);
[h6, s6, p6, ss6] = one(t6);
[h7, s7, p7, ss7] = one(t7);
[h8, s8, p8, ss8] = one(t8);
[h9, s9, p9, ss9] = one(t9);

turn = [0 1 2 3 4 5 6 7 8 9];
turns = turns*(2.54/24);

h = [h0 h1 h2 h3 h4 h5 h6 h7 h8 h9];
sh = [s0 s1 s2 s3 s4 s5 s6 s7 s8 s9];
p = [p0 p1 p2 p3 p4 p5 p6 p7 p8 p9];
sp = [ss0 ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8 ss9];


hold on
figure;

subplot(1,2,1)
errorbar(turns, h, sh, 'k', 'linewidth', 1);
subplot(1,2,2)
errorbar(turns, p, sp, 'k', 'linewidth', 1);

hold off

%}

!: Testing

%{

TESTING HF TABLES

t2 =  readtable("TestSS.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');
t =  readtable("TestA.tsv", "FileType","text",'Delimiter', '\t', 'VariableNamingRule', 'preserve');

[Shead, Sflow, Speriod, Sstddev] = hf_processtable(t2, 10, 28, 1.8);
[Ahead, Aflow, Aperiod, Astddev] = hf_processtable(t, 10, 28, 1.8);


hold on
plot(Sflow, Shead);
plot(Aflow, Ahead);
hold off

%}





