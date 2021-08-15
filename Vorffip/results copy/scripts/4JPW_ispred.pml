delete all 
    fetch 4JPW.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 73+458+280+441+442+367+325+368+457+278+61+421+72+301+459+75+209+79+282+279+208+80+460+366+461+281+437+408+275+324+81+444+68
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4JPW/4JPW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit