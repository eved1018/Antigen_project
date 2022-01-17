delete all 
    fetch 5EDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+129+28+13+12+10+11+9+98+54+96+90+34+21+122+22+132+33+31+130+131+18+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 476+375+406+404+376+395+408+392+294+478+295+292+324+293
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit