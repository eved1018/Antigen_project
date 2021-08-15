delete all 
    fetch 1RJL.C


    set cartoon_transparency,0.75


    select ann2, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 214+262+264+288+266+202+263+218+265+261+225+203+215+286+291+289+216+221+222+287+231+219+220+238
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
    




    fetch 1P4P.A
    set cartoon_transparency,0.75


    select ann, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 262+259+214+261+260+162+160+244+225+242+280+263+267+243+213+220+158+159+173+279+282+161+164+232+221+174
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
    




    align 1RJL.C, 1P4P.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1RJL_1P4P.png,width=900, height=900,dpi = 350,ray=1
    quit