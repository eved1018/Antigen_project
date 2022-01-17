delete all 
    fetch 5KU9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 174+205+208+308+309+310+311+313+317+318+320+322
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 249+258+234+257+256+255+251+252+247
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 316+317+310+305+313+307+200+203+204+198+208+322+320+309+321+318
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5MES/5MES_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit