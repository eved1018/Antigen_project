delete all 
    fetch 1UJ3.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 722+749+752+754+756+765+766+767+768+769+771+790+792+794+796+797+799+800+801+804
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 765+766+809+808+767+798+756+810+769+807+768+797+719
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 698+661+689+630+690+691+693+678+679+692+696+640+683+695+694
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1UJ3/1UJ3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit