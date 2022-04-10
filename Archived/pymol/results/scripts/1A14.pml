delete all 
    fetch 1A14.N


    set cartoon_transparency,0.75


    select ann2, resi 328+329+330+331+332+341+342+343+344+366+368+369+370+372+400+401+402+403+432
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 437+206+146+367+155+143+176+150+144+211+369+209+147+366+210+456+154+368+149+400+173+169+107+454+455+457+191+399+466+451+343+152
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
    




    fetch 6HCX.A
    set cartoon_transparency,0.75


    select ann, resi 330+331+332+333+334+342+343+344+345+367+369+370+371+373+400+401+402+403+434
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 178+100+458+171+150+208+156+212+457+456+455+145+170+213+144+421+439+155+459+147+460+151+175+468+103+101+465+206+396+370+453+311
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
    




    align 1A14.N, 6HCX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1A14_6HCX.png,width=900, height=900,dpi = 350,ray=1
    quit