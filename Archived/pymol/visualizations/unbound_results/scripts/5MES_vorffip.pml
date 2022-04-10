delete all 
    fetch 5KU9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 174+205+208+308+309+310+311+313+317+318+320+322
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 318+321+319+320+231+252+322+317+234+248+223+235+260+215+249+233+305+262+230+309+316+251+208+259+266
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5MES/5MES_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit