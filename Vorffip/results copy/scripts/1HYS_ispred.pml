delete all 
    fetch 1HYS.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 141+232+230+228+199+226+301+140+227+308+52+28+9+210+137+229+24+401+162+204+194+133+400+231+404+166+32+29+138+223+139+216+134+212+165
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1HYS/1HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit