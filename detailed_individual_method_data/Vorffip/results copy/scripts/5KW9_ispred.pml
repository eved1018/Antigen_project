delete all 
    fetch 5KW9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397+398
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 259+232+262+312+356+338+505+351+510+411+502+339+504+257+340+469+258+503+255+235+334+401+337+394+460+229+278+336+494+405
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