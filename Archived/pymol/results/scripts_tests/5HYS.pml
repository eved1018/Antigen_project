delete all 
    fetch 5HYS.G


    set cartoon_transparency,0.5


    select ann2, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 448+508+506+496+453+450+454+463+451+452+429+446+332+428+504+430+499+447+497+339+427+465+431+337+333+419+335+493+494
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color brown, annotated2
    set sphere_transparency, 0.1,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color orange, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 4GT7.A
    set cartoon_transparency,0.75


    select ann, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 508+506+448+453+450+496+451+463+454+465+504+493+499+335+452+467+446+339+431+494+427+447+492+491+428+430+497+334+455
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.7,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    



    super 4GT7.A, 5HYS.G





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/5HYS_4GT7.png,width=900, height=900,dpi = 350,ray=1
    quit