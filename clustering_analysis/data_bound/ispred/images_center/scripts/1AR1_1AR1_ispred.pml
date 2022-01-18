delete all 
    fetch 1AR1.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 26+29+30+166+167+168+205+207+208+209+235+236+237+240
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 61+74+70+58+71+65+73+67+72+56
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+100+101+14+16+17+13+39+42+221+223+196+155+97+222+226+20+36+19+18
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1AR1/1AR1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit