delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 371+377+363+375+345+18+364+370+349+350+367+318+374+347+344+348+38
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+489+501+500+375+367+427+423+32+27+497+496+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 103+105+104+110+407+412+404+411+405+401+399+403+220+142+143+221+222+92+420+409+78+219+137
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/5K9K/5K9K_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit