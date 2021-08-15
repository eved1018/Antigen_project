delete all 
    fetch 4I77.Z


    set cartoon_transparency,0.75


    select ann2, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 107+10+106+70+42+41+87+44+8+105+104+84+11+35+86+108+79+9+85+40+78+38+101
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


    select ann, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
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
    




    align 4I77.Z, 1IK0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4I77_1IK0.png,width=900, height=900,dpi = 350,ray=1
    quit