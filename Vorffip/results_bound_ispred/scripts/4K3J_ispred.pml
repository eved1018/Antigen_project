delete all 
    fetch 4K3J.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 327+328+331+332+333+334+335+336+337+338+339+368+369+426+446+448+449+469
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 560+562+188+257+563+431+190+186+543+427+564+191+561+559+542+192+268+527+125+266+552+534+375+395+553+312+556+124+378+222+372+554+377+433+156+270
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K3J/4K3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit