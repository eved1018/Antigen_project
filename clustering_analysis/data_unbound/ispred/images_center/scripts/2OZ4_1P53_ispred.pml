delete all 
    fetch 1P53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 336+367+372+373+374+375+377+379+380+389+391+393+394+395+396+399+414+415
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+329+304+305+413+407+348+374+410+414+354+391+346+353+347+345+325+330+324+285+326+327+284
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 270+259+266+216+220+186+185+268
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2OZ4/2OZ4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit