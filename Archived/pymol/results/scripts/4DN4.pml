delete all 
    fetch 4DN4.M


    set cartoon_transparency,0.75


    select ann2, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 13+24+49+11+47+14+37+10+18+46+51+35+36+23+30+17+45+19+50+16
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
    




    fetch 3IFD.A
    set cartoon_transparency,0.75


    select ann, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 13+47+9+35+24+46+6+14+11+17+10+5+49+7+8+34+48+18+29+33+23
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
    




    align 4DN4.M, 3IFD.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4DN4_3IFD.png,width=900, height=900,dpi = 350,ray=1
    quit