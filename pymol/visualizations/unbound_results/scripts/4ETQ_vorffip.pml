delete all 
    fetch 4E9O.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 158+130+129+155+133+157+127+29+126+56+153+16+214+170+128+212+17+211+213+203+232+221+162+30+65+190+18+44
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