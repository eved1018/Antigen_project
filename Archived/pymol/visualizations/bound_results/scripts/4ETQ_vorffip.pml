delete all 
    fetch 4ETQ.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 232+56+21+18+20+16+223+233+17+205+155+230+158+29+19+181+153+27+222+204+170+235+30+220+221+234+144+111
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ETQ/4ETQ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit