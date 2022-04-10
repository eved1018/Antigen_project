delete all 
    fetch 1JHL.A


    set cartoon_transparency,0.75


    select ann2, resi 21+23+103+106+112+113+116+117+118+119+121
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 5+113+122+116+125+123+118+119+70+128+81+114+27+34+33+117+47+23+62+68+103+53+45+79
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
    




    fetch 1GHL.A
    set cartoon_transparency,0.75


    select ann, resi 21+23+106+112+113+116+117+118+119+121
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 27+23+5+125+34+123+122+22+118+33+128+116+24+113+21+120+119+117+47+37+68+79+111+127
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
    




    align 1JHL.A, 1GHL.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1JHL_1GHL.png,width=900, height=900,dpi = 350,ray=1
    quit