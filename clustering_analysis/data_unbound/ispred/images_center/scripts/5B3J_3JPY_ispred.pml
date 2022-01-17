delete all 
    fetch 3JPY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 163+389+165+198+208+390
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+329+338+311+312+348+63+61+60+58+72+57+340+341+56+343+346+46+345+337+336+308+309+331+330+333
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5B3J/5B3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit