delete all 
    fetch 1NSN.S


    set cartoon_transparency,0.75


    select ann2, resi 9+57+60+61+64+68+70+95+96+97+98+105+106+120+121+124+127+135
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 97+105+106+124+61+121+60+96+68+98+64+120+95+57+70+127+65+93+135+9+101+67+71+102+63
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
    




    fetch 1KDC.A
    set cartoon_transparency,0.75


    select ann, resi 9+57+60+61+64+68+70+95+96+97+98+105+106+120+121+124+127+135
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 116+113+115+114+84+48+85+24+6+122+47+117+87+124+123+119+83+105+86+26+80+30+31+127+106
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
    




    align 1NSN.S, 1KDC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1NSN_1KDC.png,width=900, height=900,dpi = 350,ray=1
    quit