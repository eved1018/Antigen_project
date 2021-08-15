delete all 
    fetch 5L6Y.C


    set cartoon_transparency,0.75


    select ann2, resi 13+17+20+100+103+104+106+107+108+109+111
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 34+88+86+112+87+35+32+5+111+6+70+48+52+29+36+103+44+69+110+106+109+68+67
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
    




    fetch 1IK0.A
    set cartoon_transparency,0.75


    select ann, resi 14+18+21+101+104+105+107+108+109+110+112
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 111+86+78+105+87+109+3+35+79+84+80+2+77+89+11+33+74+62+41+83+85+110+88+104
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
    




    align 5L6Y.C, 1IK0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5L6Y_1IK0.png,width=900, height=900,dpi = 350,ray=1
    quit