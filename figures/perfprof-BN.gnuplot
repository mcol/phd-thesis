set data style steps
set key off
set xr[1:3]
set yr[0:1.02]
set xtics 0.2
set ytics 0.1
set xlabel "{/Symbol t}" font "Helvetica,20"
set terminal postscript eps enhanced color
set output "perfprof-BN.eps"
plot 'perfprof-BN.dat' using 1:3 title "dHO" lt 1 lw 3, 'perfprof-BN.dat' \
     using 1:2 title "HO" lt 3 lw 3
