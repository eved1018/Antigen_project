delete all 
    fetch 1EO8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 210
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+15+316+317+14+28+16+17+13+12+10+11+9+34+20+323+21+320+321+22+319+325+324+318+31+25+19+326+327+18+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/1EO8/1EO8_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit