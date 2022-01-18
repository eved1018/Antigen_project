delete all 
    fetch 3W9E.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+26+27+38+39+132+134+139+140+193+196+215+216+218+220+221+222+223+224+227+231+234+235+238+239
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+28+38+220+234+42+223+140+197+222+231+34+37+26+32+33+27+31
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 249+180+83+86+87+52+85+53+251+252+253
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3W9E/3W9E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit