delete all 
    fetch 4UV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 353+355+356+357+358+359+360+361+362
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 510+513+507+502+305+503+517+501+306+610+612+575+584+545+609+595+243+519+518+297+485+292+495+522+244+508+483+253+521
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 461+407+406+410+411+358+359+357+356+409
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4UV7/4UV7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit