delete all 
    fetch 1HHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+15+16+20+21+63+71+73+75+77+93+96+97+100+101
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 122+123+121+125+118+119+5+61+34+114+113+70+62+33+117+27+47+48+68+73+120+23+103+116
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FBI/1FBI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit