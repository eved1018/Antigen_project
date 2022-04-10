delete all 
    fetch 1UJ3.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 722+749+752+754+756+765+766+767+768+769+771+790+792+794+796+797+799+800+801+804
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 797+766+767+807+693+809+690+808+694+691+769+630+768+689+683+692+765+661+756+695+678+679+810+698+719+696+798+640
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1UJ3/1UJ3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit