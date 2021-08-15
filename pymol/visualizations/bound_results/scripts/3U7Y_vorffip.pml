delete all 
    fetch 3U7Y.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+98+99+102+122+123+124+276+278+279+280+281+282+365+366+367+368+371+427+430+431+432+455+456+457+458+460+461+465+466+467+469+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 53+423+76+200+434+201+202+491+44+492+75+122+87+221+84+85+222+490+199+73+45+120+121+440+427+437+246+432+79+422+425+371
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3U7Y/3U7Y_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit