delete all 
    fetch 3WIH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+49+50+51+52+53+54+55+56+68+70+71
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 50+53+68+70+52+51+36+54+71+47+67+48+62+30+63+60+17+45+65+61+49+38
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3WIH/3WIH_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit