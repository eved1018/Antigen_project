delete all 
    fetch 2D9T.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+21+33+34+35+36+40+42+44+47+48+49+51+52+53
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 67+47+21+77+20+51+75+52+3+74+50+48+1+69+65+28+27+22+55+70+78+2
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PNW/3PNW_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit