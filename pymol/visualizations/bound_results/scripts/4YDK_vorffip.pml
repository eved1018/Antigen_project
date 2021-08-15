delete all 
    fetch 4YDK.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+280+281+282+283+365+366+367+368+369+370+371+425+426+427+428+429+430+431+432+455+456+457+458+459+460+469+471+472+473+474+477
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 491+122+368+423+44+425+369+490+53+222+84+106+45+87+72+434+220+113+221+223+224+432+202+201+473+446+110+76+107+82+119+278
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YDK/4YDK_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit