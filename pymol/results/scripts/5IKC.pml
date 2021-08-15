delete all 
    fetch 5IKC.M


    set cartoon_transparency,0.75


    select ann2, resi 60+62+63+64+93+94+95+96+130+132+134+135+136
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 64+63+65+131+132+103+66+102+95+59+78+94+62+76+89+77+137+70+130+133+134+96
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
    




    fetch 1MJD.A
    set cartoon_transparency,0.75


    select ann, resi 60+62+63+64+93+94+95+96+130+132+134+135+136
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 40+43+44+38+45+46+78+42+149+41+47+94+65+64+75+76+93+89+48+39+86+98+49+79
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
    




    align 5IKC.M, 1MJD.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5IKC_1MJD.png,width=900, height=900,dpi = 350,ray=1
    quit