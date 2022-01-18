delete all 
    fetch 3SQO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 153+155+194+195+197+237+238+369+374+375+377+378+379+381
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+276+317+277+261+260+259+201+348+202+377+208+383+380+379+350+378+243+257+320+308+292+319+324+318+293+291+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 613+615+545+531+530+532+454
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3SQO/3SQO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit