delete all 
    fetch 3S26.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+14+15+89+90+93+95+106+107+109+126+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 79+72+78+6+80+77+82+81+14+15+84+7+98+71+70+12+8+106+100+13+101+9+67+86+107+10
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3U9P/3U9P_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit