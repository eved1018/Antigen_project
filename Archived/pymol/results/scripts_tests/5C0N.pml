delete all 
    fetch 5C0N.A


    set cartoon_transparency,0.5


    select ann2, resi 9+35+36+37+56+131
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 35+32+27+28+31+29+57+26+36+34+47+33+2+58+56+5+86+1+16+68+30+85+77+45+66
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
    




    fetch 2QM9.A
    set cartoon_transparency,0.75


    select ann, resi 9+35+36+37+56+131
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 28+31+32+27+29+35+26+0+56+58+86+-3+85+57+87+-1+-2+68+47+5+66+77+2+34+17+30
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
    



    super 2QM9.A, 5C0N.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/5C0N_2QM9.png,width=900, height=900,dpi = 350,ray=1
    quit