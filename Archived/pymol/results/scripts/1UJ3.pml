delete all 
    fetch 1UJ3.C


    set cartoon_transparency,0.75


    select ann2, resi 722+749+752+754+756+765+766+767+768+769+771+790+792+794+796+797+799+800+801+804
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 650+651+740+637+647+735+738+678+645+682+765+690+679+691+769+733+689+674+646+756+692+658+648+681+809+656+694+731
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
    




    fetch 1BOY.A
    set cartoon_transparency,0.75


    select ann, resi 122+149+152+154+156+165+166+167+168+169+171+190+192+194+196+197+199+200+201+204
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 51+50+45+37+138+140+139+74+135+47+87+91+94+131+82+167+165+78+133+83+86+84+168+88+169+48+85+46+44
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
    




    align 1UJ3.C, 1BOY.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1UJ3_1BOY.png,width=900, height=900,dpi = 350,ray=1
    quit