delete all 
    fetch 5KW9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397+398
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 504+262+510+505+258+502+503+259+460+229+411+235+232+257+255+494+469
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 338+339+312+405+401+340+394+356+351+337+336+334+278
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5KW9/5KW9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit