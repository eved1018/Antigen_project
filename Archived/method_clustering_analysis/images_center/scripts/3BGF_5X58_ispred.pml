delete all 
    fetch 5X58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['501+474+1065+531+470+378+1069+380+1063+467+867+1061+1068+417+879+469+878+504+475+506+876+1066+1070+468+1062+379+471+869+505+502+377+875+472+416+866+1067+1064+476+503+473+874+877+865']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3BGF/3BGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit