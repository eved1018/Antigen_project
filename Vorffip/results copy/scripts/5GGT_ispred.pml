delete all 
    fetch 5GGT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 49+51+52+54+56+66+68+69+115+117+119+120+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 18+20+90+19+69+123+70+122+68+22+83+51+133+72+54+91+129+106+23+58+52+93+24+44
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5GGT/5GGT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit