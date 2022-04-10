delete all 
    fetch 5DUR.A


    set cartoon_transparency,0.75


    select ann2, resi 68+69+71+72+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 53+138+51+69+71+68+78+72+137+48+66+80+49+145+100+97+82+103+162+54+70+96+87+231+252+265+50+264
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
    




    fetch 5DUT.A
    set cartoon_transparency,0.75


    select ann, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 49+51+53+145+48+78+138+47+60+66+137+109+68+259+264+50+77+74+88+110+263+260+262+113+93+87+80+162
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
    




    align 5DUR.A, 5DUT.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5DUR_5DUT.png,width=900, height=900,dpi = 350,ray=1
    quit