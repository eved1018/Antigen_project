delete all 
    fetch 1ERN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+59+60+61+62+87+88+89+91+92+93+94+95+149+150+152+153+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+117+128+131+149+150+151+152+153+201+202+203+204+208+216+32
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 45+60+61+62+77+87+88+91+92+93+94+95
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4Y5V/4Y5V_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit