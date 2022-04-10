delete all 
    fetch 5KU9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 174+205+208+308+309+310+311+313+317+318+320+322
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 321+255+249+252+310+320+257+256+200+305+317+204+322+198+203+318+309+258+316+247+208+307+251+313+234
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5MES/5MES_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit