delete all 
    fetch 1QFU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+272+48+273+274+59+49+78+63+143+75+62+90+60+94+92+74+79+271
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 62+94+223+222+219+269
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+15+316+317+14+28+315+17+310+311+307+11+40+294+20+323+21+23+320+308+321+32+324+31+19+24
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/1QFU/1QFU_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit