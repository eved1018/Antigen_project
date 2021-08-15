delete all 
    fetch 4U0R.A


    set cartoon_transparency,0.75


    select ann2, resi 193+202+205+209+212+213+216+328+331+335+338+339+341+342+344
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 447+358+200+203+354+404+405+499+448+350+393+197+346+401+400+500+402+185+408+181+204+406+333+495+184+362+446+498+352+177+201
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
    




    fetch 4WAT.A
    set cartoon_transparency,0.75


    select ann, resi 193+202+205+209+212+213+328+331+335+338+339+341+342+344
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 346+502+250+350+448+449+510+358+447+504+498+352+357+200+499+204+426+389+509+505+203+446+254+506+252+507+197+248+155+392+393+443
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
    




    align 4U0R.A, 4WAT.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4U0R_4WAT.png,width=900, height=900,dpi = 350,ray=1
    quit