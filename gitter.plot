reset
set terminal epslatex color
set output 'gitter.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'gitter_mitte(1x,0-10V).dat' t'Messwerte',\
'gitter_neben_links(3x,0-1V).dat' u 1:($2/10) t'Messwerte',\
'gitter_neben_rechts(3x,0-1V).dat' u 1:($2/10) t'Messwerte'

set output
!epstopdf gitter.eps
!rm gitter.eps