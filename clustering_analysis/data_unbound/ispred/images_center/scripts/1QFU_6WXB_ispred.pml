delete all 
    fetch 6WXB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 499+449+365+371+435+452+494+441
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 413+406+412+404+410+411+405+398+401+400+399+416+402+403+417+426+427+431+419+391+408+420+421+409+390+384+392+423
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1QFU/1QFU_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit