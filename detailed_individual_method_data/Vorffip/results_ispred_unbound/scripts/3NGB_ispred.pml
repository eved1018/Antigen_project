delete all 
    fetch 3TGT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+124+198+276+278+279+280+281+282+365+367+368+371+430+456+457+458+460+461+463+465+467+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 75+61+440+53+275+368+280+282+367+327+437+442+325+441+76+425+221+326+278+71+73+247+79+436+122+369+63+246+204+60+250+300
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