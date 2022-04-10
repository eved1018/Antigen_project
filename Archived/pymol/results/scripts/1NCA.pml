delete all 
    fetch 1NCA.N


    set cartoon_transparency,0.75


    select ann2, resi 326+327+328+329+343+344+345+347+366+367+368+369+370+372+399+400+401+402+403+431+432
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 456+209+400+146+143+466+206+176+455+210+437+211+99+454+82+457+366+401+144+107+155+81+367+414+399+453+396+169+150+147+83+126
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
    




    fetch 6D3B.A
    set cartoon_transparency,0.75


    select ann, resi 326+327+328+329+343+344+345+347+366+367+368+369+370+372+399+400+401+402+403+431+432
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 155+99+176+206+414+456+209+210+211+154+455+81+169+437+149+143+100+419+453+457+98+82+173+146+367+144+415+416+451+150+454+107
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
    




    align 1NCA.N, 6D3B.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1NCA_6D3B.png,width=900, height=900,dpi = 350,ray=1
    quit