delete all 
    fetch 4MWF.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 427+428+429+430+431+432+433+438+439+442+443+529
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 612+626+622+583+571+605+442+438+579+613+632+624+450+585+629+515+623+513+599+443+529+512+615+449+448+619+578
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4MWF/4MWF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit