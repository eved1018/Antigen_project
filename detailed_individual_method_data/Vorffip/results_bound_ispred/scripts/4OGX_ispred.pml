delete all 
    fetch 4OGX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 412+416+418+419+434+435+437+438+439+475+477+478+479+480+483+527+528+554+555+572+573+574+575+578+597+598+599+600+601+602+604+609
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 478+414+418+513+498+438+434+496+413+495+543+531+500+598+437+544+401+455+491+566+458+443+465+497+460+411+412+441+477
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OGX/4OGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit