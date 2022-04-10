delete all 
    fetch 4HC1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 208+207+196+82+20+181+209+205+197+191+78+132+61+28+54+22+77+210+21+79+39+198+206+9+33+80+100+168+31
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HC1/4HC1_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit