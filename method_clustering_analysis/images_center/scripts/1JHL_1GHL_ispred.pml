delete all 
    fetch 1GHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+23+106+112+113+116+117+118+119+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+113+109+120+33+119+112+35+30+106+117+114+110+34+116+27+31+118+115']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1JHL/1JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit