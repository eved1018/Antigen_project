delete all 
    fetch 3IFD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 28+30+31+32+34+37+38+39+40+41+55+56+61+64+65+68+69
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 49+50+9+13+8+52+44+48+10+7+14+47+11+28+46+18+5+30+54+67+27
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2BDN/2BDN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit