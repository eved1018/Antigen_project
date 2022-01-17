delete all 
    fetch 1M6B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 244+249+253+274+291+298+307+346+347+353+355+358+467+476+478+512+518+519+521+556+559+561+564+571+575
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 10+166+174+180+189+196+197+37+43+51+60+62+82
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4LEO/4LEO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit