delete all 
    fetch 3BY2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['259+470+257+258+256+467+260+448+261+230+469+463+466+506+468+232+450+462+464+451+390+262+231+255+388+465+503']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5KW9/5KW9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit