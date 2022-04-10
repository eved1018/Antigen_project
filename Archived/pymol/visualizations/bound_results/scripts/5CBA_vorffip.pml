delete all 
    fetch 5CBA.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+21+22+24+25+26+27+28+46+48+59+62+63+66
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 27+29+64+28+63+18+62+21+26+67+22+31+30+44+17+25+23+68+59+65
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5CBA/5CBA_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit