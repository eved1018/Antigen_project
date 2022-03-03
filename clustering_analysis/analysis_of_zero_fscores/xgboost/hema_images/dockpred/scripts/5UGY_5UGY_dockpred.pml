delete all 
    fetch 5UGY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 160+158+196+159+135+192+188+190+222+187+194+145+193+155+226+134+136+156+189+153+225+137+95+227+138
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 317+28+315+310+311+12+10+11+9+8+6+7+34+322+21+295+23+320+321+36+22+319+324+318+25+326+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 163+75+160+244+246
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/5UGY/5UGY_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit