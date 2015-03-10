reset
set terminal epslatex color
set output 'gitter_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'gitter.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'gitter.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -4.5,2
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -4.5,1

p 'gitter.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf gitter_reg.eps
!rm gitter_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'loch_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'loch.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'loch.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -3,10
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -3,7

p 'loch.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf loch_reg.eps
!rm loch_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'doppelloch1_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'doppelloch1.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'doppelloch1.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -1.5,2
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -1.5,1.4

p 'doppelloch1.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf doppelloch1_reg.eps
!rm doppelloch1_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'doppelloch2_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'doppelloch2.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'doppelloch2.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -2,3
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -2,2.4

p 'doppelloch2.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf doppelloch2_reg.eps
!rm doppelloch2_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'spalt_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'spalt.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'spalt.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -3,10
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -3,7

p 'spalt.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf spalt_reg.eps
!rm spalt_reg.eps

#============================================================================================================
reset
set terminal epslatex color
set output 'steg_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$ [rad]'
set ylabel '$\alpha_i$ [$10^{-3}~$rad]'
set key bottom right


set fit logfile 'steg.log'
set fit errorvariables
a=400*1.225
c=1/(4*1.225)


f(x)=m*x+b
fit f(x) 'steg.csv' u 1:($3/a):(c) via m,b
set label 1 sprintf("$m = (%3.4f \\pm %3.4f)~10^{-3}$",m,m_err) at -3,10
set label 2 sprintf("$b = (%3.4f \\pm %3.4f)~10^{-3}$",b,b_err) at -3,7

p 'steg.csv' u 1:($3/a):(c) w e t'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf steg_reg.eps
!rm steg_reg.eps

#============================================================================================================