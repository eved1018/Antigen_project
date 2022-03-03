delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 347+348+38+344+374+318+345+18+377+371+363+375+367+350+349+370+364
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+406+412+415+399+416+402+403+220+94+427+95+221+223+419+424+96+140+222+226+92+420+409+227+219+225+91+423+224+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 499+501+500+493+497+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/5K9K/5K9K_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit