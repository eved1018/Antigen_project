delete all 
    fetch 4J6R.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+122+124+198+276+278+279+280+281+282+356+365+366+367+368+370+371+425+426+427+430+457+458+459+460+461+462+463+469+473+474+475
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 280+281+459+458+460+221+278+431+461+282+75+73+440+72+368+436+76+80+79+425+441+222+250+367+434+432+279+423+223+78+77+464+463
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4J6R/4J6R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit