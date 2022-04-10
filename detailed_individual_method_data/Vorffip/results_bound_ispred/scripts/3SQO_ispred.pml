delete all 
    fetch 3SQO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 153+155+194+195+197+237+238+369+374+375+377+378+379+381
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 260+317+318+259+257+291+531+324+292+383+379+208+378+377+290+348+201+545+261+277+262+615+350+202+319+380+308+454+530+532+276+293+613+243+320
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3SQO/3SQO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit