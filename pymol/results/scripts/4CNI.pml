delete all 
    fetch 4CNI.D


    set cartoon_transparency,0.75


    select ann2, resi 47+48+57+103+104+106+152+153+154+155+156+157+158+159+160
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 24+27+15+16+17+117+19+121+28+14+18+31+75+125+183+30+120+182+40+23+20+113+54+41+157+179
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
    




    fetch 1ALU.A
    set cartoon_transparency,0.75


    select ann, resi 47+48+103+104+106+152+153+154+155+156+157+158+159+160
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 157+31+158+118+161+121+155+24+117+120+49+28+113+125+124+61+48+165+27+51+69+114+30+156+62+19
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
    




    align 4CNI.D, 1ALU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4CNI_1ALU.png,width=900, height=900,dpi = 350,ray=1
    quit