delete all 
    fetch 3LAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 211+212+291+292+374+377+380+381+403+404+406+407+408+409+410+468+529+532+86+88+89+90+91+92+93+94+95
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 136+137+138+139+140+141+25+52+53+61+71
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1HYS/1HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit