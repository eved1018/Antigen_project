delete all 
    fetch 4E9O.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 129+153+155+162+17+18+19+20+22+232+233+234+27+29
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 175+2+211+214+220+221+222+223+224+226+227+228+3+9
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4ETQ/4ETQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit