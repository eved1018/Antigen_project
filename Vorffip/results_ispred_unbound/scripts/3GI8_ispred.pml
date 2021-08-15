delete all 
    fetch 3GIA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 11+363+424+188+373+421+149+374+223+392+398+396+399+339+12+57+397+372+150+182+395+145+325+262+321+400+423+3+187+403+326+418+226
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3GI8/3GI8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit