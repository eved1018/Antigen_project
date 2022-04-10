delete all 
    fetch 3PNW.C


    set cartoon_transparency,0.75


    select ann2, resi 566+567+579+580+581+582+586+588+590+592+593+594+595+597+598+599
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 552+567+563+594+573+585+568+601+554+606+572+571+555+550+566+599+608+596+598+607
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
    




    fetch 2D9T.A
    set cartoon_transparency,0.75


    select ann, resi 20+21+33+34+35+36+40+42+44+47+48+49+51+52+53
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 67+47+21+77+20+51+75+52+3+74+50+48+1+69+65+28+27+22+55+70+78+2
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
    




    align 3PNW.C, 2D9T.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3PNW_2D9T.png,width=900, height=900,dpi = 350,ray=1
    quit