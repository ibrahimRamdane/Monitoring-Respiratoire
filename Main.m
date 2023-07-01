
%%Données des patients

load Covidien;

ith= input('Quel courbe de patient souhaitez vous visualiser (de 1 à 99) : ');                   
t = tab_patients(ith).t;
P_ao = tab_patients(ith).P_ao;
P_mus = tab_patients(ith).P_mus;
Q = tab_patients(ith).Q;
V = tab_patients(ith).V;
Cycle = tab_patients(ith).Cycle;
Phase = tab_patients(ith).Phase;

y = Q;
n = V;


%Ajout de bruit optionnel
%[y,sigmab2]=adgnoise(y,25)


%% Régression

[z,a,it,ord,s,fct] = backcor1(n,y);






