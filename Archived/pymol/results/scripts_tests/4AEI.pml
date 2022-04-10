delete all 
    fetch 4AEI.A


    set cartoon_transparency,0.5


    select ann2, resi 9+10+11+12+13+15+41+42+56+59+60+61+62+63+64
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 35+38+63+15+17+21+8+18+14+62+42+37+19+44+47+64+41+9+39+49
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
    




    fetch 1PTX.A
    set cartoon_transparency,0.75


    select ann, resi 9+10+11+12+13+15+41+42+56+59+60+61+62+63+64
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 15+38+18+35+64+19+37+62+17+44+47+49+21+63+41+42+13+5+12+14
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
    



    super 1PTX.A, 4AEI.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/4AEI_1PTX.png,width=900, height=900,dpi = 350,ray=1
    quit