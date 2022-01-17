delete all 
    fetch 6HCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 330+331+332+333+334+342+343+344+345+367+369+370+371+373+400+401+402+403+434
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+459+465+467+461+348+401+400+399+370+402+403+432+369+433+396+346+434+347+437+345+344+331+330
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 311+174+175+414+206+156+83+178
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1A14/1A14_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit