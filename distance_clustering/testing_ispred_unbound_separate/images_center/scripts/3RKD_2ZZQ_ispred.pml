delete all 
    fetch 2ZZQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 120+121+124+133+134+135+220+224+225+228+229+243+305
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 358+460+503+504+506+508+513+515+517+522+523+528+531+533+543+551+552+554+562+563+564+565+566
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3RKD/3RKD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit