reset
set terminal epslatex color
set output 'loch.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'loch(3x,0-1V).dat' u 1:($2/10) t'Messwerte'

set output
!epstopdf loch.eps
!rm loch.eps