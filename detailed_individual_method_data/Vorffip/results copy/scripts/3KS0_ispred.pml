delete all 
    fetch 3KS0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 70+69+65+61+66+73+52+44+63+68+64+72+45+7+97+67+60+8+46+9+92+91+74
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3KS0/3KS0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit