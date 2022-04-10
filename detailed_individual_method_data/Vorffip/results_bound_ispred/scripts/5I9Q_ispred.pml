delete all 
    fetch 5I9Q.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+197+276+279+280+281+282+364+365+366+367+370+430+455+458+459+460+461+471+472+473+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+122+73+203+367+123+460+280+458+79+68+366+463+200+204+61+202+365+457+199+425+62+421+198+197+120+440+84+354+72+368+87+355
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5I9Q/5I9Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit