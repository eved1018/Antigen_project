delete all 
    fetch 3L5X.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 84+38+86+85+70+35+72+43+87+36+44+111+88+89+80+107+42+39+11+108+101+81+79
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3L5X/3L5X_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit