delete all 
    fetch 3S35.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 238+241+243+266+267+270+271+272+275+293+294+295+298+299+326+327+328+329
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 275+277+314+328+270+312+255+327+321+329+276+313+258+315+219+295+261+269+296+271+221+285+318+263
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3S35/3S35_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit