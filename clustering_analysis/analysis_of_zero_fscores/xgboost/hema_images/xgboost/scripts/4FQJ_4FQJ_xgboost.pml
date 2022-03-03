delete all 
    fetch 4FQJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 85+60+86+90+61+282+59+38+284+58+37+39+285+40+287+52+41+283+62
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+103+75+149+58+71+238+73+220+180+141+87+231+230
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 316+288+305+38+306+39+40+34+323+322+37+320+309+321+324+318+33
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4FQJ/4FQJ_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit