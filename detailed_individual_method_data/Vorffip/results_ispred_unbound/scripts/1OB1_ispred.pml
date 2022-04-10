delete all 
    fetch 1CEJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+9+10+11+13+14+23+24+25+26+28+38+39
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 88+85+8+72+48+68+6+45+95+73+32+36+69+59+13+15+46+82+37+38+14+64+3
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1OB1/1OB1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit