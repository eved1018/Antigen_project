delete all 
    fetch 2UZI.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+21+25+27+29+31+32+33+34+35+36+37+38+39+40+61+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 36+38+64+37+39+67+41+33+34+63+25+66+70+31+32+40+61+52+56+65+30+73+27+95+35+21
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2UZI/2UZI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit