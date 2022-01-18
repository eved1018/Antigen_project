delete all 
    fetch 4OGX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 412+416+418+419+434+435+437+438+439+475+477+478+479+480+483+527+528+554+555+572+573+574+575+578+597+598+599+600+601+602+604+609
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 513+477+598+566+438+544+434+543+437+478
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+465+498+460+500+413+412+411+401+414+418+531+491+443+495+497+441+455+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4OGX/4OGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit