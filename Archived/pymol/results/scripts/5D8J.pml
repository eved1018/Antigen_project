delete all 
    fetch 5D8J.A


    set cartoon_transparency,0.75


    select ann2, resi 24+25+26+27+28+29+30+31+32+33+36+58+77+78+79+98+99+101
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 36+32+58+29+33+28+30+37+35+59+57+68+87+34+86+78+88+3+1+31+48+66+74+60+67
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
    




    fetch 2QM9.A
    set cartoon_transparency,0.75


    select ann, resi 23+24+25+26+27+28+29+30+31+32+35+57+76+77+78+97+98+100
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 28+31+32+27+29+35+26+0+56+58+86+-3+85+57+87+-1+-2+68+47+5+66+77+2+34+17+30
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
    




    align 5D8J.A, 2QM9.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5D8J_2QM9.png,width=900, height=900,dpi = 350,ray=1
    quit