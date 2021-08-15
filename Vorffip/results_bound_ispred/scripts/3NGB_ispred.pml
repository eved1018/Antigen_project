delete all 
    fetch 3NGB.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+124+198+276+278+279+280+281+282+365+367+368+371+430+456+457+458+460+461+463+465+467+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+442+441+325+280+80+79+457+73+81+301+61+198+278+459+407+78+324+199+461+462+460+282+299+208+204+124+425+76+72+444+209+60
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3NGB/3NGB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit