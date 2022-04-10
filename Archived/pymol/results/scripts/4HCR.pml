delete all 
    fetch 4HCR.A


    set cartoon_transparency,0.75


    select ann2, resi 1+2+3+35+36+37+39+41+71+73+74+75+77+78+79+80+81+82+83+84
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 148+196+159+48+51+19+181+94+7+2+119+39+32+197+198+192+135+20+146+53+37+31+178+131+121+30+52+161
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
    




    fetch 4HD9.A
    set cartoon_transparency,0.75


    select ann, resi 1+2+3+35+36+37+39+41+71+73+74+75+77+78+79+80+81+82+83+84
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 78+32+175+80+79+43+31+60+28+30+196+2+77+75+123+178+41+39+181+95+68+1+100+81+134+200+47+3
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
    




    align 4HCR.A, 4HD9.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4HCR_4HD9.png,width=900, height=900,dpi = 350,ray=1
    quit