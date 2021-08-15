delete all 
    fetch 1FNS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 627+628+629+631+632+633+634+635+636+660+661+664
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 632+573+599+660+633+636+629+664+635+563+663+702+571+627+631+529+596+600+586+588+564+639+527+666+528+608
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FNS/1FNS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit