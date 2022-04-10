delete all 
    fetch 4XNY.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+102+105+106+109+276+278+279+280+281+282+283+365+366+367+368+371+426+427+428+429+430+455+456+457+458+459+460+461+463+465+466+469+476
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 280+459+281+458+279+325+300+278+282+457+460+442+221+222+223+444+367+73+220+421+72+283+368+326+275+461+437+122+204+462+446+434
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XNY/4XNY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit