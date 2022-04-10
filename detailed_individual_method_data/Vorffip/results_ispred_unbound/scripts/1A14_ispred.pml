delete all 
    fetch 6HCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 330+331+332+333+342+343+344+345+367+369+370+400+401+402+403+434
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 459+437+400+345+346+344+178+399+348+347+401+206+330+403+331+175+100+174+369+467+465+156+461+433+414+83+370+311+402+434+432+367
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