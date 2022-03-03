delete all 
    fetch 5DUM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 115+118+164+167+121+116+168+165+163+161+123+162+159+242+124+240+241
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 139+138+65+67+66+54+140+55+145+87+53+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 115+112+113+111+110+49+60+51+50+52+146+254+251+252+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/5DUM/5DUM_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit