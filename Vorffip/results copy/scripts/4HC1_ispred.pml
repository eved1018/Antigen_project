delete all 
    fetch 4HC1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 45+207+206+208+205+204+209+202+44+48+175+49+43+51+52+203+54+42+174+88+53+50+101+46+41+40+176+60+200
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HC1/4HC1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit