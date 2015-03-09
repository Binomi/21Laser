reset
set terminal epslatex color
set output 'doppelloch1.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'doppelloch_kleinster_Abstand_mitte(1x,0-1V).dat' t'Messwerte',\
'doppelloch_kleinster_Abstand_neben_links(3x,0-1V).dat' u 1:($2/10) t'Messwerte',\
'doppelloch_kleinster_Abstand_neben_rechts(3x,0-1V).dat' u 1:($2/10) t'Messwerte'

set output
!epstopdf doppelloch1.eps
!rm doppelloch1.eps