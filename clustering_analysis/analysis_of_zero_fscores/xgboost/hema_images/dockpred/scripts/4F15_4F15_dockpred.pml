delete all 
    fetch 4F15.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 166+115+121+164+163+118+114+120+112+253+113
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+200+160+203+207+206+204+198+211+205+239+208+209+97+243
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 77+49+48+70+43+45+51+391+78+44+46+392+393+47
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/4F15/4F15_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit