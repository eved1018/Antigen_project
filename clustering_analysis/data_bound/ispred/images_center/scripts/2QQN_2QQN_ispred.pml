delete all 
    fetch 2QQN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 294+295+296+297+298+299+302+318+319+321+323+324
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 299+407+382+322+297+320+319+325+318
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 398+367+400+399+370+402+426+368+369+427+394+425+392+335+332+333
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2QQN/2QQN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit