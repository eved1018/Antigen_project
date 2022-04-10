delete all 
    fetch 2XQY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 332+333+334+335+337+350+351+353+354+356+357+358+361+362+365+370+371+372+373
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 140+223+137+181+183+330+146+193+446+194+195+144+331+614+226+228+225+558+329+265+600+617+138+447+141+234+196+616+179+230+139+148+452+222+334
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2XQY/2XQY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit