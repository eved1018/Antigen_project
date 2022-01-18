delete all 
    fetch 4XMP.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+102+103+105+106+109+124+198+276+278+279+280+281+282+283+365+366+367+368+371+426+427+428+429+430+431+455+456+457+458+459+460+465+466+467+469+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+459+366+368+352+280+281+282+457+278
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 300+201+200+202+61+75+60+71+73+199+198+72+80+221+223+425+430+434+379+122+325+326
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4XMP/4XMP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit