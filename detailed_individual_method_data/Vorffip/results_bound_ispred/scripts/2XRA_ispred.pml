delete all 
    fetch 2XRA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 564+565+567+568+569+571+572+574+575+578+579+1643+4570+4573+4574+4577
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1626+4564+575+571+1655+568+4557+547+3643+1661+3657+4577+4549+3647+557+4570+1657+3633+1633+4553+1627+4575+4546+4578+565+564+4567
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2XRA/2XRA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit