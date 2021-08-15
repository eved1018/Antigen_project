delete all 
    fetch 2J88.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 143+148+72+142+144+55+141+73+64+145+140+135+46+89+138+74+71+45+24+159+155+93+139+47+113+301+59+20+56+65+43
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2J88/2J88_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit