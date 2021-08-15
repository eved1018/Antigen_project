delete all 
    fetch 3GIA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 396+399+123+179+395+400+116+325+375+141+187+176+421+422+142+180+184+374+152+182+112+122+377+418+372+363+326+175+407+336+12+226+402
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3GI8/3GI8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit