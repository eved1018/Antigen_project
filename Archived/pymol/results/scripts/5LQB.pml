delete all 
    fetch 5LQB.A


    set cartoon_transparency,0.75


    select ann2, resi 50+52+53+54+55+57+58+61+62+63+91+92+93+94+96+97
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 52+39+36+51+63+61+58+99+60+42+62+92+49+96+65+57+54+46+88+101+50+35+100+124
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
    




    fetch 1M4C.A
    set cartoon_transparency,0.75


    select ann, resi 30+32+33+34+35+37+38+41+42+43+71+72+73
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 42+40+38+72+37+45+41+88+84+19+43+104+20+35+85+34+16+22+68+23+83+103+11+15
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
    




    align 5LQB.A, 1M4C.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5LQB_1M4C.png,width=900, height=900,dpi = 350,ray=1
    quit