reset
set terminal epslatex color
set output 'Messung.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'messung.dat' t'Messwerte'

set output
!epstopdf messung.eps
!rm messung.eps