delete all 
    fetch 4F15.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 164+163+120+118+114+121+166+115+253+113+112
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 263+49+389+388+48+43+383+45+385+391+390+384+44+46+392+386+393+47
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 139+216+217+71+94+80+68+141+140+93+218
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4F15/4F15_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit