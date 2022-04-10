delete all 
    fetch 2FD6.U


    set cartoon_transparency,0.75


    select ann2, resi 185+186+187+188+189+190+191+192+217+218+220+267+269
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 212+211+32+116+37+33+129+193+142+92+30+80+127+128+71+107+195+109+63+70+73+114+106+78+214+31+164+262+13+65
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 3U74.U
    set cartoon_transparency,0.75


    select ann, resi 185+186+187+188+189+190+191+192+217+218+220+267+269
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 281+280+278+91+73+32+29+279+40+116+129+74+151+212+33+195+276+264+265+37+283+66+19+2+249+31+30+152+262+62+282
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 2FD6.U, 3U74.U





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2FD6_3U74.png,width=900, height=900,dpi = 350,ray=1
    quit