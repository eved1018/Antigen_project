delete all 
    fetch 3K7B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+117+118+119+154+155+156+157+165+170+171+172+173+174+175
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 116+165+170+164+169
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+129+101+102+106+112+111+105+104+143+182+141+183+184+147+146+130
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4LU5/4LU5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit