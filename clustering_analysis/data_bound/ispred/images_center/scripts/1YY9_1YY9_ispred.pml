delete all 
    fetch 1YY9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 349+353+384+408+409+411+412+417+418+438+440+441+443+465+467+468+469+471+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 539+513+502+503+517+306+514+612+613+602+576+584+545+544+597+569+594+543+609+556+542+595+294+257+519+518+255+244+520+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 163+88+217+165+150+87+190+91+191
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1YY9/1YY9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit