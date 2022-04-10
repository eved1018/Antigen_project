delete all 
    fetch 5OMZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+16+17+18+19+20+37+39+40+41+42+43+74+76+77+99+100+101+102+103
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 97+110+74+12+109+67+15+55+63+13+9+5+4+114+111+14+2+65+11+64+28+115+10+113+1
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KVG/5KVG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit