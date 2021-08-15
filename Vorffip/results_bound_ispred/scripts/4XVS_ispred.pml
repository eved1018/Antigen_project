delete all 
    fetch 4XVS.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+275+276+278+279+280+281+282+365+366+367+368+371+430+455+456+457+458+459+460+461+462+470+473+474+475+477
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 425+122+75+368+205+53+223+280+397+204+221+201+119+51+436+459+431+367+63+281+366+60+200+73+434+455+76+325+365+282+371+61+72
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XVS/4XVS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit