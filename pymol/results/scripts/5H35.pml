delete all 
    fetch 5H35.C


    set cartoon_transparency,0.75


    select ann2, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 1+171+2+82+115+83+173+165+166+172+3+5+170+113+174+32+169+192+193+65+52+51+140+189+57+81+139
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
    




    fetch 5WTR.A
    set cartoon_transparency,0.75


    select ann, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 166+83+171+80+114+193+165+113+195+64+82+192+172+2+1+3+174+57+115+169+170+65+173+79+120+140+51
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
    




    align 5H35.C, 5WTR.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5H35_5WTR.png,width=900, height=900,dpi = 350,ray=1
    quit