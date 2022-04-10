delete all 
    fetch 1FNS.A


    set cartoon_transparency,0.75


    select ann2, resi 627+628+629+631+632+633+634+635+636+660+661+664
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 636+632+633+635+631+629+628+660+634+664+599+508+545+637+603+663+659+667+510+596+573+575+643+507+574+695
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
    




    fetch 1AUQ.A
    set cartoon_transparency,0.75


    select ann, resi 627+628+629+631+632+633+634+635+636+660+661+664
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 636+632+633+507+704+508+506+635+702+705+505+628+545+703+701+510+634+503+629+700+504+631+549+603+511+550+543
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
    




    align 1FNS.A, 1AUQ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1FNS_1AUQ.png,width=900, height=900,dpi = 350,ray=1
    quit