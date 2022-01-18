delete all 
    fetch 5L0Q.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 451+557+589+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 648+649+638+613+617+616+628+629+622+636+621+620+646+650+651+641+642
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 464+458+459+539+463+542+452+453+457+456+454+455
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5L0Q/5L0Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit