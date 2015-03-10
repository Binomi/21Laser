reset
set terminal epslatex color
set output 'gitter_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'gitter.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'gitter.csv' u 1:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -4.5,0.002
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -4.5,0.001

p 'gitter.csv' u 1:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf gitter_reg.eps
!rm gitter_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'loch_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'loch.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'loch.csv' u 4:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -3,0.01
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -3,0.007

p 'loch.csv' u 4:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf loch_reg.eps
!rm loch_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'doppelloch1_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'doppelloch1.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'doppelloch1.csv' u 1:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -1.5,0.002
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -1.5,0.0014

p 'doppelloch1.csv' u 1:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf doppelloch1_reg.eps
!rm doppelloch1_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'doppelloch2_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'doppelloch2.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'doppelloch2.csv' u 1:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -2,0.002
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -2,0.0015

p 'doppelloch2.csv' u 1:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf doppelloch2_reg.eps
!rm doppelloch2_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'spalt_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'spalt.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'spalt.csv' u 1:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -3,0.01
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -3,0.007

p 'spalt.csv' u 1:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf spalt_reg.eps
!rm spalt_reg.eps

#============================================================================================================

reset
set terminal epslatex color
set output 'steg_reg.tex'
set xlabel '$\frac{\varepsilon_i}{\pi}$'
set ylabel '$\alpha_i$'
set key bottom right


set fit logfile 'steg.log'
set fit errorvariables
a=400*1225
b=4*1225

f(x)=m*x+b
fit f(x) 'steg.csv' u 1:($3/a):(b) via m,b
set label 1 sprintf("$m = (%3.0f \\pm %3.0f)~10^{-6} $",(m*10**6),(m_err*10**6)) at -3,0.01
set label 2 sprintf("$b = (%3.0f \\pm %3.0f)~10^{-6} $",(b*10**6),(b_err*10**6)) at -3,0.007

p 'steg.csv' u 1:($3/a-b):(b) w e t 'Extrema', f(x) lt -1 t'$\alpha=m \cdot \frac{\varepsilon}{\pi}+b $'


set output
!epstopdf steg_reg.eps
!rm steg_reg.eps

#============================================================================================================