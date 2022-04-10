delete all 
    fetch 6APN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 201+205+208+209+212+215+216+293+294+298+301+306+309+310
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+113+62+143+108+109+26+29+253+248+246+115+250+61+112+105+251+106+60+145+107+58+114+110+249+144+28+59+116+247+146']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3GJF/3GJF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit