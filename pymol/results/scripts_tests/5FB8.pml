delete all 
    fetch 5FB8.C


    set cartoon_transparency,0.5


    select ann2, resi 38+39+40+42+43+44+45+46+51+53+63+65+66+94+95+96+97+99+102
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 40+96+63+65+99+95+100+53+97+103+66+39+43+64+51+41+54+94+52+38+45+62
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color brown, annotated2
    set sphere_transparency, 0.1,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color orange, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 1I16.A
    set cartoon_transparency,0.75


    select ann, resi 38+39+40+42+43+44+45+46+51+53+63+65+66+94+95+96+97+99+102
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 2+23+4+3+53+17+6+96+1+120+65+13+9+22+24+130+5+15+19+20+119+16+21+14+10
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.7,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    



    super 1I16.A, 5FB8.C





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/5FB8_1I16.png,width=900, height=900,dpi = 350,ray=1
    quit