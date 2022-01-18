delete all 
    fetch 3PGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 87+90+91+92+93+95+98+110+259+301+302+305+308+309+321+324+325+327+328+329+330+331+332
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 207+206+210+205+354+237+121+120+123+124+326+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 329+328+110+176+175+366+73+98+341+95+4+54+3+92+91+90+1+53+335+331
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit