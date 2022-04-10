delete all 
    fetch 4YUE.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 55+56+57+59+71+75+76+77+78+79+82+105+117+119+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 106+54+109+52+118+56+75+68+84+97+98+144+34+26+82+79+99+145+40+142+146+122+55
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YUE/4YUE_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit