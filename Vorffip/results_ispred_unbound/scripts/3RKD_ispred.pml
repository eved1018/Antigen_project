delete all 
    fetch 2ZZQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 551+134+229+564+563+554+566+562+503+508+225+528+552+513+124+220+224+133+504+531+522+243+305+533+135+228+517+460+515+523+565+506+543+358+121+120
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3RKD/3RKD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit