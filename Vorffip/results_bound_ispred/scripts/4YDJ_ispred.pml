delete all 
    fetch 4YDJ.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+97+275+280+281+282+283+365+366+367+368+369+371+372+373+384+419+420+421+423+455+469+472+473+474+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+106+73+459+88+72+80+64+107+65+408+370+62+75+407+221+222+211+280+61+97+99+87+90+421+47+299+51+328+327+419
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YDJ/4YDJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit