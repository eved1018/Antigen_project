delete all 
    fetch 5BV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 361+362+388+358+364+8+5+4+6+7+192+21
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 262+276+261+260+264+272+63+49+48+64+70+59+65+73+67+80+382+51+384+46+378
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5BV7/5BV7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit