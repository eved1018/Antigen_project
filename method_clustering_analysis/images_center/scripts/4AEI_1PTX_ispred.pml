delete all 
    fetch 1PTX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+15+41+42+56+59+60+61+62+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['12+60+64+63+13+42+15+62+11+59+41+58+61+10+43']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4AEI/4AEI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit