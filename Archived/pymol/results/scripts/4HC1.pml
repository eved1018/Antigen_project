delete all 
    fetch 4HC1.A


    set cartoon_transparency,0.75


    select ann2, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 208+207+196+82+20+181+209+205+197+191+78+132+61+28+54+22+77+210+21+79+39+198+206+9+33+80+100+168+31
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
    




    fetch 4HBQ.A
    set cartoon_transparency,0.75


    select ann, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 191+210+208+78+209+61+207+60+2+32+193+196+206+197+135+174+142+137+203+200+31+3+79+195+148+181+106+69+48
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
    




    align 4HC1.A, 4HBQ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4HC1_4HBQ.png,width=900, height=900,dpi = 350,ray=1
    quit