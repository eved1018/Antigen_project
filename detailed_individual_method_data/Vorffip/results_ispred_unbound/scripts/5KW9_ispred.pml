delete all 
    fetch 3BY2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 505+232+404+312+282+356+466+460+468+502+258+262+259+486+493+255+510+340+494+276+503+286+405+275+230+257+485+410+504+449
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KW9/5KW9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit