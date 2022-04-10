delete all 
    fetch 5F9W.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+102+275+276+277+278+279+280+281+282+365+367+368+370+371+425+426+427+455+456+457+458+459+461+471+472+473+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 202+423+434+491+45+84+201+75+200+490+432+222+88+122+199+85+73+76+427+221+53+327+120+71+246+72+410+198+408+407+83+87
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F9W/5F9W_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit