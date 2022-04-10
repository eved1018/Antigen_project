delete all 
    fetch 3WIH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+49+50+51+52+53+54+55+56+68+70+71
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 68+51+70+17+50+52+29+30+92+49+16+47+18+93+95+72+53+74+94+36+45+22
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3WIH/3WIH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit