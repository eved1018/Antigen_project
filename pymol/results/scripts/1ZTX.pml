delete all 
    fetch 1ZTX.E


    set cartoon_transparency,0.75


    select ann2, resi 302+306+307+308+309+330+332+333+365+366+367+368+389+390+391
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 372+301+347+354+302+359+379+300+357+396+358+374+304+348+356+361+346+389+381+320+376+398+400
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
    




    fetch 1S6N.A
    set cartoon_transparency,0.75


    select ann, resi 11+15+16+17+18+39+41+42+74+75+76+77+98+99+100
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 92+55+73+12+1+70+5+113+105+104+99+45+9+107+112+65+101+63+13+54+24+10+72+71
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
    




    align 1ZTX.E, 1S6N.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1ZTX_1S6N.png,width=900, height=900,dpi = 350,ray=1
    quit