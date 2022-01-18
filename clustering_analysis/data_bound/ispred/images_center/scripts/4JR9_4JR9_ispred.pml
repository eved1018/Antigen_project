delete all 
    fetch 4JR9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 12+15+16+17+19+24+25+27+28+29+32
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+261+314+258+311+307+306+413+377+164+172+370+380+342+168+409+454
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 103+117+228+217+98+99+220+94+95+222+226+225+218+135+134+132
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4JR9/4JR9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit