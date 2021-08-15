delete all 
    fetch 4I77.Z
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+10+106+70+42+41+87+44+8+105+104+84+11+35+86+108+79+9+85+40+78+38+101
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4I77/4I77_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit