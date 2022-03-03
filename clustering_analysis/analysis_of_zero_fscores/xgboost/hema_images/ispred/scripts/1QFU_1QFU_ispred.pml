delete all 
    fetch 1QFU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 316+317+28+315+314+311+313+307+94+42+41+308+292+32+318+27+293+31
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 14+17+12+11+20+323+21+35+23+320+321+324+19+18
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/ispred/Images/1QFU/1QFU_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit