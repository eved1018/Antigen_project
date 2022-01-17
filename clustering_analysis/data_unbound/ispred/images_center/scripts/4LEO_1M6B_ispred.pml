delete all 
    fetch 1M6B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 249+467+512+476+298+307+564+559+571+575+561+358+355+346+353+347+556+519+478+518+244+291+253+521
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 274+10+62+189+174+60+166+43+180+196+82+197+51+37
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4LEO/4LEO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit