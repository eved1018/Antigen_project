delete all 
    fetch 1UJ3.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 722+749+752+754+756+765+766+767+768+769+771+790+792+794+796+797+799+800+801+804
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 650+651+740+637+647+735+738+678+645+682+765+690+679+691+769+733+689+674+646+756+692+658+648+681+809+656+694+731
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1UJ3/1UJ3_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit