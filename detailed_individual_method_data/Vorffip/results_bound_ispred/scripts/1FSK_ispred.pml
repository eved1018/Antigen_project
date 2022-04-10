delete all 
    fetch 1FSK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 42+43+44+45+46+47+48+49+50+51+53+70+72+76+87+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 51+47+46+49+66+48+50+70+108+45+72+109+61+155+110+43+55+62+64+154+59+153+44+73+60+63+65
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FSK/1FSK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit