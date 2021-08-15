delete all 
    fetch 1WEJ.F


    set cartoon_transparency,0.75


    select ann2, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 60+103+99+100+104+37+58+61+62+96+36+39+63+101+38+57+97+22+44+34+4+3+42+81
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
    




    fetch 1LC1.A
    set cartoon_transparency,0.75


    select ann, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 81+92+95+11+65+88+73+28+62+16+66+44+87+86+47+27+91+12+17+25+48+2+82+46
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
    




    align 1WEJ.F, 1LC1.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1WEJ_1LC1.png,width=900, height=900,dpi = 350,ray=1
    quit