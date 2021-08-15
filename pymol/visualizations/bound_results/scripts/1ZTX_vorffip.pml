delete all 
    fetch 1ZTX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 302+306+307+308+309+330+332+333+365+366+367+368+389+390+391
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 372+301+347+354+302+359+379+300+357+396+358+374+304+348+356+361+346+389+381+320+376+398+400
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1ZTX/1ZTX_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit