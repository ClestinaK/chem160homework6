Vbar=3.0 # L/mol
T=370 # K
R=0.083145 # bar*L/K*mole
P=R*T/Vbar
cat(P,"\n")

A=16.44 # bar*L^2/mole^2
B=0.07245 # L/mole
P=R*T/(Vbar-B)-A/((Vbar*(Vbar+B)) + (B*(Vbar-B)))
cat(P,"\n")
