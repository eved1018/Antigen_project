delete all 
    fetch 5BV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 48+362+378+49+6+51+59+7+5+63+8+276+382+64+46+264+260+388+67+4+65+73+21+358+384+80+262+364+70+261+361+192+272
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5BV7/5BV7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit