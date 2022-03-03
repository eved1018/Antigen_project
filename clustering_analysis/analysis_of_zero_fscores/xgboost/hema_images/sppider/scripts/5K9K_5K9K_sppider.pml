delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+463+348+427+431+424+381+347+423+378+335+497+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 163+407+406+412+404+411+405+401+415+400+399+210+416+402+403+205+208+209+221+419+408+420+409
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/5K9K/5K9K_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit