delete all 
    fetch 5BV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 48+70+68+69+51+329+65+67+49+117+333+64+231+337+46+5+235+232+73+8+47+63+397+339+6+382+379+341+384+378+227+395+52
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5BV7/5BV7_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit