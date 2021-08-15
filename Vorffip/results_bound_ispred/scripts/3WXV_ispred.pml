delete all 
    fetch 3WXV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 0+89+90+91+92+93+95+96+99+112+116+117+118+119+120+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 252+122+258+125+112+91+131+324+287+129+130+204+93+90+370+94+95+203+257+321+126+371+237+251+334+207+236+317+266+119+202+372
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3WXV/3WXV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit