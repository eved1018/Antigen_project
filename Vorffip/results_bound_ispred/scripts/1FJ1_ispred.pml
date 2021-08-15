delete all 
    fetch 1FJ1.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 206+207+208+209+211+213+214+215+226+228+229+230+249+250+251+252+253
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 255+253+231+230+232+229+251+219+218+267+236+226+220+256+254+206+264+269+273+213+250+266+204+221+200+257+214+258+207+211+228
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FJ1/1FJ1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit