delete all 
    fetch 5FHX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+69+70+71+73+74+75+77+78+81
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 73+128+66+68+127+72+81+74+88+129+70+77+126+8+124+121+69+61+63+125+42+6+97+71
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5FHX/5FHX_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit