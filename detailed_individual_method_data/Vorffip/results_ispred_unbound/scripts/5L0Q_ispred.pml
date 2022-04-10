delete all 
    fetch 2AO7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 636+642+539+635+497+646+638+582+643+641+499+633+645+517+498+607+501+628+542+593+634+485+496+500+631+502
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5L0Q/5L0Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit