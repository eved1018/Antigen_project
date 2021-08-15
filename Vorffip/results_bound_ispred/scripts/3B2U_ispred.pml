delete all 
    fetch 3B2U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 348+349+384+408+409+412+417+418+438+440+441+443+464+465+466+467+468+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 359+488+350+323+358+356+450+410+325+449+349+483+485+355+477+320+487+409+361+353+357+502+318+461+411+464+465+459
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3B2U/3B2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit