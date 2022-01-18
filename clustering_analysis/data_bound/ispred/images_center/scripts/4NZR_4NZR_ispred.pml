delete all 
    fetch 4NZR.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 99+102+103+106+107+109+110+114+116+117+118+119+120+144+158+160+161+162+163+177+178+179+180+181+321+338+340+341+384+389+390+391+392+393+394+396+397+426+429+438+439+440+441+442+444+446+447+449+452+453+456+457+462
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 464+459+467+449+460+389+429+394+430+96+390+93+445+444+446+443+468
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 116+107+162+213+212+234+181+340+341+235+237+236+226+233+230+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4NZR/4NZR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit