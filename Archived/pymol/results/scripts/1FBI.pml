delete all 
    fetch 1FBI.X


    set cartoon_transparency,0.75


    select ann2, resi 14+15+16+20+21+63+71+73+75+77+93+96+97+100+101
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 125+122+118+5+123+34+68+121+116+114+27+117+113+23+45+128+70+33+62+47+49+119+24+124
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
    




    fetch 1HHL.A
    set cartoon_transparency,0.75


    select ann, resi 14+15+16+20+21+63+71+73+75+77+93+96+97+100+101
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 122+123+121+125+118+119+5+61+34+114+113+70+62+33+117+27+47+48+68+73+120+23+103+116
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
    




    align 1FBI.X, 1HHL.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1FBI_1HHL.png,width=900, height=900,dpi = 350,ray=1
    quit