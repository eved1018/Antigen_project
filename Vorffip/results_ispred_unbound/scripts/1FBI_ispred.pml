delete all 
    fetch 1HHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+15+16+20+21+63+71+73+75+77+93+96+97+100+101
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 125+5+35+34+122+118+33+128+123+14+19+114+119+116+117+121+13+7+126+73+113+6+18+109
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FBI/1FBI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit