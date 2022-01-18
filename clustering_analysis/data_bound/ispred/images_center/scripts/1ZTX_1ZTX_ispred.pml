delete all 
    fetch 1ZTX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 302+306+307+308+309+330+332+333+365+366+367+368+389+390+391
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+301+363+372+358+359
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 316+317+348+398+383+354+355+396+356+395+381+346+379+350+378+319+324
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1ZTX/1ZTX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit