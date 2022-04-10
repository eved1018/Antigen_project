delete all 
    fetch 2ARJ.Q
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 6+8+9+10+11+12+14+15+20+21+22+23+25+27+29+30+84+114
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 64+112+115+114+109+110+66+105+62+63+78+117+50+111+52+119+59+60+68+108+51+65+76+29
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2ARJ/2ARJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit