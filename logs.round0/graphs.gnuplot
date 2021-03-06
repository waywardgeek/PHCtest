set terminal png enhanced font "arial,18" fontscale 1.0 size 1200, 1000
set pointsize 1.2

# Dir for graphs with data and output
G1='m_cost/'
G2='t_cost/'
G3='i_len/'
G4='o_len/'

# G1, mcost variable

set title "PHC candidates, Real used memory vs memory cost\n{/arial=12[salt = 16, in,out = 32, tcost = MIN]}"
set xlabel "Memory cost"
set ylabel "Used memory (RUSAGE difference) [kB]"
set logscale x
set logscale y
set key outside
set output G1.'mcost_memory.png'
plot [1:1000000][1:1000000]\
	G1."antcrypt.dat"    using 3:6 title "{/arial=12 AntCrypt}"    with points, \
	G1."argon.dat"       using 3:6 title "{/arial=12 Argon}"       with points, \
	G1."battcrypt.dat"   using 3:6 title "{/arial=12 battcrypt}"   with points, \
	G1."catena.dat"      using 3:6 title "{/arial=12 Catena}"      with points, \
	G1."catena2-dbg.dat" using 3:6 title "{/arial=12 Catena2-DBG}" with points, \
	G1."catena2-brg.dat" using 3:6 title "{/arial=12 Catena2-BRG}" with points, \
	G1."centrifuge.dat"  using 3:6 title "{/arial=12 Centrifuge}"  with points, \
	G1."earworm.dat"     using 3:6 title "{/arial=12 EARWORM}"     with points, \
	G1."gambit.dat"      using 3:6 title "{/arial=12 Gambit}"      with points, \
	G1."lanarea.dat"     using 3:6 title "{/arial=12 Lanarea}"     with points, \
	G1."lyra2.dat"       using 3:6 title "{/arial=12 Lyra2}"       with points, \
	G1."omegacrypt.dat"  using 3:6 title "{/arial=12 OmegaCrypt}"  with points, \
	G1."pomelo.dat"      using 3:6 title "{/arial=12 POMELO}"      with points, \
	G1."pufferfish.dat"  using 3:6 title "{/arial=12 Pufferfish}"  with points, \
	G1."rig.dat"         using 3:6 title "{/arial=12 RIG}"         with points, \
	G1."rig2.dat"        using 3:6 title "{/arial=12 RIG2}"        with points, \
	G1."schvrch.dat"     using 3:6 title "{/arial=12 Schvrch}"     with points, \
	G1."tortuga.dat"     using 3:6 title "{/arial=12 Tortuga}"     with points, \
	G1."twocats.dat"     using 3:6 title "{/arial=12 TwoCats}"     with points, \
	G1."yarn.dat"        using 3:6 title "{/arial=12 Yarn}"        with points, \
	G1."yescrypt.dat"    using 3:6 title "{/arial=12 yescrypt}"    with points

set title "PHC candidates, Real run time vs memory cost\n{/arial=12[salt = 16, in,out = 32, tcost = MIN]}"
set xlabel "Memory cost"
set ylabel "Run time [ms]"
set logscale x
set logscale y
set key outside
set output G1.'mcost_time.png'
plot [1:1000000][1:100000]\
	G1."antcrypt.dat"    using 3:5 title "{/arial=12 AntCrypt}"    with points, \
	G1."argon.dat"       using 3:5 title "{/arial=12 Argon}"       with points, \
	G1."battcrypt.dat"   using 3:5 title "{/arial=12 battcrypt}"   with points, \
	G1."catena.dat"      using 3:5 title "{/arial=12 Catena}"      with points, \
	G1."catena2-dbg.dat" using 3:5 title "{/arial=12 Catena2-DBG}" with points, \
	G1."catena2-brg.dat" using 3:5 title "{/arial=12 Catena2-BRG}" with points, \
	G1."centrifuge.dat"  using 3:5 title "{/arial=12 Centrifuge}"  with points, \
	G1."earworm.dat"     using 3:5 title "{/arial=12 EARWORM}"     with points, \
	G1."gambit.dat"      using 3:5 title "{/arial=12 Gambit}"      with points, \
	G1."lanarea.dat"     using 3:5 title "{/arial=12 Lanarea}"     with points, \
	G1."lyra2.dat"       using 3:5 title "{/arial=12 Lyra2}"       with points, \
	G1."omegacrypt.dat"  using 3:5 title "{/arial=12 OmegaCrypt}"  with points, \
	G1."pomelo.dat"      using 3:5 title "{/arial=12 POMELO}"      with points, \
	G1."pufferfish.dat"  using 3:5 title "{/arial=12 Pufferfish}"  with points, \
	G1."rig.dat"         using 3:5 title "{/arial=12 RIG}"         with points, \
	G1."rig2.dat"        using 3:5 title "{/arial=12 RIG2}"        with points, \
	G1."schvrch.dat"     using 3:5 title "{/arial=12 Schvrch}"     with points, \
	G1."tortuga.dat"     using 3:5 title "{/arial=12 Tortuga}"     with points, \
	G1."twocats.dat"     using 3:5 title "{/arial=12 TwoCats}"     with points, \
	G1."yarn.dat"        using 3:5 title "{/arial=12 Yarn}"        with points, \
	G1."yescrypt.dat"    using 3:5 title "{/arial=12 yescrypt}"    with points

# G2 tcost variable

set title "PHC candidates, Real used memory vs time cost\n{/arial=12[salt = 16, in,out = 32, mcost = MIN]}"
set xlabel "Time cost"
set ylabel "Used memory (RUSAGE difference) [kB]"
set logscale x
set logscale y
set key outside
set output G2.'tcost_memory.png'
plot [1:1000000][1:10000]\
	G2."antcrypt.dat"    using 4:6 title "{/arial=12 AntCrypt}"    with points, \
	G2."argon.dat"       using 4:6 title "{/arial=12 Argon}"       with points, \
	G2."battcrypt.dat"   using 4:6 title "{/arial=12 battcrypt}"   with points, \
	G2."catena.dat"      using 4:6 title "{/arial=12 Catena}"      with points, \
	G2."catena2-dbg.dat" using 4:6 title "{/arial=12 Catena2-DBG}" with points, \
	G2."catena2-brg.dat" using 4:6 title "{/arial=12 Catena2-BRG}" with points, \
	G2."centrifuge.dat"  using 4:6 title "{/arial=12 Centrifuge}"  with points, \
	G2."earworm.dat"     using 4:6 title "{/arial=12 EARWORM}"     with points, \
	G2."gambit.dat"      using 4:6 title "{/arial=12 Gambit}"      with points, \
	G2."lanarea.dat"     using 4:6 title "{/arial=12 Lanarea}"     with points, \
	G2."lyra2.dat"       using 4:6 title "{/arial=12 Lyra2}"       with points, \
	G2."makwa.dat"       using 4:6 title "{/arial=12 Makwa}"       with points, \
	G2."omegacrypt.dat"  using 4:6 title "{/arial=12 OmegaCrypt}"  with points, \
	G2."parallel.dat"    using 4:6 title "{/arial=12 Parallel}"    with points, \
	G2."pomelo.dat"      using 4:6 title "{/arial=12 POMELO}"      with points, \
	G2."pufferfish.dat"  using 4:6 title "{/arial=12 Pufferfish}"  with points, \
	G2."rig.dat"         using 4:6 title "{/arial=12 RIG}"         with points, \
	G2."rig2.dat"        using 4:6 title "{/arial=12 RIG2}"        with points, \
	G2."schvrch.dat"     using 4:6 title "{/arial=12 Schvrch}"     with points, \
	G2."tortuga.dat"     using 4:6 title "{/arial=12 Tortuga}"     with points, \
	G2."twocats.dat"     using 4:6 title "{/arial=12 TwoCats}"     with points, \
	G2."yarn.dat"        using 4:6 title "{/arial=12 Yarn}"        with points, \
	G2."yescrypt.dat"    using 4:6 title "{/arial=12 yescrypt}"    with points

set title "PHC candidates, Real run time vs time cost\n{/arial=12[salt = 16, in,out = 32, mcost = MIN]}"
set xlabel "Time cost"
set ylabel "Run time [ms]"
set logscale x
set logscale y
set key outside
set output G2.'tcost_time.png'
plot [1:1000000][1:10000]\
	G2."antcrypt.dat"    using 4:5 title "{/arial=12 AntCrypt}"    with points, \
	G2."argon.dat"       using 4:5 title "{/arial=12 Argon}"       with points, \
	G2."battcrypt.dat"   using 4:5 title "{/arial=12 battcrypt}"   with points, \
	G2."catena.dat"      using 4:5 title "{/arial=12 Catena}"      with points, \
	G2."catena2-dbg.dat" using 4:5 title "{/arial=12 Catena2-DBG}" with points, \
	G2."catena2-brg.dat" using 4:5 title "{/arial=12 Catena2-BRG}" with points, \
	G2."centrifuge.dat"  using 4:5 title "{/arial=12 Centrifuge}"  with points, \
	G2."earworm.dat"     using 4:5 title "{/arial=12 EARWORM}"     with points, \
	G2."gambit.dat"      using 4:5 title "{/arial=12 Gambit}"      with points, \
	G2."lanarea.dat"     using 4:5 title "{/arial=12 Lanarea}"     with points, \
	G2."lyra2.dat"       using 4:5 title "{/arial=12 Lyra2}"       with points, \
	G2."makwa.dat"       using 4:5 title "{/arial=12 Makwa}"       with points, \
	G2."omegacrypt.dat"  using 4:5 title "{/arial=12 OmegaCrypt}"  with points, \
	G2."parallel.dat"    using 4:5 title "{/arial=12 Parallel}"    with points, \
	G2."pomelo.dat"      using 4:5 title "{/arial=12 POMELO}"      with points, \
	G2."pufferfish.dat"  using 4:5 title "{/arial=12 Pufferfish}"  with points, \
	G2."rig.dat"         using 4:5 title "{/arial=12 RIG}"         with points, \
	G2."rig2.dat"        using 4:5 title "{/arial=12 RIG2}"        with points, \
	G2."schvrch.dat"     using 4:5 title "{/arial=12 Schvrch}"     with points, \
	G2."tortuga.dat"     using 4:5 title "{/arial=12 Tortuga}"     with points, \
	G2."twocats.dat"     using 4:5 title "{/arial=12 TwoCats}"     with points, \
	G2."yarn.dat"        using 4:5 title "{/arial=12 Yarn}"        with points, \
	G2."yescrypt.dat"    using 4:5 title "{/arial=12 yescrypt}"    with points

# G3 run time, variable input
set terminal png enhanced font "arial,10" fontscale 1.0 size 1024, 1536

set title ""
set xlabel "Input length [bytes]"
set ylabel "Run time [ms]"
set label font "arial,16"
set nologscale x
set nologscale y
set key off
set output G3.'ilen_time.png'

set multiplot
set size 0.33,0.125
set xtics 50

set xr [1:300]
set yr [30:110]

set origin 0.000,0.875 ; set label 1 'Antcrypt'    at 280,90 right ; plot G3."antcrypt.dat"    using 1:5 with points
set origin 0.330,0.875 ; set label 1 'Argon'       at 280,90 right ; plot G3."argon.dat"       using 1:5 with points
set origin 0.660,0.875 ; set label 1 'Battcrypt'   at 280,90 right ; plot G3."battcrypt.dat"   using 1:5 with points
set origin 0.000,0.750 ; set label 1 'Catena'      at 280,90 right ; plot G3."catena.dat"      using 1:5 with points
set origin 0.330,0.750 ; set label 1 'Catena2 BRG' at 280,90 right ; plot G3."catena2-brg.dat" using 1:5 with points
set origin 0.660,0.750 ; set label 1 'Catena2 DBG' at 280,90 right ; plot G3."catena2-dbg.dat" using 1:5 with points
set origin 0.000,0.625 ; set label 1 'Centrifuge ' at 280,90 right ; plot G3."centrifuge.dat"  using 1:5 with points
set origin 0.330,0.625 ; set label 1 'EARWORM'     at 280,90 right ; plot G3."earworm.dat"     using 1:5 with points
set origin 0.660,0.625 ; set label 1 'Gambit'      at 280,90 right ; plot G3."gambit.dat"      using 1:5 with points
set origin 0.000,0.500 ; set label 1 'Lanarea'     at 280,90 right ; plot G3."lanarea.dat"     using 1:5 with points
set origin 0.330,0.500 ; set label 1 'Lyra2'       at 280,90 right ; plot G3."lyra2.dat"       using 1:5 with points
set origin 0.660,0.500 ; set label 1 'Makwa'       at 280,90 right ; plot G3."makwa.dat"       using 1:5 with points
set origin 0.000,0.375 ; set label 1 'MCS-PHS'     at 280,90 right ; plot G3."mcs_phs.dat"     using 1:5 with points
set origin 0.330,0.375 ; set label 1 'Omegacrypt'  at 280,90 right ; plot G3."omegacrypt.dat"  using 1:5 with points
set origin 0.660,0.375 ; set label 1 'Parallel'    at 280,90 right ; plot G3."parallel.dat"    using 1:5 with points
set origin 0.000,0.250 ; set label 1 'POMELO'      at 280,90 right ; plot G3."pomelo.dat"      using 1:5 with points
set origin 0.330,0.250 ; set label 1 'Pufferfish'  at 280,90 right ; plot G3."pufferfish.dat"  using 1:5 with points
set origin 0.660,0.250 ; set label 1 'RIG'         at 280,90 right ; plot G3."rig.dat"         using 1:5 with points
set origin 0.000,0.125 ; set label 1 'RIG2'        at 280,90 right ; plot G3."rig2.dat"        using 1:5 with points
set origin 0.330,0.125 ; set label 1 'schvrch'     at 280,90 right ; plot G3."schvrch.dat"     using 1:5 with points
set origin 0.660,0.125 ; set label 1 'Tortuga'     at 280,90 right ; plot G3."tortuga.dat"     using 1:5 with points
set origin 0.000,0.000 ; set label 1 'TwoCats'     at 280,90 right ; plot G3."twocats.dat"     using 1:5 with points
set origin 0.330,0.000 ; set label 1 'Yarn'        at 280,90 right ; plot G3."yarn.dat"        using 1:5 with points
set origin 0.660,0.000 ; set label 1 'yescrypt'    at 280,90 right ; plot G3."yescrypt.dat"    using 1:5 with points

unset multiplot

# G4 run time, variable output
set terminal png enhanced font "arial,10" fontscale 1.0 size 1024, 1536

set title ""
set xlabel "Output length [bytes]"
set ylabel "Run time [ms]"
set label font "arial,16"
set nologscale x
set nologscale y
set key off
set output G4.'olen_time.png'

set multiplot
set size 0.33,0.125
set xtics 50

set xr [1:300]
set yr [30:110]

set origin 0.000,0.875 ; set label 1 'Antcrypt'    at 280,90 right ; plot G4."antcrypt.dat"    using 2:5 with points
set origin 0.330,0.875 ; set label 1 'Argon'       at 280,90 right ; plot G4."argon.dat"       using 2:5 with points
set origin 0.660,0.875 ; set label 1 'Battcrypt'   at 280,90 right ; plot G4."battcrypt.dat"   using 2:5 with points
set origin 0.000,0.750 ; set label 1 'Catena'      at 280,90 right ; plot G4."catena.dat"      using 2:5 with points
set origin 0.330,0.750 ; set label 1 'Catena2 BRG' at 280,90 right ; plot G4."catena2-brg.dat" using 2:5 with points
set origin 0.660,0.750 ; set label 1 'Catena2 DBG' at 280,90 right ; plot G4."catena2-dbg.dat" using 2:5 with points
set origin 0.000,0.625 ; set label 1 'Centrifuge ' at 280,90 right ; plot G4."centrifuge.dat"  using 2:5 with points
set origin 0.330,0.625 ; set label 1 'EARWORM'     at 280,90 right ; plot G4."earworm.dat"     using 2:5 with points
set origin 0.660,0.625 ; set label 1 'Gambit'      at 280,90 right ; plot G4."gambit.dat"      using 2:5 with points
set origin 0.000,0.500 ; set label 1 'Lanarea'     at 280,90 right ; plot G4."lanarea.dat"     using 2:5 with points
set origin 0.330,0.500 ; set label 1 'Lyra2'       at 280,90 right ; plot G4."lyra2.dat"       using 2:5 with points
set origin 0.660,0.500 ; set label 1 'Makwa'       at 280,90 right ; plot G4."makwa.dat"       using 2:5 with points
set origin 0.000,0.375 ; set label 1 'MCS-PHS'     at 280,90 right ; plot G4."mcs_phs.dat"     using 2:5 with points
set origin 0.330,0.375 ; set label 1 'Omegacrypt'  at 280,90 right ; plot G4."omegacrypt.dat"  using 2:5 with points
set origin 0.660,0.375 ; set label 1 'Parallel'    at 280,90 right ; plot G4."parallel.dat"    using 2:5 with points
set origin 0.000,0.250 ; set label 1 'POMELO'      at 280,90 right ; plot G4."pomelo.dat"      using 2:5 with points
set origin 0.330,0.250 ; set label 1 'Pufferfish'  at 280,90 right ; plot G4."pufferfish.dat"  using 2:5 with points
set origin 0.660,0.250 ; set label 1 'RIG'         at 280,90 right ; plot G4."rig.dat"         using 2:5 with points
set origin 0.000,0.125 ; set label 1 'RIG2'        at 280,90 right ; plot G4."rig2.dat"        using 2:5 with points
set origin 0.330,0.125 ; set label 1 'schvrch'     at 280,90 right ; plot G4."schvrch.dat"     using 2:5 with points
set origin 0.660,0.125 ; set label 1 'Tortuga'     at 280,90 right ; plot G4."tortuga.dat"     using 2:5 with points
set origin 0.000,0.000 ; set label 1 'TwoCats'     at 280,90 right ; plot G4."twocats.dat"     using 2:5 with points
set origin 0.330,0.000 ; set label 1 'Yarn'        at 280,90 right ; plot G4."yarn.dat"        using 2:5 with points
set origin 0.660,0.000 ; set label 1 'yescrypt'    at 280,90 right ; plot G4."yescrypt.dat"    using 2:5 with points

unset multiplot
