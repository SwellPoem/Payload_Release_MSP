! CMD Version:2
! Version 2 enables expanded acceptable characters for object names.
! If unspecified, set to 1 or set to an invalid value, Adams View assumes traditional naming requirements.
!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 300.0  &
   spacing_for_grid = 1000.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = Payload_Release
!
model attributes  &
   model_name = .Payload_Release  &
   size_of_icons = 300.0
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Payload_Release.steel  &
   adams_id = 1  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .Payload_Release.aluminum  &
   adams_id = 2  &
   density = 2.74E-06  &
   youngs_modulus = 7.1705E+04  &
   poissons_ratio = 0.33
!
material create  &
   material_name = .Payload_Release.metal_cable  &
   adams_id = 3  &
   density = 1.0E-06  &
   orthotropic_constants = 1.0E+05, 10.0, 10.0
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Payload_Release.ground.inertial  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Payload_Release.ground  &
   material_type = .Payload_Release.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .Payload_Release.ground.POINT_for_sx  &
   location = 0.0, -1300.0, -1096.187
!
point attributes  &
   point_name = .Payload_Release.ground.POINT_for_sx  &
   size_of_icons = 300.0
!
point create  &
   point_name = .Payload_Release.ground.POINT_for_dx  &
   location = 0.0, 1300.0, -1096.187
!
point attributes  &
   point_name = .Payload_Release.ground.POINT_for_dx  &
   size_of_icons = 300.0
!
point create  &
   point_name = .Payload_Release.ground.POINT_cyl  &
   location = 0.0, 0.0, -3096.187
!
point attributes  &
   point_name = .Payload_Release.ground.POINT_cyl  &
   size_of_icons = 300.0
!
point create  &
   point_name = .Payload_Release.ground.POINT_spr_sx  &
   location = 0.0, -1300.0, -1296.187
!
point attributes  &
   point_name = .Payload_Release.ground.POINT_spr_sx  &
   size_of_icons = 300.0
!
point create  &
   point_name = .Payload_Release.ground.POINT_spr_dx  &
   location = 0.0, 1300.0, -1296.187
!
point attributes  &
   point_name = .Payload_Release.ground.POINT_spr_dx  &
   size_of_icons = 300.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Payload_Release.ground  &
   name_visibility = off  &
   size_of_icons = 300.0
!
!--------------------------------- Payload_dx ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
part create rigid_body name_and_position  &
   part_name = .Payload_Release.Payload_dx  &
   adams_id = 2  &
   location = 0.0, 1300.0, 0.0  &
   orientation = 90.0d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.Payload_dx
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Payload_Release.Payload_dx.cm  &
   adams_id = 25  &
   location = -503.813, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .Payload_Release.Payload_dx.cm  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.Payload_dx.PSMAR  &
   adams_id = 26  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Payload_Release.Payload_dx.PSMAR  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.Payload_dx.tiedown_dx  &
   adams_id = 36  &
   location = 1296.187, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Payload_Release.Payload_dx.spr_dx  &
   adams_id = 71  &
   location = 1296.187, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Payload_Release.Payload_dx.MARKER_80  &
   adams_id = 80  &
   location = 1053.187, -1028.0, -529.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Payload_Release.Payload_dx  &
   mass = 90.0  &
   center_of_mass_marker = .Payload_Release.Payload_dx.cm  &
   ixx = 9.0E+07  &
   iyy = 9.0E+07  &
   izz = 9.45E+07  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Payload_Release.Payload_dx  &
   size_of_icons = 300.0
!
!--------------------------------- Payload_sx ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
part create rigid_body name_and_position  &
   part_name = .Payload_Release.Payload_sx  &
   adams_id = 3  &
   location = 0.0, -1300.0, 0.0  &
   orientation = 90.0d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.Payload_sx
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Payload_Release.Payload_sx.cm  &
   adams_id = 1  &
   location = -503.813, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .Payload_Release.Payload_sx.cm  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.Payload_sx.PSMAR  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Payload_Release.Payload_sx.PSMAR  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.Payload_sx.tiedown_sx  &
   adams_id = 33  &
   location = 1296.187, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Payload_Release.Payload_sx.spr_sx  &
   adams_id = 74  &
   location = 1296.187, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Payload_Release.Payload_sx.MARKER_79  &
   adams_id = 79  &
   location = 1053.187, 1028.0, 529.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Payload_Release.Payload_sx  &
   mass = 60.0  &
   center_of_mass_marker = .Payload_Release.Payload_sx.cm  &
   ixx = 6.0E+07  &
   iyy = 6.0E+07  &
   izz = 6.3E+07  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Payload_Release.Payload_sx  &
   size_of_icons = 300.0
!
!-------------------------------- upper_stage ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
part create rigid_body name_and_position  &
   part_name = .Payload_Release.upper_stage  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.upper_stage
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Payload_Release.upper_stage.cm  &
   adams_id = 27  &
   location = 7.9743701988E-04, -1.1220790381E-02, -1775.4039466004  &
   orientation = 176.1269268984d, 89.99999175d, 90.0000011541d
!
marker attributes  &
   marker_name = .Payload_Release.upper_stage.cm  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.upper_stage.Mfrext  &
   adams_id = 4  &
   location = 0.0, 0.0, -1296.187  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Payload_Release.upper_stage.Mfrext  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.upper_stage.Mdx  &
   adams_id = 8  &
   location = 0.0, 2200.0, -1796.187  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.Msx  &
   adams_id = 10  &
   location = 0.0, -2200.0, -1796.187  &
   orientation = 278.1301023542d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.Mfruint  &
   adams_id = 28  &
   location = 0.0, 0.0, -1396.187  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Payload_Release.upper_stage.Mfruint  &
   size_of_icons = 300.0
!
marker create  &
   marker_name = .Payload_Release.upper_stage.thrustdx  &
   adams_id = 29  &
   location = 0.0, 2200.0, -1796.187  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.thrust_mb_dx  &
   adams_id = 30  &
   location = 0.0, 2200.0, -1796.187  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.thrustsx  &
   adams_id = 31  &
   location = 0.0, -2200.0, -1796.187  &
   orientation = 278.1301023542d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.thrust_mb_sx  &
   adams_id = 32  &
   location = 0.0, -2200.0, -1796.187  &
   orientation = 278.1301023542d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.tiedown_sx  &
   adams_id = 34  &
   location = 0.0, -1300.0, -1296.187  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.tiedown_dx  &
   adams_id = 37  &
   location = 0.0, 1300.0, -1296.187  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.spr_dx  &
   adams_id = 72  &
   location = 0.0, 1300.0, -1296.187  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.spr_sx  &
   adams_id = 75  &
   location = 0.0, -1300.0, -1296.187  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Payload_Release.upper_stage.upstage_cm_new  &
   adams_id = 82  &
   location = 7.9743701988E-04, -1.1220790381E-02, -1775.4039466004  &
   orientation = 356.1269268984d, 0.0d, 0.0d
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .Payload_Release.upper_stage.FMARKER_35  &
   adams_id = 35
!
floating_marker create  &
   floating_marker_name = .Payload_Release.upper_stage.FMARKER_38  &
   adams_id = 38
!
floating_marker create  &
   floating_marker_name = .Payload_Release.upper_stage.FMARKER_73  &
   adams_id = 73
!
floating_marker create  &
   floating_marker_name = .Payload_Release.upper_stage.FMARKER_76  &
   adams_id = 76
!
part create rigid_body mass_properties  &
   part_name = .Payload_Release.upper_stage  &
   mass = 4000.0  &
   center_of_mass_marker = .Payload_Release.upper_stage.cm  &
   ixx = 1.8E+09  &
   iyy = 1.05E+09  &
   izz = 1.05E+09  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape frustum  &
   frustum_name = .Payload_Release.upper_stage.FRUSTUM_ext  &
   adams_id = 124  &
   center_marker = .Payload_Release.upper_stage.Mfrext  &
   angle_extent = 360.0  &
   length = 1800.0  &
   top_radius = 1200.0  &
   bottom_radius = 3000.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 200
!
geometry attributes  &
   geometry_name = .Payload_Release.upper_stage.FRUSTUM_ext  &
   transparency = 80
!
geometry create shape frustum  &
   frustum_name = .Payload_Release.upper_stage.FRUSTUM_int  &
   adams_id = 317  &
   center_marker = .Payload_Release.upper_stage.Mfruint  &
   angle_extent = 360.0  &
   length = 1650.0  &
   top_radius = 1100.0  &
   bottom_radius = 2890.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 200
!
geometry attributes  &
   geometry_name = .Payload_Release.upper_stage.FRUSTUM_int  &
   transparency = 80
!
geometry create shape csg  &
   csg_name = .Payload_Release.upper_stage.CSG_1  &
   adams_id = 318  &
   base_object = .Payload_Release.upper_stage.FRUSTUM_ext  &
   object = .Payload_Release.upper_stage.FRUSTUM_int  &
   type = difference
!
geometry attributes  &
   geometry_name = .Payload_Release.upper_stage.CSG_1  &
   transparency = 82
!
geometry create shape cylinder  &
   cylinder_name = .Payload_Release.upper_stage.CYLINDER_dx  &
   adams_id = 125  &
   center_marker = .Payload_Release.upper_stage.Mdx  &
   angle_extent = 360.0  &
   length = 300.0  &
   radius = 50.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .Payload_Release.upper_stage.CYLINDER_sx  &
   adams_id = 126  &
   center_marker = .Payload_Release.upper_stage.Msx  &
   angle_extent = 360.0  &
   length = 300.0  &
   radius = 50.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .Payload_Release.upper_stage  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 300.0
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Payload_Release.x_t"  &
   model_name = .Payload_Release
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID1  &
   color = Orange
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID3  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID5  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID6  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID7  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID8  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID9  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID10  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID52  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID53  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID55  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID56  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID57  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID58  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID59  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID60  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID61  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID62  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID63  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID64  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID65  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID66  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID68  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID69  &
   color = MAGENTA
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID114  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID115  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID116  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID117  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID118  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_dx.SOLID119  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID1  &
   color = Orange
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID3  &
   color = BLUE_GRAY
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID5  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID6  &
   color = CYAN
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID7  &
   color = SILVER
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID8  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID9  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID10  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID52  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID53  &
   color = MAIZE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID55  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID56  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID57  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID58  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID59  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID60  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID61  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID62  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID63  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID64  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID65  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID66  &
   color = BLUE
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID68  &
   color = YELLOW
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID69  &
   color = MAGENTA
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID114  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID115  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID116  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID117  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID118  &
   color = RED
!
geometry attributes  &
   geometry_name = .Payload_Release.Payload_sx.SOLID119  &
   color = RED
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct general_force  &
   general_force_name = .Payload_Release.tiedown_sx  &
   adams_id = 1  &
   i_marker_name = .Payload_Release.Payload_sx.tiedown_sx  &
   j_floating_marker_name = .Payload_Release.upper_stage.FMARKER_35  &
   ref_marker_name = .Payload_Release.upper_stage.tiedown_sx  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct general_force  &
   general_force_name = .Payload_Release.tiedown_dx  &
   adams_id = 2  &
   i_marker_name = .Payload_Release.Payload_dx.tiedown_dx  &
   j_floating_marker_name = .Payload_Release.upper_stage.FMARKER_38  &
   ref_marker_name = .Payload_Release.upper_stage.tiedown_dx  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Payload_Release.thrust_dx  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .Payload_Release.upper_stage.thrustdx  &
   j_marker_name = .Payload_Release.upper_stage.thrust_mb_dx  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Payload_Release.thrust_sx  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .Payload_Release.upper_stage.thrustsx  &
   j_marker_name = .Payload_Release.upper_stage.thrust_mb_sx  &
   action_only = on  &
   function = ""
!
force create direct force_vector  &
   force_vector_name = .Payload_Release.sep_spring_dx  &
   adams_id = 3  &
   i_marker_name = .Payload_Release.Payload_dx.spr_dx  &
   j_floating_marker_name = .Payload_Release.upper_stage.FMARKER_73  &
   ref_marker_name = .Payload_Release.upper_stage.spr_dx  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
force create direct force_vector  &
   force_vector_name = .Payload_Release.sep_spring_sx  &
   adams_id = 4  &
   i_marker_name = .Payload_Release.Payload_sx.spr_sx  &
   j_floating_marker_name = .Payload_Release.upper_stage.FMARKER_76  &
   ref_marker_name = .Payload_Release.upper_stage.spr_sx  &
   x_force_function = ""  &
   y_force_function = ""  &
   z_force_function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Payload_Release.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=10.0 number_of_steps=200 model_name=.Payload_Release"
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
geometry create shape force  &
   force_name = .Payload_Release.SFORCE_1_force_graphic_1  &
   adams_id = 319  &
   force_element_name = .Payload_Release.thrust_dx  &
   applied_at_marker_name = .Payload_Release.upper_stage.thrustdx
!
geometry create shape force  &
   force_name = .Payload_Release.SFORCE_2_force_graphic_1  &
   adams_id = 320  &
   force_element_name = .Payload_Release.thrust_sx  &
   applied_at_marker_name = .Payload_Release.upper_stage.thrustsx
!
geometry create shape force  &
   force_name = .Payload_Release.GFORCE_1_force_graphic_1  &
   adams_id = 381  &
   force_element_name = .Payload_Release.tiedown_sx  &
   applied_at_marker_name = .Payload_Release.Payload_sx.tiedown_sx
!
geometry create shape force  &
   force_name = .Payload_Release.GFORCE_2_force_graphic_1  &
   adams_id = 382  &
   force_element_name = .Payload_Release.tiedown_dx  &
   applied_at_marker_name = .Payload_Release.Payload_dx.tiedown_dx
!
geometry create shape force  &
   force_name = .Payload_Release.VFORCE_3_force_graphic_1  &
   adams_id = 399  &
   force_element_name = .Payload_Release.sep_spring_dx  &
   applied_at_marker_name = .Payload_Release.Payload_dx.spr_dx
!
geometry create shape force  &
   force_name = .Payload_Release.VFORCE_4_force_graphic_1  &
   adams_id = 400  &
   force_element_name = .Payload_Release.sep_spring_sx  &
   applied_at_marker_name = .Payload_Release.Payload_sx.spr_sx
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create pt2pt  &
   measure_name = .Payload_Release.payloads_distance  &
   from_point = .Payload_Release.Payload_sx.MARKER_79  &
   to_point = .Payload_Release.Payload_dx.MARKER_80  &
   coordinate_rframe = .Payload_Release.Payload_sx.cm  &
   characteristic = translational_displacement  &
   component = y_component
!
data_element attributes  &
   data_element_name = .Payload_Release.payloads_distance  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.DZ_paylsx_upperstage  &
   function = ""  &
   units = "length"
!
data_element attributes  &
   data_element_name = .Payload_Release.DZ_paylsx_upperstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.DZ_payldx_upperstage  &
   function = ""  &
   units = "length"
!
data_element attributes  &
   data_element_name = .Payload_Release.DZ_payldx_upperstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WN  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WN  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.upperstage_WZ_inerz  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.upperstage_WZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WN  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WN  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payloads_distance2  &
   function = ""  &
   units = "length"
!
data_element attributes  &
   data_element_name = .Payload_Release.payloads_distance2  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VX_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VY_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VZ_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VZ_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VY_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VX_inerz  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_X_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_X_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_Y_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_Y_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_Z_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_Z_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_Z_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_Z_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_Y_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_Y_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_X_inerz  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_X_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AX_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AY_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AZ_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AZ_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AY_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AX_inerz  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WX_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WY_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WZ_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WZ_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WZ_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WY_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WY_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WX_inerz  &
   function = ""  &
   units = "angular_velocity"
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WX_inerz  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_X_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_X_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_Y_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_Y_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_Z_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_Z_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_Z_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_Z_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_X_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_X_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_Y_upstage  &
   function = ""  &
   units = "length"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_Y_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WX_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WX_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WY_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_WZ_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_WZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WZ_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WY_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_WX_upstage  &
   function = ""  &
   units = "angular_velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_WX_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VX_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VX_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VY_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_VZ_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_VZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VZ_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VY_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_VX_upstage  &
   function = ""  &
   units = "velocity"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_VX_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AX_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AX_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AY_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_sx_AZ_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_sx_AZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AZ_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AZ_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AY_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AY_upstage  &
   color = WHITE
!
measure create function  &
   measure_name = .Payload_Release.payl_dx_AX_upstage  &
   function = ""  &
   units = "angle"  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Payload_Release.payl_dx_AX_upstage  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Payload_Release.DV_student  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.15
!
variable create  &
   variable_name = .Payload_Release.DV_tiedown_K  &
   units = "stiffness"  &
   range = 1.0E+07, 1.0E+07  &
   use_allowed_values = no  &
   real_value = 1.0E+07
!
variable create  &
   variable_name = .Payload_Release.DV_tiedown_D  &
   units = "damping"  &
   range = 1.0E+06, 1.0E+07  &
   use_allowed_values = no  &
   real_value = 1.0E+06
!
variable create  &
   variable_name = .Payload_Release.DV_release_time_span  &
   units = "time"  &
   range = 1.0E-02, 0.1  &
   use_allowed_values = no  &
   real_value = 1.0E-02
!
variable create  &
   variable_name = .Payload_Release.DV_release_time_start_dx  &
   units = "time"  &
   range = 5.0E-02, 0.15  &
   use_allowed_values = no  &
   real_value = 0.1
!
variable create  &
   variable_name = .Payload_Release.DV_spr_K  &
   units = "stiffness"  &
   range = 1.0, 5.0  &
   use_allowed_values = no  &
   real_value = 1.2
!
variable create  &
   variable_name = .Payload_Release.DV_spr_preload  &
   units = "length"  &
   range = 10.0, 50.0  &
   use_allowed_values = no  &
   real_value = 37.5
!
variable create  &
   variable_name = .Payload_Release.DV_release_time_start_sx  &
   units = "time"  &
   range = 5.0E-02, 0.15  &
   use_allowed_values = no  &
   real_value = 0.1
!
variable create  &
   variable_name = .Payload_Release.DV_thrust  &
   units = "force"  &
   range = 400.0, 600.0  &
   use_allowed_values = no  &
   real_value = 500.0
!
variable create  &
   variable_name = .Payload_Release.DV_wz  &
   units = "angular_velocity"  &
   range = 4.95, 4.99  &
   use_allowed_values = no  &
   real_value = 4.96
!
variable create  &
   variable_name = .Payload_Release.DV_payls_mass_ratio  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.5
!
variable create  &
   variable_name = .Payload_Release.DV_tiedown_Kt  &
   units = "torsion_stiffness"  &
   range = 1.0E+07, 1.0E+08  &
   use_allowed_values = no  &
   real_value = 1.0E+07
!
variable create  &
   variable_name = .Payload_Release.DV_tiedown_Dt  &
   units = "torsion_damping"  &
   range = 1.0E+06, 1.0E+07  &
   use_allowed_values = no  &
   real_value = 1.0E+06
!
!--------------------- Adams View Optimization Objective ----------------------!
!
!
optimize objective create  &
   objective_name = .Payload_Release.max_WX_dx  &
   measure_name = .Payload_Release.payl_dx_WX_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.max_WX_sx  &
   measure_name = .Payload_Release.payl_sx_WX_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.end_DZ_paylsx_upstage  &
   measure_name = .Payload_Release.DZ_paylsx_upperstage  &
   output_characteristic = last_value
!
optimize objective create  &
   objective_name = .Payload_Release.end_DZ_payldx_upstage  &
   measure_name = .Payload_Release.DZ_payldx_upperstage  &
   output_characteristic = last_value
!
optimize objective create  &
   objective_name = .Payload_Release.max_WN_dx  &
   measure_name = .Payload_Release.payl_dx_WN  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.max_WN_sx  &
   measure_name = .Payload_Release.payl_sx_WN  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.end_payls_distance  &
   measure_name = .Payload_Release.payloads_distance  &
   output_characteristic = last_value
!
optimize objective create  &
   objective_name = .Payload_Release.max_WZ_dx  &
   measure_name = .Payload_Release.payl_dx_WZ_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.max_WZ_sx  &
   measure_name = .Payload_Release.payl_sx_WZ_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.max_WY_dx  &
   measure_name = .Payload_Release.payl_dx_WY_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.max_WY_sx  &
   measure_name = .Payload_Release.payl_sx_WY_inerz  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Payload_Release.end_payls_distance2  &
   measure_name = .Payload_Release.payloads_distance2  &
   output_characteristic = last_value
!
!---------------------------- Function definitions ----------------------------!
!
!
measure modify function  &
   measure_name = .Payload_Release.DZ_paylsx_upperstage  &
   function = "DZ(.Payload_Release.Payload_sx.tiedown_sx, .Payload_Release.upper_stage.tiedown_sx)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_DZ_paylsx_upperstage_1  &
   measure_name = .Payload_Release.DZ_paylsx_upperstage
!
measure modify function  &
   measure_name = .Payload_Release.DZ_payldx_upperstage  &
   function = "DZ(.Payload_Release.Payload_dx.tiedown_dx, .Payload_Release.upper_stage.tiedown_dx)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_DZ_payldx_upperstage_1  &
   measure_name = .Payload_Release.DZ_payldx_upperstage
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WN  &
   function = "SQRT(.Payload_Release.payl_dx_WX_inerz**2+.Payload_Release.payl_dx_WY_inerz**2)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_dx_WN_1  &
   measure_name = .Payload_Release.payl_dx_WN
!
measure modify function  &
   measure_name = .Payload_Release.upperstage_WZ_inerz  &
   function = "WZ(.Payload_Release.upper_stage.cm)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WN  &
   function = "SQRT(.Payload_Release.payl_sx_WX_inerz**2+.Payload_Release.payl_sx_WY_inerz**2)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_sx_WN_1  &
   measure_name = .Payload_Release.payl_sx_WN
!
measure modify function  &
   measure_name = .Payload_Release.payloads_distance2  &
   function = "DY(.Payload_Release.Payload_dx.cm, .Payload_Release.Payload_sx.cm, .Payload_Release.Payload_sx.cm)-2600+180"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payloads_distance2_1  &
   measure_name = .Payload_Release.payloads_distance2
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VX_inerz  &
   function = "VX(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VY_inerz  &
   function = "VY(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VZ_inerz  &
   function = "VZ(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VZ_inerz  &
   function = "VZ(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VY_inerz  &
   function = "VY(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VX_inerz  &
   function = "VX(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_X_inerz  &
   function = "DX(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_Y_inerz  &
   function = "DY(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_Z_inerz  &
   function = "DZ(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_Z_inerz  &
   function = "DZ(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_Y_inerz  &
   function = "DY(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_X_inerz  &
   function = "DX(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AX_inerz  &
   function = "AX(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AY_inerz  &
   function = "AY(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AZ_inerz  &
   function = "AZ(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AZ_inerz  &
   function = "AZ(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AY_inerz  &
   function = "AY(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AX_inerz  &
   function = "AX(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WX_inerz  &
   function = "WX(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_sx_WX_inerz_1  &
   measure_name = .Payload_Release.payl_sx_WX_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WY_inerz  &
   function = "WY(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_sx_WY_inerz_1  &
   measure_name = .Payload_Release.payl_sx_WY_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WZ_inerz  &
   function = "WZ(.Payload_Release.Payload_sx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_sx_WZ_inerz_1  &
   measure_name = .Payload_Release.payl_sx_WZ_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WZ_inerz  &
   function = "WZ(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_dx_WZ_inerz_1  &
   measure_name = .Payload_Release.payl_dx_WZ_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WY_inerz  &
   function = "WY(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_dx_WY_inerz_1  &
   measure_name = .Payload_Release.payl_dx_WY_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WX_inerz  &
   function = "WX(.Payload_Release.Payload_dx.cm, .Payload_Release.ground.inertial, .Payload_Release.ground.inertial)"
!
measure_display create  &
   mea_display = .Payload_Release._Payload_Release_payl_dx_WX_inerz_1  &
   measure_name = .Payload_Release.payl_dx_WX_inerz
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_X_upstage  &
   function = "DX(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_Y_upstage  &
   function = "DY(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_Z_upstage  &
   function = "DZ(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_Z_upstage  &
   function = "DZ(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_X_upstage  &
   function = "DX(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_Y_upstage  &
   function = "DY(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WX_upstage  &
   function = "WX(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WY_upstage  &
   function = "WY(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_WZ_upstage  &
   function = "WZ(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WZ_upstage  &
   function = "WZ(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WY_upstage  &
   function = "WY(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_WX_upstage  &
   function = "WX(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VX_upstage  &
   function = "VX(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VY_upstage  &
   function = "VY(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_VZ_upstage  &
   function = "VZ(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VZ_upstage  &
   function = "VZ(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VY_upstage  &
   function = "VY(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_VX_upstage  &
   function = "VX(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AX_upstage  &
   function = "AX(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AY_upstage  &
   function = "AY(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_sx_AZ_upstage  &
   function = "AZ(.Payload_Release.Payload_sx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AZ_upstage  &
   function = "AZ(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AY_upstage  &
   function = "AY(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
measure modify function  &
   measure_name = .Payload_Release.payl_dx_AX_upstage  &
   function = "AX(.Payload_Release.Payload_dx.cm, .Payload_Release.upper_stage.upstage_cm_new)"
!
force modify direct single_component_force  &
   single_component_force_name = .Payload_Release.thrust_dx  &
   function = ".Payload_Release.DV_thrust+IF(.Payload_Release.upperstage_WZ_inerz+.Payload_Release.DV_wz:-.Payload_Release.DV_thrust,0,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .Payload_Release.thrust_sx  &
   function = ".Payload_Release.DV_thrust+IF(.Payload_Release.upperstage_WZ_inerz+.Payload_Release.DV_wz:-.Payload_Release.DV_thrust,0,0)"
!
force modify direct force_vector  &
   force_vector_name = .Payload_Release.sep_spring_dx  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "IF(DZ(.Payload_Release.Payload_dx.spr_dx,.Payload_Release.upper_stage.spr_dx,.Payload_Release.upper_stage.spr_dx)-.Payload_Release.DV_spr_preload:",  &
              "-.Payload_Release.DV_spr_K*.Payload_Release.DV_payls_mass_ratio*(DZ(.Payload_Release.Payload_dx.spr_dx,.Payload_Release.upper_stage.spr_dx,.Payload_Release.upper_stage.spr_dx)-.Payload_Release.DV_spr_preload),0,0)"
!
force modify direct force_vector  &
   force_vector_name = .Payload_Release.sep_spring_sx  &
   x_force_function = "0"  &
   y_force_function = "0"  &
   z_force_function = "IF(DZ(.Payload_Release.Payload_sx.spr_sx,.Payload_Release.upper_stage.spr_sx,.Payload_Release.upper_stage.spr_sx)-.Payload_Release.DV_spr_preload:",  &
              "-.Payload_Release.DV_spr_K*(DZ(.Payload_Release.Payload_sx.spr_sx,.Payload_Release.upper_stage.spr_sx,.Payload_Release.upper_stage.spr_sx)-.Payload_Release.DV_spr_preload),0,0)"
!
force modify direct general_force  &
   general_force_name = .Payload_Release.tiedown_sx  &
   x_force_function = "(-.Payload_Release.DV_tiedown_K*DX(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_D*VX(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"  &
   y_force_function = "(-.Payload_Release.DV_tiedown_K*DY(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_D*VY(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"  &
   z_force_function = "(-.Payload_Release.DV_tiedown_K*DZ(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_D*VZ(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"  &
   x_torque_function = "(-.Payload_Release.DV_tiedown_Kt*AX(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_Dt*WX(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"  &
   y_torque_function = "(-.Payload_Release.DV_tiedown_Kt*AY(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_Dt*WY(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"  &
   z_torque_function = "(-.Payload_Release.DV_tiedown_Kt*AZ(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx)",  &
              "-.Payload_Release.DV_tiedown_Dt*WZ(.Payload_Release.Payload_sx.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx,.Payload_Release.upper_stage.tiedown_sx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_sx,1,.Payload_Release.DV_release_time_start_sx+.Payload_Release.DV_release_time_span,0)"
!
force modify direct general_force  &
   general_force_name = .Payload_Release.tiedown_dx  &
   x_force_function = "(-.Payload_Release.DV_tiedown_K*.Payload_Release.DV_payls_mass_ratio*DX(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_D*.Payload_Release.DV_payls_mass_ratio*VX(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"  &
   y_force_function = "(-.Payload_Release.DV_tiedown_K*.Payload_Release.DV_payls_mass_ratio*DY(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_D*.Payload_Release.DV_payls_mass_ratio*VY(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"  &
   z_force_function = "(-.Payload_Release.DV_tiedown_K*.Payload_Release.DV_payls_mass_ratio*DZ(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_D*.Payload_Release.DV_payls_mass_ratio*VZ(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"  &
   x_torque_function = "(-.Payload_Release.DV_tiedown_Kt*.Payload_Release.DV_payls_mass_ratio*AX(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_Dt*.Payload_Release.DV_payls_mass_ratio*WX(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"  &
   y_torque_function = "(-.Payload_Release.DV_tiedown_Kt*.Payload_Release.DV_payls_mass_ratio*AY(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_Dt*.Payload_Release.DV_payls_mass_ratio*WY(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"  &
   z_torque_function = "(-.Payload_Release.DV_tiedown_Kt*.Payload_Release.DV_payls_mass_ratio*AZ(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx)",  &
              "-.Payload_Release.DV_tiedown_Dt*.Payload_Release.DV_payls_mass_ratio*WZ(.Payload_Release.Payload_dx.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx,.Payload_Release.upper_stage.tiedown_dx))",  &
              "*STEP(time,.Payload_Release.DV_release_time_start_dx,1,.Payload_Release.DV_release_time_start_dx+.Payload_Release.DV_release_time_span,0)"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
material modify  &
   material_name = .Payload_Release.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
material modify  &
   material_name = .Payload_Release.aluminum  &
   density = (2740.0(kg/meter**3))  &
   youngs_modulus = (7.1705E+10(Newton/meter**2))
!
material modify  &
   material_name = .Payload_Release.metal_cable  &
   density = (1000.0(kg/meter**3))  &
   orthotropic_constants =   &
      (1.0E+11(Newton/meter**2)),  &
      (1.0E+07(Newton/meter**2)),  &
      (1.0E+07(Newton/meter**2))
!
marker modify  &
   marker_name = .Payload_Release.Payload_dx.cm  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 1600}, .Payload_Release.ground.POINT_for_dx))  &
   relative_to = .Payload_Release.Payload_dx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.Payload_dx.tiedown_dx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_dx))  &
   relative_to = .Payload_Release.Payload_dx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
part modify rigid_body mass_properties  &
   part_name = .Payload_Release.Payload_dx  &
   mass = (400.0 * .Payload_Release.DV_student * 1.5)  &
   ixx = (4.0E+08 * .Payload_Release.DV_student * 1.5)  &
   iyy = (4.0E+08 * .Payload_Release.DV_student * 1.5)  &
   izz = (4.2E+08 * .Payload_Release.DV_student * 1.5)
!
marker modify  &
   marker_name = .Payload_Release.Payload_dx.spr_dx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_dx))  &
   relative_to = .Payload_Release.Payload_dx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.Payload_sx.cm  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 1600}, .Payload_Release.ground.POINT_for_sx))  &
   relative_to = .Payload_Release.Payload_sx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.Payload_sx.tiedown_sx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_sx))  &
   relative_to = .Payload_Release.Payload_sx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
part modify rigid_body mass_properties  &
   part_name = .Payload_Release.Payload_sx  &
   mass = (400.0 * .Payload_Release.DV_student)  &
   ixx = (4.0E+08 * .Payload_Release.DV_student)  &
   iyy = (4.0E+08 * .Payload_Release.DV_student)  &
   izz = (4.2E+08 * .Payload_Release.DV_student)
!
marker modify  &
   marker_name = .Payload_Release.Payload_sx.spr_sx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_sx))  &
   relative_to = .Payload_Release.Payload_sx
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.upper_stage.tiedown_sx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_sx))  &
   relative_to = .Payload_Release.upper_stage
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.upper_stage.tiedown_dx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_dx))  &
   relative_to = .Payload_Release.upper_stage
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.upper_stage.spr_dx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_dx))  &
   relative_to = .Payload_Release.upper_stage
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
marker modify  &
   marker_name = .Payload_Release.upper_stage.spr_sx  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Payload_Release.ground.POINT_spr_sx))  &
   relative_to = .Payload_Release.upper_stage
!
defaults coordinate_system  &
   default_coordinate_system = .Payload_Release.ground
!
geometry modify shape force  &
   force_name = .Payload_Release.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.thrust_dx.i)
!
geometry modify shape force  &
   force_name = .Payload_Release.SFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.thrust_sx.i)
!
geometry modify shape force  &
   force_name = .Payload_Release.GFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.tiedown_sx.i)
!
geometry modify shape force  &
   force_name = .Payload_Release.GFORCE_2_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.tiedown_dx.i)
!
geometry modify shape force  &
   force_name = .Payload_Release.VFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.sep_spring_dx.i)
!
geometry modify shape force  &
   force_name = .Payload_Release.VFORCE_4_force_graphic_1  &
   applied_at_marker_name = (.Payload_Release.sep_spring_sx.i)
!
model display  &
   model_name = Payload_Release
