delete all 
    fetch 4D3C.A


    set cartoon_transparency,0.75


    select ann2, resi 156+157+159+160+161+166+181+190+194+197+198
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 98+97+82+101+88+96+99+100+81+85+161+163+166+165+206+69+159+130+126+197+181+73+155+198+105
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
    




    fetch 5COE.A
    set cartoon_transparency,0.75


    select ann, resi 156+157+159+160+161+166+181+190+194+197+198
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 161+51+159+206+198+130+181+197+55+52+155+126+53+207+157+114+112+109+205+163+209+111+93+57+59+210+156
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
    




    align 4D3C.A, 5COE.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4D3C_5COE.png,width=900, height=900,dpi = 350,ray=1
    quit