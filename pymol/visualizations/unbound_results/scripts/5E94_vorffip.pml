delete all 
    fetch 7LCK.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 205+417+178+291+348+254+420+255+290+80+264+256+252+168+266+260+413+262+170+257+289+336+421+169+347+414+202+259+418+329+332+143+345+263+416
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5E94/5E94_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit