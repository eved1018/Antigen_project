delete all 
    fetch 6D3B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 326+327+328+329+343+344+345+347+366+367+368+369+370+372+399+400+401+402+403+431+432
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 328+329+343+344+345+346+347+366+368+369+396+399+400+401+435+452+456+457+459+463+465+99
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 152+155+172+173+176+204+206+264+265+81
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1NCA/1NCA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit