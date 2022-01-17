delete all 
    fetch 5EDU.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 642+664+697+716+720+721+725+765+805+806+807+810+811+812+821+828+829+830+832+833+835
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 496+517+557+558+560+561+562+567+568+680+682+684+685+748+749+784+785
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit