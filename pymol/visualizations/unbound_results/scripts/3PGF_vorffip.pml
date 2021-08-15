delete all 
    fetch 5EDU.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 437+560+829+680+830+678+496+749+505+200+203+835+682+497+279+676+495+429+557+832+568+508+499+433+498+708+709+679+697+561+198+509+677+567+748+319+556+504
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PGF/3PGF_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit