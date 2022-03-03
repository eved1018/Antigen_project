delete all 
    fetch 5DUR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 137+138+145+252+71+68+72+115+119+113+69+112+167+168+110+169+255+258+257
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 265+77+49+48+80+69+51+78+53
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+115+113+139+138+71+66+72+208+142+68+141+140+145+120+137+251+252+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/5DUR/5DUR_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit