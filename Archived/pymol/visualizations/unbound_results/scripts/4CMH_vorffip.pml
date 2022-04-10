delete all 
    fetch 6EDR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 75+76+79+107+108+110+111+112+113+114+115+116+117+118+119+148+150+194+195+196+198+199+201+233+234
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 163+46+164+45+287+97+44+280+58+47+286+283+279+171+57+100+165+291+162+73+248+276+290+288+95+284+96+277+177+250
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4CMH/4CMH_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit