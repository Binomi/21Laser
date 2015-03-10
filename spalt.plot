reset
set terminal epslatex color
set output 'spalt.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'spalt_mitte(3x,0-10V).dat' u ($1/400):($2/13) t'Messwerte',\
'spalt_neben_links(3x,0-1V).dat' u ($1/400):($2/13) t'Messwerte',\
'spalt_neben_rechts(3x,0-1V).dat' u ($1/400):($2/13) t'Messwerte'

set output
!epstopdf spalt.eps
!rm spalt.eps


#==============================================================

reset
set terminal epslatex color
set output 'spalt_grob.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'spalt_grob.dat' u ($1/400):2 t'Messwerte'

set output
!epstopdf spalt_grob.eps
!rm spalt_grob.eps
