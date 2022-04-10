delete all 
    fetch 4ZS7.A


    set cartoon_transparency,0.75


    select ann2, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 157+161+164+165+121+158+168+48+47+24+159+160+117+162+28+31+118+40+152+114+151+182+179+113+74
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


    select ann, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
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
    




    align 4ZS7.A, 1ALU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4ZS7_1ALU.png,width=900, height=900,dpi = 350,ray=1
    quit