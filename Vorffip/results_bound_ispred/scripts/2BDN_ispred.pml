delete all 
    fetch 2BDN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 28+30+31+32+34+37+38+39+40+41+55+56+61+64+65+68+69
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 49+13+47+15+50+14+9+48+27+26+7+52+8+16+46+18+21+10+44+23+22
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