delete all 
    fetch 3LAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 529+89+407+406+374+88+404+410+377+403+94+95+380+381+92+408+409+93+91+90+532+292+291+468
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 139+138+61+71+212+211+141+140+86+52+53+136+137+25
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1HYS/1HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit