delete all 
    fetch 5F9O.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+457+458+459+471+472+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 432+280+75+421+282+431+246+79+436+72+300+278+204+275+53+367+326+425+122+279+368+442+76+63+73+458+205+441+281+491+437+200
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F9O/5F9O_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit