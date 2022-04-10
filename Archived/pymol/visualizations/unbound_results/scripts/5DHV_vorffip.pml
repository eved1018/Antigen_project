delete all 
    fetch 6BSY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+18+21+22+48+51+55+58+59+62+63
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 62+16+21+13+17+51+63+18+59+9+12+55+14+58+20+25+57+60+24+53+10
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5DHV/5DHV_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit