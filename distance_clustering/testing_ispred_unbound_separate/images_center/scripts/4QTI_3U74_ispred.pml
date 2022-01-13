delete all 
    fetch 3U74.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 10+103+11+12+129+13+140+29+32+34+36+37+38+39+4+40+41+42+66+7+71+8+9+91
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 198+203+208+277+278+279+281
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4QTI/4QTI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit