delete all 
    fetch 4LSU.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+122+123+124+257+278+279+280+281+282+365+366+367+368+370+371+425+426+427+430+431+432+455+456+457+458+459+460+461+465+466+467+469+471+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 202+201+434+200+423+122+120+199+75+408+84+44+72+121+427+492+491+53+76+198+432+123+221+407+246+82+45+411+222+406+73+405+440
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LSU/4LSU_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit