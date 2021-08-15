delete all 
    fetch 5F9W.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+102+275+276+277+278+279+280+281+282+365+367+368+370+371+425+426+427+455+456+457+458+459+461+471+472+473+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+280+73+442+441+457+325+408+79+299+281+324+278+80+76+459+202+81+444+282+446+421+77+72+117+75+221+275+277+276+204+409
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F9W/5F9W_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit