delete all 
    fetch 3JPY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+208+308+309+311+312+329+330+331+333+336+337+338+340+341+343+345+346+348+46+56+57+58+60+61+63+72
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 163+165+198+389+390
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5B3J/5B3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit