delete all 
    fetch 4YDJ.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+97+275+280+281+282+283+365+366+367+368+369+371+372+373+384+419+420+421+423+455+469+472+473+474+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 423+369+490+422+327+107+223+370+44+72+45+379+87+220+63+61+419+84+46+421+73+51+222+371+420+69+53+389+112+106+380
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YDJ/4YDJ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit