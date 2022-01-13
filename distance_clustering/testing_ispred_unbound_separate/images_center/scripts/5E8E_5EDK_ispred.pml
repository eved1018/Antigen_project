delete all 
    fetch 5EDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 10+11+12+122+129+13+130+131+132+15+18+21+22+24+28+31+33+34+54+9+90+96+98
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 292+293+294+295+324+375+376+392+395+404+406+408+476+478
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit