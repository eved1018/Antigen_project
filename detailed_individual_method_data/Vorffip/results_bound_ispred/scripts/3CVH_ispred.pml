delete all 
    fetch 3CVH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62+65+68+72+73+76+79+80+146+149+150+154+155+158+159+162+163
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 96+90+14+115+122+110+248+197+76+98+188+196+148+142+192+120+125+173+136+48+27+238+92+251+229+159+73+141+177+21+88
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit