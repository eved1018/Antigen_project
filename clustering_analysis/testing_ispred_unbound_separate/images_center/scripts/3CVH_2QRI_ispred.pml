delete all 
    fetch 2QRI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 105H+106H+110H+115H+122H+136H+137H+141H+142H+145H+170H+172H+173H+176H+84H+85H+86H+88H
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 195H+219H+220H+222H+223H+225H+226H+227H+229H+230H+248H+251H+255H+256H
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit