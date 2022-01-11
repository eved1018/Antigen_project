delete all 
    fetch 6MEV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['299+333+327+326+219+335+217+341+303+339+338+334+329+221+302+215+332+340+337+330+216+328+336+213+214+218+331']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3LD8/3LD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit