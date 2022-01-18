delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+500+375+376+363+367+371+435+379+423+378+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 106+107+104+110+62+407+406+412+214+216+404+405+403+57+94+143+221+141+222+92+144+408+409+219
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5K9K/5K9K_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit