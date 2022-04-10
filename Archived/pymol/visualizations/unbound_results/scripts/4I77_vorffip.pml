delete all 
    fetch 1IK0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 111+86+78+105+87+109+3+35+79+84+80+2+77+89+11+33+74+62+41+83+85+110+88+104
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