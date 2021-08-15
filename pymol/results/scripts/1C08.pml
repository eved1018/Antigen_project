delete all 
    fetch 1C08.C


    set cartoon_transparency,0.75


    select ann2, resi 15+16+19+20+21+63+73+75+89+93+96+97+98+100+101+102+103
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 27+117+23+116+118+22+125+128+66+119+112+113+81+24+41+68+120+102+106+114+47+111+13+127
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
    




    fetch 4KXI.A
    set cartoon_transparency,0.75


    select ann, resi 15+16+19+20+21+63+73+75+89+93+96+97+98+100+101+102+103
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 27+23+117+119+118+116+121+120+22+24+47+125+70+112+62+81+128+113+66+122+68+111+41+79
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
    




    align 1C08.C, 4KXI.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1C08_4KXI.png,width=900, height=900,dpi = 350,ray=1
    quit