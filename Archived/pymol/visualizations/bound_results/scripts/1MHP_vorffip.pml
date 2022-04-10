delete all 
    fetch 1MHP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+192+218+219+220+221+222+223+224+259+261+263+264
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 264+222+225+223+160+262+265+333+261+263+157+192+161+193+336+267+279+215+287+219+217+158+313+332+183+145
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1MHP/1MHP_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit