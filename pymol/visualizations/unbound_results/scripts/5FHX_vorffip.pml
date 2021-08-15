delete all 
    fetch 2B8U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+69+70+71+73+74+75+77+78+81
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 5+128+124+3+127+88+129+85+81+53+8+91+1+4+9+6+126+121+77+68+12+73+70+97
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