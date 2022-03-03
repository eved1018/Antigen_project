delete all 
    fetch 4FQJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 40+287+285+39+38+284+58+59+37+52+283+41+85+60+86+90+61+282+62
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+162+161+165+164+134+133+132
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 276+302+317+288+311+305+38+313+306+39+58+59+40+323+322+320+321+318+33+278+287+285+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/4FQJ/4FQJ_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit