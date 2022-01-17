delete all 
    fetch 1P53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 336+367+372+373+374+375+377+379+380+389+391+393+394+395+396+399+414+415
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 259+284+285+289+304+305+324+325+326+327+329+330+345+346+347+348+353+354+374+391+407+410+413+414
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 185+186+216+220+266+268+270
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2OZ4/2OZ4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit