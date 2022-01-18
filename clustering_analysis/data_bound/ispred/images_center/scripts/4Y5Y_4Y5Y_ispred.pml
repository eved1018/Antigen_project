delete all 
    fetch 4Y5Y.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+59+60+62+88+91+92+93+94+95+114+117+149+150+152+153+200+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+129+216+171+209+169+168+122+126+125+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+117+75+74+70+206+73+72+208+68+82+69+79+93+78+50+52
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4Y5Y/4Y5Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit