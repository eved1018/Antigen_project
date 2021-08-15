delete all 
    fetch 3L5W.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 35+85+84+86+80+83+89+81+87+82+79+72+33+44+106+78+70+42+88+107+105+36+101
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3L5W/3L5W_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit