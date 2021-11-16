set terminal epslatex color
set output 'plt/plot.tex'

plot 'plt/plot.dat' using 1:2 with lines dt 1 lw 5 lc rgb "#00549F" title 'Data'
