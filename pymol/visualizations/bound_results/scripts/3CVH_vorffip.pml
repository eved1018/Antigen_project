delete all 
    fetch 3CVH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62+65+68+72+73+76+79+80+146+149+150+154+155+158+159+162+163
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 204+202+234+235+244+8+167+115+10+63+229+96+122+147+70+66+98+27+192+62+120+7+143+121+77+9+12+119+232+159+231
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3CVH/3CVH_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit