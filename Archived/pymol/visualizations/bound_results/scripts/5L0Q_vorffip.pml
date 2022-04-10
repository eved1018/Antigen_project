delete all 
    fetch 5L0Q.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 451+557+589+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 641+642+644+638+566+646+649+567+648+651+455+635+631+602+640+629+622+450+652+625+453+634+464+454+591+557+636+457+478
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5L0Q/5L0Q_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit