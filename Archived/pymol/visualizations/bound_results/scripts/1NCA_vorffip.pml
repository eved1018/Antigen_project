delete all 
    fetch 1NCA.N
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 326+327+328+329+343+344+345+347+366+367+368+369+370+372+399+400+401+402+403+431+432
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 456+209+400+146+143+466+206+176+455+210+437+211+99+454+82+457+366+401+144+107+155+81+367+414+399+453+396+169+150+147+83+126
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1NCA/1NCA_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit