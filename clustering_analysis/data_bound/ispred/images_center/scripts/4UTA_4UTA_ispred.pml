delete all 
    fetch 4UTA.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+17+310+311+313+8+397+396+7+346+345+297
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 262+101+103+102+106+107+104+266+215+76+77+74+212+210+211+195+209+222+78+224+109+108
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4UTA/4UTA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit