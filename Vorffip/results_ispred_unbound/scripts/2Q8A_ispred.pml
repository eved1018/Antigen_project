delete all 
    fetch 1Z40.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 186+187+188+189+190+194+196+197+199+200+201+202+203+204+205+208+222+223+224+225+235
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+379+112+325+161+381+178+274+200+353+109+110+160+328+378+162+228+327+171+230+231+382+139+108+261+113+177+263+329+187+185
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2Q8A/2Q8A_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit