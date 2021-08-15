delete all 
    fetch 1CK4.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+192+220+221+223+224+259+261+263+264
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 161+145+157+160+146+220+222+163+223+177+246+192+293+288+291+336+182+167+180+193+247+292+249+170+175+265
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1MHP/1MHP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit