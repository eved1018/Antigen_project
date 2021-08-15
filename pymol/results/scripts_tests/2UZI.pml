delete all 
    fetch 2UZI.R


    set cartoon_transparency,0.5


    select ann2, resi 17+21+25+27+29+31+32+33+34+35+36+37+38+39+40+61+63+64
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 36+38+64+37+39+67+41+33+34+63+25+66+70+31+32+40+61+52+56+65+30+73+27+95+35+21
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
    




    fetch 2Q21.A
    set cartoon_transparency,0.75


    select ann, resi 17+21+25+27+29+31+32+33+34+35+36+37+38+39+40+61+63+64
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 171+168+170+169+167+32+2+33+165+164+1+49+34+31+36+3+48+35+135+47+25+52+50+41+12+43
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
    



    super 2Q21.A, 2UZI.R





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/2UZI_2Q21.png,width=900, height=900,dpi = 350,ray=1
    quit