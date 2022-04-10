delete all 
    fetch 4ETQ.C


    set cartoon_transparency,0.75


    select ann2, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 232+56+21+18+20+16+223+233+17+205+155+230+158+29+19+181+153+27+222+204+170+235+30+220+221+234+144+111
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
    




    fetch 4E9O.X
    set cartoon_transparency,0.75


    select ann, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 158+130+129+155+133+157+127+29+126+56+153+16+214+170+128+212+17+211+213+203+232+221+162+30+65+190+18+44
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
    




    align 4ETQ.C, 4E9O.X





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4ETQ_4E9O.png,width=900, height=900,dpi = 350,ray=1
    quit