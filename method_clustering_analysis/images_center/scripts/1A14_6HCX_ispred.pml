delete all 
    fetch 6HCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 330+331+332+333+334+342+343+344+345+367+369+370+371+373+400+401+402+403+434
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['399+374+400+299+300+347+458+395+342+460+343+341+298+401+461+367+329+398+346+330+402+397+344+373+396+457+328+403+345+459+331']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1A14/1A14_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit