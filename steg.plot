reset
set terminal epslatex color
set output 'steg.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'steg_mitte(3x,0-10V).dat' u ($1/400):($2/10) t'Messwerte',\
'steg_neben_links(3x,0-1V).dat' u ($1/400):($2/10) t'Messwerte',\
'steg_neben_rechts2(3x,0-1V).dat' u ($1/400):($2/10) t'Messwerte'

set output
!epstopdf steg.eps
!rm steg.eps


#==============================================================

reset
set terminal epslatex color
set output 'steg_mitte.tex'
set xlabel 'Position [mm]'
set ylabel 'Spannung [V]'
set key top right

#set xrange[0:70]

p 'steg_mitte(1x,0-10V).dat' u ($1/400):2 t'Messwerte'

set output
!epstopdf steg_mitte.eps
!rm steg_mitte.eps
