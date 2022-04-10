delete all 
    fetch 1P4P.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['272+252+269+278+253+274+273+270+254+282+283+275+280+255+281+277+276+271+279']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1RJL/1RJL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit