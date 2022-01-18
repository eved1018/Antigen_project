delete all 
    fetch 2YPV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+113+89+88+43+82+51+79+52+91+123+26+126+27+25+124+125
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 215+214+216+202+174+149+203+243+242+245+244
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2YPV/2YPV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit