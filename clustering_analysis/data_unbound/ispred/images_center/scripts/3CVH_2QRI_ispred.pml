delete all 
    fetch 2QRI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 219H+223H+222H+255H+248H+225H+229H+195H+227H+251H+230H+226H+256H+220H
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 110H+106H+86H+170H+136H+141H+137H+176H+122H+115H+142H+145H+85H+173H+172H+84H+88H+105H
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit