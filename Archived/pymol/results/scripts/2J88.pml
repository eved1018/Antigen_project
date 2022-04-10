delete all 
    fetch 2J88.A


    set cartoon_transparency,0.75


    select ann2, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 143+148+72+142+144+55+141+73+64+145+140+135+46+89+138+74+71+45+24+159+155+93+139+47+113+301+59+20+56+65+43
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
    




    fetch 1FCQ.A
    set cartoon_transparency,0.75


    select ann, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 143+142+144+139+141+42+140+45+113+135+43+138+89+72+92+159+96+23+273+230+93+145+74+28+148+24+94+160+20+274+97
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
    




    align 2J88.A, 1FCQ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2J88_1FCQ.png,width=900, height=900,dpi = 350,ray=1
    quit