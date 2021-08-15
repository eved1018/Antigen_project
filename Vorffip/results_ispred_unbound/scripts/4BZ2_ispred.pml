delete all 
    fetch 3WE1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 587+588+589+590+591+592+593+594+595+602+623+643+656+669+670+671+672+673
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 634+580+631+627+609+578+611+629+645+628+671+633+669+587+595+672+647+594+630+610+582+638+649
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4BZ2/4BZ2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit