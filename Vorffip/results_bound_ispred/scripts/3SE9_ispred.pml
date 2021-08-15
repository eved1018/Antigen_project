delete all 
    fetch 3SE9.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+124+275+276+278+279+280+281+282+283+365+366+367+368+371+429+431+455+456+457+458+459+461+462+469+473+476
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 72+459+280+458+278+442+73+301+282+79+75+436+281+202+440+326+444+441+462+300+82+325+200+408+368+80+279+422+461+367+207+60
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3SE9/3SE9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit