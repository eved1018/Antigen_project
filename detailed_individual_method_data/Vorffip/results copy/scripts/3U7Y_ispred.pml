delete all 
    fetch 3U7Y.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+98+99+102+122+123+124+276+278+279+280+281+282+365+366+367+368+371+427+430+431+432+455+456+457+458+460+461+465+466+467+469+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+63+325+73+301+60+367+441+459+81+209+457+280+282+62+368+278+80+207+442+79+72+71+461+82+281+437+460+279+61+221+198
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3U7Y/3U7Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit