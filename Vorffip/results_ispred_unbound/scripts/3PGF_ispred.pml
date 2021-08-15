delete all 
    fetch 5EDU.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 720+682+749+561+832+557+830+560+680+642+835+810+829+716+721+806+697+805+748+685+567+725+784+517+833+785+684+496+664+558+828+811+568+765+821+807+812+562
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit