delete all 
    fetch 5EDU.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 567+558+561+560+562+748+749+784+785+568+557+684+685+682+496+680
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 664+517+716+765+821+835+830+833+832+828+829+805+811+810+812+806+807+725+721+697+720+642
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit