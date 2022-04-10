delete all 
    fetch 5L0Q.A


    set cartoon_transparency,0.75


    select ann2, resi 451+557+589+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 641+642+644+638+566+646+649+567+648+651+455+635+631+602+640+629+622+450+652+625+453+634+464+454+591+557+636+457+478
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
    




    fetch 2AO7.A
    set cartoon_transparency,0.75


    select ann, resi 557+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 641+644+642+643+646+638+591+622+640+623+483+558+620+635+636+485+557+625+595+629+617+497+496+542+628+645
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
    




    align 5L0Q.A, 2AO7.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5L0Q_2AO7.png,width=900, height=900,dpi = 350,ray=1
    quit