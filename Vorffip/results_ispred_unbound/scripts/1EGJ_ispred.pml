delete all 
    fetch 1C8P.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 26+27+28+29+30+31+59+80+82+83+85
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 86+19+84+83+82+33+49+25+17+16+68+62+69+101+14+48+31+15+71+67+5+46+13+44
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1EGJ/1EGJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit