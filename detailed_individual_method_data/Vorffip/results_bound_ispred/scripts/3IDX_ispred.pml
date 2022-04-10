delete all 
    fetch 3IDX.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 281+283+365+366+367+368+369+370+371+372+373+384+419+421+425+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+196+457+125+126+198+459+201+127+122+200+280+106+194+197+107+429+103+207+87+435+195+119+368+460+463+128+367+105+369+464+434
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3IDX/3IDX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit