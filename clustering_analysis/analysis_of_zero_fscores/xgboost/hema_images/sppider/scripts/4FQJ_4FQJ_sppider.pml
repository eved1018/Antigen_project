delete all 
    fetch 4FQJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 37+38+39+40+41+52+58+59+60+61+62+85+86+90+282+283+284+285+287
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 103+216+217+58+220+56+209+145+147+146+121+122+269
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 316+314+304+310+311+305+313+306+323+322+295+320+309+321+324+318+33+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/4FQJ/4FQJ_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit