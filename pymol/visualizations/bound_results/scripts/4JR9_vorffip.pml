delete all 
    fetch 4JR9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 12+15+16+17+19+24+25+27+28+29+32
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 98+293+94+231+99+36+379+315+454+349+292+187+232+337+380+295+97+103+456+32+257+121+402+336+455+377+348+409+384+303+307+311+125
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4JR9/4JR9_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit