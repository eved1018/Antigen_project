delete all 
    fetch 3JPY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+62+333+140+327+57+120+326+63+335+61+338+334+60+329+332+58+337+330+59+328+336+142+331']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5B3J/5B3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit