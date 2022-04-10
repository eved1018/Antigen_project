delete all 
    fetch 5EDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['293+299+11+33+22+12+13+296+24+17+30+298+8+36+40+44+292+15+37+294+9+297+295+289+28+34+18+27+31+10']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit