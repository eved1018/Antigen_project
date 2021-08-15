delete all 
    fetch 5NXS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 291+296+297+299+300+301+302+349+351+353+357+358+359+360+361
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+58+324+317+319+114+338+93+112+323+116+318+322+65+46+113+111+320+45+329+55+43+327+321+328+326+264+293+89+313+205+157+90
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F3H/5F3H_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit