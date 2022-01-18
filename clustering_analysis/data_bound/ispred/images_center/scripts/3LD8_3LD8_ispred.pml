delete all 
    fetch 3LD8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+303+317+315+329+328+314+300+304+310+305+313+307+306+299+322+334+321+296+319+325+331+330+318+332+326+333
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 251+245+250+246+247
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3LD8/3LD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit