delete all 
    fetch 1LDC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 149+150+159+378+380+382+486+487+488+489+490+491+492+493+494+495+496+497+500+502+503+504+505+506+511
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 117+118+126+168+169+175+414+464+475+481+482
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3KS0/3KS0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit