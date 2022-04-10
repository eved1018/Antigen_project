delete all 
    fetch 6HCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 330+331+332+333+334+342+343+344+345+367+369+370+371+373+400+401+402+403+434
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 178+100+458+171+150+208+156+212+457+456+455+145+170+213+144+421+439+155+459+147+460+151+175+468+103+101+465+206+396+370+453+311
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