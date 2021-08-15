delete all 
    fetch 1ORS.C


    set cartoon_transparency,0.75


    select ann2, resi 107+111+112+113+114+115+116+117+119+123
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 46+116+148+48+22+24+123+60+26+27+113+29+54+49+118+138+71+57+50+44+151+149+88+120+121+117
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
    




    fetch 2KYH.A
    set cartoon_transparency,0.75


    select ann, resi 107+111+112+113+114+115+116+117+119+123
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 54+92+46+37+7+47+48+49+53+5+76+83+8+79+57+112+149+151+116+127+29+30+17+89+150+82+120
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
    




    align 1ORS.C, 2KYH.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1ORS_2KYH.png,width=900, height=900,dpi = 350,ray=1
    quit