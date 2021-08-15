delete all 
    fetch 5E8E.H
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 339+344+345+346+380+382+388+389+390+391+393+398
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 434+331+471+468+370+431+390+330+329+473+470+469+397+394+393+371+433+443+538+395+536+408+409+342+436+367+366+465+478+389
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit