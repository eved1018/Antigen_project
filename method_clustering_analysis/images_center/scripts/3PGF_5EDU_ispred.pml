delete all 
    fetch 5EDU.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['831+826+559+561+562+563+833+834+556+830+494+829+495+555+696+691+827+571+554+558+699+726+824+496+564+560+697+557+835+828+729+698+692+832+565']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit