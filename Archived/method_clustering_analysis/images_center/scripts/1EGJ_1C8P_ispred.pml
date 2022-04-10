delete all 
    fetch 1C8P.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 26+27+28+29+30+31+59+80+82+83+85
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['19+102+33+12+13+83+17+32+30+82+14+15+66+68+16+34+100+18+31+101']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1EGJ/1EGJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit