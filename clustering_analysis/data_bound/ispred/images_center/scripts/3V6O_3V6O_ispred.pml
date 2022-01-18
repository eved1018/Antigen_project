delete all 
    fetch 3V6O.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 465+466+467+468+469+470+471+480+481+482+484+502+504
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 604+606+549+602+576+601+546+630+551+632+578+555
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 470+471+505+473+472+506+502+476+474+528+617+616+568+495+468+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3V6O/3V6O_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit