delete all 
    fetch 3Q6O.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 160+161+159+158+167+156+157+235+241+255+251+127+252+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 103+116+102+38+139+104+75+74+70+71+72+69+118+130+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4IJ3/4IJ3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit