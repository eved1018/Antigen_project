delete all 
    fetch 5F96.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+456+457+458+459+469+472+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 53+491+122+202+434+73+200+423+75+221+45+201+432+220+199+84+76+72+44+427+120+327+428+490+86+492+222+71+246+85+78+223
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F96/5F96_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit