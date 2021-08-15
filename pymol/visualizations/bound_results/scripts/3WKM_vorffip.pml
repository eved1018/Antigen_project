delete all 
    fetch 3WKM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+117+161+162+165+195+198+200+207+215+216+242+246+250+276+277+278+279+280+281+282+283+288+289
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 243+119+289+246+117+279+280+288+116+118+161+291+166+169+207+120+242+277+186+290+122+200+205+278+283+187+165
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3WKM/3WKM_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit