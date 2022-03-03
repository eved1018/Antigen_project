delete all 
    fetch 1EO8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 303+301+314+310+311+307+62+94+42+92+294+308+292+293
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 317+14+28+17+20+323+21+320+321+325+324+318+27+31+19+327+18+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/ispred/Images/1EO8/1EO8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit