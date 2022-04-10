delete all 
    fetch 1ZTX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 302+306+307+308+309+330+332+333+365+366+367+368+389+390+391
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+363+355+356+378+372+358+346+383+398+395+379+396+319+359+317+354+316+324+301+348+381+350
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1ZTX/1ZTX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit