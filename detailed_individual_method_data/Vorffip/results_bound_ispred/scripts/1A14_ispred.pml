delete all 
    fetch 1A14.N
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 328+329+330+331+332+341+342+343+344+366+368+369+370+372+400+401+402+403+432
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 345+457+396+400+435+176+343+399+173+465+155+401+368+347+346+344+367+172+463+99+204+309+403+402+357+459+366+144+149+356+437+450
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1A14/1A14_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit