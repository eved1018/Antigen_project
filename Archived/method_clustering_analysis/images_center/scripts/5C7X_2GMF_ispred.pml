delete all 
    fetch 2GMF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+12+13+15+16+17+19+20+21+23+24+83+86+87+89+112+114+115+116+117+119+120+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['121+11+120+119+12+13+122+5+6+8+49+9+50+123+16+124+10+4+7']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5C7X/5C7X_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit