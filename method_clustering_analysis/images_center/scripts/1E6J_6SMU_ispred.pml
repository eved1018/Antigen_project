delete all 
    fetch 6SMU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['202+210+191+187+211+207+204+208+217+206+215+209+198+200+216+201+212+205+213+214+218+203']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1E6J/1E6J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit