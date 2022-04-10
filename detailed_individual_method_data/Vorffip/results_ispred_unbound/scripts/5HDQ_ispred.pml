delete all 
    fetch 4NNO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 251+260+267+268+269+270+271+272+273+274+275+276+277+289
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 175+180+129+241+242+235+179+247+176+246+123+173+172+238+51+77+132+52+239+248+48+74+245+72+269+96+167+130+73+219
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5HDQ/5HDQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit