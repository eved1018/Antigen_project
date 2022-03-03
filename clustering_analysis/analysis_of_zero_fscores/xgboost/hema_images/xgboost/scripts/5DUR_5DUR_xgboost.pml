delete all 
    fetch 5DUR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 69+113+115+119+72+137+138+145+252+71+68+169+255+258+167+112+110+168+257
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 138+217+206+210+66+220+208+141+140+120+136+137+133+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 262+263+261+103+264+265+77+74+48+80+83+82+84+53
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/5DUR/5DUR_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit