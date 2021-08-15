delete all 
    fetch 4TSA.A


    set cartoon_transparency,0.75


    select ann2, resi 21+22+23+102+103+104+106+109+111+112+113+116+117
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 91+76+78+75+109+114+23+90+89+77+74+27+116+34+113+33+8+94+117+32+107
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


    select ann, resi 21+22+23+102+103+104+106+109+111+112+113+116+117
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
    




    align 4TSA.A, 4KXI.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4TSA_4KXI.png,width=900, height=900,dpi = 350,ray=1
    quit