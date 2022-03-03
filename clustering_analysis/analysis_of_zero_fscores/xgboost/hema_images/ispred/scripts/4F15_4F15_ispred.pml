delete all 
    fetch 4F15.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 112+113+114+115+118+120+121+163+164+166+253
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 263+264+139+215+200+216+217+98+166+198+142+94+80+81+141+96+140+45+93+78+219+218+243
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 383+382+385+384+386+387
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/ispred/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit