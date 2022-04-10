delete all 
    fetch 6GF9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 146+144+63+6+65+149+114+77+152+112+113+69+154+8+111+142+4+68+155+153+76+70+64+150+110+148
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2R56/2R56_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit