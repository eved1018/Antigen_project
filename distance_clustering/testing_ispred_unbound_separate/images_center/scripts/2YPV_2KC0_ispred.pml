delete all 
    fetch 2KC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 14+142+143+147+149+15+160+174+186+187+200+202+204+205+215+216+229+230+232+243+27+70+71+73
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 119+41+43+59+85+86+87
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2YPV/2YPV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit