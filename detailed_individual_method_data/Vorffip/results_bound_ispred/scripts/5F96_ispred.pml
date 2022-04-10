delete all 
    fetch 5F96.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+456+457+458+459+469+472+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 73+280+458+281+278+275+282+79+366+441+367+300+442+325+457+279+421+444+299+459+221+368+81+198+124+122+436+82+75+68+72+71
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F96/5F96_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit