delete all 
    fetch 4NNP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 230+231+232+233+234+235+237+238+239+241+242+262+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 266+242+238+237+262+241+235+232+258+233+239+245+260+246+268+265+234+222+247+180+175+231+264+179+219+101+248+269+173+259
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4NNP/4NNP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit