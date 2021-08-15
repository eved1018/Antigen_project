delete all 
    fetch 5NIU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 49+51+52+54+56+66+68+69+115+117+119+120+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 141+134+56+115+137+117+142+54+138+113+140+123+135+139+58+125+136+121+61+111+66+122+143+119
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5GGT/5GGT_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit