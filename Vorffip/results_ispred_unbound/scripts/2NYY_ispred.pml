delete all 
    fetch 3BTA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1004+503+688+394+646+502+684+955+601+483+647+531+762+1273+283+960+1149+576+869+284+1216+381+1003+1272+685+506+571+764+766+598+957+687+596+1006+645+767+533+648+686+170+1005+761+1129+1212+577+1215+486
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit