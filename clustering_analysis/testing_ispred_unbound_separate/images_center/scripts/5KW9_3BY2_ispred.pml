delete all 
    fetch 3BY2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 230+232+255+257+258+259+262+410+460+466+468+485+486+493+494+502+503+504+505+510
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 275+276+282+286+312+340+356+404+405+449
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5KW9/5KW9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit