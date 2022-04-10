delete all 
    fetch 1BQL.Y


    set cartoon_transparency,0.75


    select ann2, resi 41+43+44+45+46+48+53+67+68+69+70+81+84
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 116+119+125+47+27+117+118+120+128+23+21+22+121+124+6+19+129+113+48+127+5+62+126+73
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
    




    fetch 1DKJ.A
    set cartoon_transparency,0.75


    select ann, resi 41+43+44+45+46+48+53+67+68+69+70+81+84
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 27+118+116+121+117+125+23+47+113+62+124+112+111+119+103+61+73+48+22+46+5+128+45+24
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
    




    align 1BQL.Y, 1DKJ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1BQL_1DKJ.png,width=900, height=900,dpi = 350,ray=1
    quit