delete all 
    fetch 4E9O.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 5+39+40+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 211+155+222+175+228+221+153+226+232+3+224+214+18+9+227+2+223+20+234+29+22+162+233+220+17+129+19+27
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ETQ/4ETQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit