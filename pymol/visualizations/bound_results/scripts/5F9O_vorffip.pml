delete all 
    fetch 5F9O.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+457+458+459+471+472+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 53+75+202+423+126+434+200+73+76+432+122+201+72+44+221+246+327+394+490+71+407+222+491+125+120+396+408+406+78+84+427+123
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F9O/5F9O_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit