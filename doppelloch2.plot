reset
set terminal epslatex color
set output 'doppelloch2.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'doppelloch_mittlerer_Abstand.dat' t'Messwerte'

set output
!epstopdf doppelloch2.eps
!rm doppelloch2.eps