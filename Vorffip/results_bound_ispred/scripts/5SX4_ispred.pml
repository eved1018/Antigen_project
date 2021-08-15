delete all 
    fetch 5SX4.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 348+349+353+384+408+409+417+418+420+438+440+441+443+464+465+466+467+468+469+471
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 465+357+358+361+359+482+502+501+500+483+485+496+362+405+488+356+484+489+487+468+407+463+330+497+459+353+466
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5SX4/5SX4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit