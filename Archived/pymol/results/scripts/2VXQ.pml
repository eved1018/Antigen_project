delete all 
    fetch 2VXQ.A


    set cartoon_transparency,0.75


    select ann2, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 76+79+77+75+78+3+46+67+41+94+85+43+73+30+72+74+34+87+39+69+88+37+68
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
    




    fetch 1BMW.A
    set cartoon_transparency,0.75


    select ann, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 77+1+3+75+67+84+79+76+43+23+78+2+41+74+36+94+7+42+63+91+85+34+22
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
    




    align 2VXQ.A, 1BMW.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2VXQ_1BMW.png,width=900, height=900,dpi = 350,ray=1
    quit