delete all 
    fetch 4DGI.A


    set cartoon_transparency,0.75


    select ann2, resi 138+140+141+142+143+144+145+146+147+208+212
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 129+130+148+128+151+138+162+166+186+136+189+140+152+144+200+145+155+126+188+154+190+185+221
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
    




    fetch 1QLX.A
    set cartoon_transparency,0.75


    select ann, resi 138+140+141+142+143+144+145+146+147+208+212
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 225+149+223+129+226+218+145+168+162+155+153+152+228+221+220+136+146+167+130+227+126+144+127+170
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
    




    align 4DGI.A, 1QLX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4DGI_1QLX.png,width=900, height=900,dpi = 350,ray=1
    quit