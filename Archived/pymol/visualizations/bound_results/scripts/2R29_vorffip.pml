delete all 
    fetch 2R29.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+308+309+310+311+312+325+327+362+364+387+388+389+390
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 345+300+301+347+334+351+350+349+348+299+355+298+338+373+346+370+354+352+372+317+353+343+357
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2R29/2R29_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit