delete all 
    fetch 1A14.N
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 328+329+330+331+332+341+342+343+344+366+368+369+370+372+400+401+402+403+432
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 437+206+146+367+155+143+176+150+144+211+369+209+147+366+210+456+154+368+149+400+173+169+107+454+455+457+191+399+466+451+343+152
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1A14/1A14_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit