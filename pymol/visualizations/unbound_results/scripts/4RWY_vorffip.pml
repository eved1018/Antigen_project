delete all 
    fetch 3TGQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+97+98+102+122+276+278+279+280+281+282+283+366+367+368+371+425+426+427+429+430+431+432+455+456+457+459+472+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 423+434+120+200+440+122+427+72+202+207+327+430+432+326+422+199+492+421+201+198+53+75+442+444+209+61+370+121+473+63+368+463
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4RWY/4RWY_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit