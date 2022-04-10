delete all 
    fetch 2FD6.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 185+186+187+188+189+190+191+192+217+218+220+267+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 212+211+32+116+37+33+129+193+142+92+30+80+127+128+71+107+195+109+63+70+73+114+106+78+214+31+164+262+13+65
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2FD6/2FD6_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit