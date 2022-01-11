delete all 
    fetch 4GSX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['399+19+400+99+210+108+266+109+102+211+208+13+264+316+105+17+106+401+14+15+398+215+209+107+103+263+267+397+195+104+16+291+100+396+212+18+265+196+101']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4AL8/4AL8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit