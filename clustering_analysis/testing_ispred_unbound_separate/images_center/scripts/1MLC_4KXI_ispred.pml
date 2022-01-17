delete all 
    fetch 4KXI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+43+45+46+47+48+49+53+67+68+70+79+81+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 103+109+112+113+114+116+117+118+119+128+33+34
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 43+44+45+46+47+48+61+68+70+71+72+73
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1MLC/1MLC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit