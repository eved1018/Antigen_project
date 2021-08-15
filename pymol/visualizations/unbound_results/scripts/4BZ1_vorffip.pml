delete all 
    fetch 3WE1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 592+593+594+595+596+598+600+602+631+632+647+649
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 671+669+652+654+670+672+673+621+667+629+593+580+656+595+577+668+653+649+622+613+591+597+628
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4BZ1/4BZ1_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit