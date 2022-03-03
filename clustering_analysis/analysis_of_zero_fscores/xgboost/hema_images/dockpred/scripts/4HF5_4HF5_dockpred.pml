delete all 
    fetch 4HF5.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 144+137+145+133+135+134+143+193+194+153+226+158+190+131+136+156+155+189+140
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+261+117+260+258+112+259+111+177+70+171+173+239+69+84+240
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+16+17+13+12+323+320+321+319+325+324+31+326+18+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/4HF5/4HF5_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit