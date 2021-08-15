delete all 
    fetch 2QQN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 294+295+296+297+298+299+302+318+319+321+323+324
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 426+332+333+400+425+402+335+427+398+274+322+376+334+323+364+399+392+397+370+380+275+424+378+374+377
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2QQN/2QQN_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit