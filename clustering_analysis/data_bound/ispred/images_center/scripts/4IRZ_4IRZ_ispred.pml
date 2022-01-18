delete all 
    fetch 4IRZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 83+145+148+149+150+151+152+154+155+160+161+162+163+193+198+199+200+201+202+204+206+208+255+256+257
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+448+589+588+591+590+592+579+587+451+537+457+456+495+454
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 298+299+567+188+214+564+558+559+565+561+560+562+563+220+554+187+421+555+557+556+241+296
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4IRZ/4IRZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit