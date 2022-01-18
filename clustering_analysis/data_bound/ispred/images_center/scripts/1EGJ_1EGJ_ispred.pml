delete all 
    fetch 1EGJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 362+363+364+365+366+367+395+416+418+419+421
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 348+428+380+347
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 338+339+361+362+363+367+366+365+340+427+341+425+419+418+342+424+420+421+423+422
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1EGJ/1EGJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit