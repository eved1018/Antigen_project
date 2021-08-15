delete all 
    fetch 5BV7.A


    set cartoon_transparency,0.75


    select ann2, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 48+70+68+69+51+329+65+67+49+117+333+64+231+337+46+5+235+232+73+8+47+63+397+339+6+382+379+341+384+378+227+395+52
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 5TXF.A
    set cartoon_transparency,0.75


    select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 48+340+51+70+341+68+49+69+65+339+286+337+47+50+73+323+333+338+329+46+58+235+238+234+334+326+328+76+236+272+242+270+373
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 5BV7.A, 5TXF.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5BV7_5TXF.png,width=900, height=900,dpi = 350,ray=1
    quit