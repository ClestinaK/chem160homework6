R = 0.08314 # L*bar/mole*K
T = 400 # K
P = 200. # bar
c6 = 0.00060696
c5 = 0.0033566
c4 = 0.048757
c3 = 1.0306
c2 = 7.5884
c1 = 33.258
# c6 d^6 - c5 d^5 - c4 d^4 + c3 d^3 - c2 d^2 + c1 d =0
roots = polyroot(c(c1,c2,c3,c4,c5,c6))
cat(roots,"\n") 