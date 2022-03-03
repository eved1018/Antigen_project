delete all 
    fetch 1EO8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+273+62+78+74+79+63+92+75+59+82+90+60+271+94
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+15+317+28+16+314+17+311+10+313+42+20+21+320+321+325+324+318+27+31+327+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 106+310+305+299+62+142+94+92+308+309
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/1EO8/1EO8_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit