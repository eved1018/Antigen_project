delete all 
    fetch 1RJL.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 214+262+264+288+266+202+263+218+265+261+225+203+215+286+291+289+216+221+222+287+231+219+220+238
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1RJL/1RJL_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit