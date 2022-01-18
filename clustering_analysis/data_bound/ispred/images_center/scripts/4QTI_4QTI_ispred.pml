delete all 
    fetch 4QTI.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+89+90+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+16+260+274+264+76+74+207+71+208+20+130+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 106+107+38+39+89+88+142+40+141+79+34+35+37+36+32+33+31
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4QTI/4QTI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit