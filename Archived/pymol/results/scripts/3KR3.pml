delete all 
    fetch 3KR3.D


    set cartoon_transparency,0.75


    select ann2, resi 7+9+10+11+12+14+15+17+26+34+35+40+43+44+45+47+48+49+59
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 38+40+48+19+34+27+37+32+57+43+53+18+49+44+20+14+36+33+16+41
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
    




    fetch 1IGL.A
    set cartoon_transparency,0.75


    select ann, resi 7+9+10+11+12+14+15+17+26+34+35+40+43+44+45+47+48+49+59
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 5+2+48+4+34+3+19+57+38+1+36+32+23+53+52+49+6+44+10+50+41
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
    




    align 3KR3.D, 1IGL.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3KR3_1IGL.png,width=900, height=900,dpi = 350,ray=1
    quit