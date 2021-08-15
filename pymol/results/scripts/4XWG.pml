delete all 
    fetch 4XWG.A


    set cartoon_transparency,0.75


    select ann2, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+240
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 48+70+49+340+51+69+329+333+46+286+68+73+295+246+288+239+63+328+334+76+292+339+58+85+47+291+341+382+279+65+338+272
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


    select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+238
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
    




    align 4XWG.A, 5TXF.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4XWG_5TXF.png,width=900, height=900,dpi = 350,ray=1
    quit