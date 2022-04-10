delete all 
    fetch 4U0R.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 193+202+205+209+212+213+216+328+331+335+338+339+341+342+344
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 204+444+398+474+468+430+203+200+301+386+369+499+453+423+396+177+181+419+199+170+426+399+366+197+437+184+388+198+447+172+460
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4U0R/4U0R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit