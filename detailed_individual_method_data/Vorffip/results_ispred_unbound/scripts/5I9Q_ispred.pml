delete all 
    fetch 5FA2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+276+279+280+281+282+364+365+366+367+370+430+455+458+459+460+461+471+472+473+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 205+200+73+440+202+367+201+280+204+436+79+325+68+60+199+437+123+221+425+421+279+432+75+203+423+120+459+366+368+458+365+275
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