delete all 
    fetch 5HYS.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 510+458+459+544+542+450+452+453+457+456+454+455
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 539+499+506+489+488+501+448+540+525+492+486+444+487+491+446+508+497
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5HYS/5HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit