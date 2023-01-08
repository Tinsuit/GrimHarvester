GDPC                                                                                <   res://.import/grim.png-03e0b577d27904ed1f8f5cb71e1f7654.stex�_      �       <����gi������H   res://.import/ground-leaves.png-ea115735e43319de059b8b2b37220bb3.stex   `c      �       X�g''Z����MUd@   res://.import/ground.png-ff2fa17296f0f5e5aa9857819bd9fef8.stex  �f      |       ����؅g�p-I���*�<   res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stexj      �       }�F��G
�C��^�<   res://.import/tree.png-e87203ca34ea34f0ea35ddc8c11a82e9.stex�m      �      c �O>壿�м2?o   res://Forest.tscn   P      EE      �Vh�{B�o$�L���j-   res://Spirit.tscn   �K      �      �'�y./4�o��<C   res://default_env.tres  pP      �       um�`�N��<*ỳ�8   res://project.binary�t      N      #d�f�YOi���}�s    res://scripts/Forest.gd.remap    s      )       �A��.h�F7�<�f�   res://scripts/Forest.gdc Q      H      R���ת������$   res://scripts/PlayerGrim.gd.remap   0s      -       ����j^�x�Q���7   res://scripts/PlayerGrim.gdcpS             �Kk'�`,��413�    res://scripts/Spirit.gd.remap   `s      )       ����|�#Ժ��   res://scripts/Spirit.gdc�X      K      ��0���s�@N�w    res://textures/grim.png.import  �`      �      �7J��}r��i��Ŭ(   res://textures/ground-leaves.png.import  d      �      L�F�?��+�K�|&    res://textures/ground.png.importPg      �      �H�����%'����7�   res://textures/icon.png �s      �       �7\f����`m?'��    res://textures/icon.png.import  �j      �      �M�w������U�T�    res://textures/tree.png.import  Pp      �      ?��O��{H!o���    [gd_scene load_steps=11 format=2]

[ext_resource path="res://scripts/PlayerGrim.gd" type="Script" id=1]
[ext_resource path="res://Spirit.tscn" type="PackedScene" id=2]
[ext_resource path="res://scripts/Forest.gd" type="Script" id=3]
[ext_resource path="res://textures/ground-leaves.png" type="Texture" id=4]
[ext_resource path="res://textures/ground.png" type="Texture" id=5]
[ext_resource path="res://textures/tree.png" type="Texture" id=6]
[ext_resource path="res://textures/grim.png" type="Texture" id=7]

[sub_resource type="TileSet" id=3]
0/name = "ground.png 0"
0/texture = ExtResource( 5 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 16, 16 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "ground-leaves.png 1"
1/texture = ExtResource( 4 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 16, 17 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0

[sub_resource type="CapsuleShape2D" id=4]
radius = 8.0
height = 8.0

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 8.5, 4.5 )

[node name="Forest" type="Node2D"]
script = ExtResource( 3 )

[node name="Grass" type="TileMap" parent="."]
tile_set = SubResource( 3 )
cell_size = Vector2( 16, 16 )
cell_custom_transform = Transform2D( 16, 0, 0, 16, 0, 0 )
format = 1
tile_data = PoolIntArray( -262136, 1, 0, -262135, 1, 0, -262134, 1, 0, -196604, 1, 0, -196603, 1, 0, -196602, 1, 0, -196601, 1, 0, -196600, 1, 0, -196599, 1, 0, -196598, 1, 0, -196597, 1, 0, -196596, 1, 0, -196595, 1, 0, -196594, 1, 0, -196593, 1, 0, -131070, 1, 0, -131069, 1, 0, -131068, 1, 0, -131067, 1, 0, -131066, 1, 0, -131065, 1, 0, -131064, 1, 0, -131061, 1, 0, -131060, 1, 0, -2, 1, 0, -1, 1, 0, -65536, 0, 0, -65535, 1, 0, -65534, 1, 0, -65533, 1, 0, -65532, 1, 0, -65531, 1, 0, -65529, 1, 0, -65528, 1, 0, -65527, 1, 0, -65526, 0, 0, -65525, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65521, 0, 0, -65520, 0, 0, -65509, 1, 0, -65508, 1, 0, -65507, 1, 0, -65506, 1, 0, 65533, 1, 0, 65534, 1, 0, 65535, 1, 0, 0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 1, 0, 4, 1, 0, 5, 1, 0, 6, 1, 0, 7, 1, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 1, 0, 16, 1, 0, 17, 1, 0, 18, 1, 0, 19, 1, 0, 20, 1, 0, 21, 1, 0, 22, 1, 0, 23, 1, 0, 24, 1, 0, 25, 1, 0, 26, 1, 0, 27, 1, 0, 28, 1, 0, 29, 0, 0, 30, 0, 0, 131067, 1, 0, 131068, 1, 0, 131069, 1, 0, 131070, 1, 0, 131071, 1, 0, 65536, 1, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65542, 0, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 0, 0, 65547, 0, 0, 65548, 0, 0, 65549, 0, 0, 65550, 1, 0, 65551, 1, 0, 65552, 1, 0, 65553, 1, 0, 65554, 1, 0, 65555, 1, 0, 65556, 1, 0, 65557, 1, 0, 65558, 1, 0, 65559, 1, 0, 65560, 1, 0, 65561, 0, 0, 65562, 0, 0, 65563, 0, 0, 65564, 0, 0, 65565, 0, 0, 65566, 0, 0, 196602, 1, 0, 131072, 1, 0, 131073, 0, 0, 131074, 0, 0, 131075, 0, 0, 131076, 0, 0, 131077, 0, 0, 131078, 0, 0, 131079, 0, 0, 131080, 0, 0, 131081, 0, 0, 131082, 0, 0, 131083, 0, 0, 131084, 0, 0, 131085, 0, 0, 131086, 0, 0, 131087, 0, 0, 131088, 0, 0, 131089, 0, 0, 131090, 0, 0, 131091, 0, 0, 131092, 0, 0, 131093, 0, 0, 131094, 0, 0, 131095, 0, 0, 131096, 0, 0, 131097, 0, 0, 131098, 0, 0, 131099, 0, 0, 131100, 0, 0, 131101, 0, 0, 131102, 0, 0, 196608, 1, 0, 196609, 0, 0, 196610, 0, 0, 196611, 0, 0, 196612, 0, 0, 196613, 1, 0, 196614, 1, 0, 196615, 1, 0, 196616, 1, 0, 196617, 1, 0, 196618, 1, 0, 196619, 1, 0, 196620, 1, 0, 196621, 1, 0, 196622, 1, 0, 196623, 1, 0, 196624, 1, 0, 196625, 1, 0, 196626, 1, 0, 196627, 0, 0, 196628, 0, 0, 196629, 0, 0, 196630, 0, 0, 196631, 0, 0, 196632, 0, 0, 196633, 0, 0, 196634, 0, 0, 196635, 0, 0, 196636, 0, 0, 196637, 0, 0, 262144, 0, 0, 262145, 0, 0, 262146, 1, 0, 262147, 1, 0, 262148, 1, 0, 262149, 0, 0, 262150, 1, 0, 262151, 1, 0, 262152, 0, 0, 262153, 0, 0, 262154, 1, 0, 262155, 1, 0, 262156, 1, 0, 262157, 1, 0, 262158, 1, 0, 262159, 1, 0, 262160, 1, 0, 262161, 1, 0, 262162, 1, 0, 262163, 1, 0, 262164, 0, 0, 262165, 0, 0, 262166, 0, 0, 262167, 0, 0, 262168, 0, 0, 262169, 0, 0, 262170, 0, 0, 262171, 0, 0, 262172, 0, 0, 262173, 0, 0, 393214, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327686, 0, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 1, 0, 327696, 1, 0, 327697, 1, 0, 327698, 1, 0, 327699, 1, 0, 327700, 1, 0, 327701, 1, 0, 327702, 1, 0, 327703, 1, 0, 327704, 1, 0, 327705, 1, 0, 327706, 1, 0, 327707, 0, 0, 327708, 0, 0, 327709, 0, 0, 327710, 0, 0, 327711, 0, 0, 327712, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 1, 0, 393225, 1, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 393234, 0, 0, 393235, 0, 0, 393236, 0, 0, 393237, 0, 0, 393238, 0, 0, 393239, 0, 0, 393240, 0, 0, 393241, 0, 0, 393242, 0, 0, 393243, 0, 0, 393244, 0, 0, 393245, 0, 0, 393246, 0, 0, 393247, 0, 0, 524283, 1, 0, 524284, 1, 0, 524285, 1, 0, 524286, 0, 0, 524287, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 1, 0, 458758, 1, 0, 458759, 1, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 1, 0, 458766, 1, 0, 458767, 1, 0, 458768, 0, 0, 458769, 0, 0, 458770, 0, 0, 458771, 0, 0, 458772, 0, 0, 458773, 0, 0, 458774, 0, 0, 458775, 0, 0, 458776, 0, 0, 458777, 0, 0, 458778, 0, 0, 458779, 0, 0, 458780, 0, 0, 458781, 0, 0, 458782, 0, 0, 458783, 0, 0, 589817, 1, 0, 589818, 1, 0, 589819, 1, 0, 589820, 0, 0, 589821, 0, 0, 589822, 1, 0, 589823, 1, 0, 524288, 1, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 1, 0, 524300, 1, 0, 524301, 1, 0, 524302, 1, 0, 524303, 1, 0, 524304, 1, 0, 524305, 1, 0, 524306, 1, 0, 524307, 1, 0, 524308, 0, 0, 524309, 0, 0, 524310, 0, 0, 524311, 0, 0, 524312, 1, 0, 524313, 1, 0, 524314, 1, 0, 524315, 1, 0, 524316, 0, 0, 524317, 0, 0, 655357, 0, 0, 655358, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 1, 0, 589835, 1, 0, 589836, 1, 0, 589837, 1, 0, 589838, 1, 0, 589839, 1, 0, 589840, 1, 0, 589841, 1, 0, 589842, 1, 0, 589843, 1, 0, 589844, 1, 0, 589845, 1, 0, 589846, 0, 0, 589847, 1, 0, 589848, 1, 0, 589849, 1, 0, 589850, 0, 0, 589851, 0, 0, 589852, 1, 0, 589853, 1, 0, 589854, 1, 0, 589855, 1, 0, 589856, 1, 0, 589857, 1, 0, 720894, 0, 0, 720895, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 1, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 0, 655366, 0, 0, 655367, 0, 0, 655368, 0, 0, 655369, 1, 0, 655370, 0, 0, 655371, 1, 0, 655372, 1, 0, 655373, 1, 0, 655374, 1, 0, 655375, 1, 0, 655376, 1, 0, 655377, 1, 0, 655378, 1, 0, 655379, 1, 0, 655380, 1, 0, 655381, 1, 0, 655382, 0, 0, 655383, 0, 0, 655384, 0, 0, 655385, 1, 0, 655386, 1, 0, 655387, 1, 0, 655388, 0, 0, 655389, 0, 0, 655390, 0, 0, 655391, 1, 0, 786428, 0, 0, 786429, 0, 0, 786430, 0, 0, 786431, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 1, 0, 720908, 1, 0, 720909, 1, 0, 720910, 1, 0, 720911, 1, 0, 720912, 1, 0, 720913, 1, 0, 720914, 1, 0, 720915, 1, 0, 720916, 1, 0, 720917, 1, 0, 720918, 1, 0, 720919, 1, 0, 720920, 1, 0, 720921, 0, 0, 720922, 0, 0, 720923, 0, 0, 720924, 0, 0, 720925, 1, 0, 720926, 1, 0, 851963, 0, 0, 851964, 0, 0, 851965, 0, 0, 851966, 0, 0, 851967, 0, 0, 786432, 0, 0, 786433, 0, 0, 786434, 0, 0, 786435, 0, 0, 786436, 0, 0, 786437, 0, 0, 786438, 0, 0, 786439, 1, 0, 786440, 1, 0, 786441, 1, 0, 786442, 1, 0, 786443, 1, 0, 786444, 1, 0, 786445, 1, 0, 786446, 1, 0, 786447, 1, 0, 786448, 1, 0, 786449, 1, 0, 786450, 1, 0, 786451, 1, 0, 786452, 1, 0, 786453, 1, 0, 786454, 0, 0, 786455, 0, 0, 786456, 0, 0, 786457, 0, 0, 786458, 0, 0, 786459, 1, 0, 786460, 1, 0, 786461, 0, 0, 786462, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 1, 0, 851972, 1, 0, 851973, 1, 0, 851974, 1, 0, 851975, 1, 0, 851976, 1, 0, 851977, 1, 0, 851978, 1, 0, 851979, 1, 0, 851980, 1, 0, 851981, 1, 0, 851982, 1, 0, 851983, 1, 0, 851984, 1, 0, 851985, 1, 0, 851986, 1, 0, 851987, 1, 0, 851988, 1, 0, 851989, 1, 0, 851990, 1, 0, 851991, 1, 0, 851992, 1, 0, 851993, 1, 0, 851994, 1, 0, 851995, 0, 0, 851996, 0, 0, 851997, 0, 0, 851998, 0, 0, 983038, 1, 0, 983039, 1, 0, 917504, 1, 0, 917505, 1, 0, 917506, 1, 0, 917507, 1, 0, 917508, 1, 0, 917509, 1, 0, 917510, 1, 0, 917511, 1, 0, 917512, 1, 0, 917513, 1, 0, 917514, 1, 0, 917515, 1, 0, 917516, 1, 0, 917517, 1, 0, 917518, 1, 0, 917519, 0, 0, 917520, 0, 0, 917521, 1, 0, 917522, 1, 0, 917523, 1, 0, 917524, 1, 0, 917525, 1, 0, 917526, 1, 0, 917527, 1, 0, 917528, 1, 0, 917529, 0, 0, 917530, 0, 0, 917531, 0, 0, 917532, 0, 0, 917533, 0, 0, 917534, 0, 0, 917537, 1, 0, 917538, 1, 0, 917539, 1, 0, 917540, 1, 0, 983040, 1, 0, 983041, 1, 0, 983042, 1, 0, 983043, 1, 0, 983044, 1, 0, 983045, 1, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983053, 0, 0, 983054, 1, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 983058, 0, 0, 983059, 0, 0, 983060, 0, 0, 983061, 1, 0, 983062, 0, 0, 983063, 0, 0, 983064, 0, 0, 983065, 0, 0, 983066, 0, 0, 983067, 0, 0, 983068, 0, 0, 983069, 0, 0, 983070, 1, 0, 983071, 1, 0, 983072, 1, 0, 983073, 1, 0, 983074, 1, 0, 1114111, 1, 0, 1048576, 1, 0, 1048577, 1, 0, 1048578, 1, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048589, 0, 0, 1048590, 1, 0, 1048591, 1, 0, 1048592, 0, 0, 1048593, 0, 0, 1048594, 0, 0, 1048595, 0, 0, 1048596, 0, 0, 1048597, 0, 0, 1048598, 0, 0, 1048599, 0, 0, 1048600, 1, 0, 1048601, 1, 0, 1048602, 1, 0, 1048603, 1, 0, 1048604, 1, 0, 1048605, 1, 0, 1048606, 1, 0, 1048607, 1, 0, 1114115, 1, 0, 1114116, 1, 0, 1114117, 1, 0, 1114118, 0, 0, 1114119, 0, 0, 1114120, 0, 0, 1114121, 0, 0, 1114122, 1, 0, 1114123, 1, 0, 1114124, 1, 0, 1114125, 1, 0, 1114126, 0, 0, 1114127, 0, 0, 1114128, 0, 0, 1114129, 1, 0, 1114130, 1, 0, 1114131, 1, 0, 1114132, 1, 0, 1114133, 1, 0, 1114134, 1, 0, 1114135, 1, 0, 1114136, 1, 0, 1114137, 1, 0, 1114138, 1, 0, 1114139, 1, 0, 1114140, 1, 0, 1114141, 1, 0, 1179653, 1, 0, 1179654, 1, 0, 1179655, 1, 0, 1179656, 1, 0, 1179657, 1, 0, 1179658, 1, 0, 1179659, 1, 0, 1179660, 1, 0, 1179661, 1, 0, 1179662, 1, 0, 1179663, 1, 0, 1179664, 1, 0, 1179665, 1, 0, 1179666, 1, 0, 1179667, 1, 0, 1179668, 1, 0, 1179675, 1, 0, 1179676, 1, 0, 1245186, 1, 0, 1245187, 1, 0, 1245188, 1, 0, 1245189, 1, 0, 1245190, 1, 0, 1245191, 1, 0, 1245192, 1, 0, 1245193, 1, 0, 1245200, 1, 0, 1245201, 1, 0, 1245202, 1, 0, 1245203, 1, 0, 1245204, 1, 0, 1245205, 1, 0, 1245206, 1, 0, 1245207, 1, 0, 1245208, 1, 0, 1245209, 1, 0, 1245210, 1, 0, 1245211, 1, 0, 1245212, 1, 0, 1245213, 1, 0, 1310743, 1, 0, 1310744, 1, 0, 1310748, 1, 0, 1376278, 1, 0, 1376279, 1, 0, 1376280, 1, 0, 1376281, 1, 0, 1376282, 1, 0, 1376283, 1, 0, 1441814, 1, 0 )

[node name="PlayerGrim" type="KinematicBody2D" parent="."]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerGrim"]
shape = SubResource( 4 )

[node name="DoubleTap" type="Timer" parent="PlayerGrim"]
wait_time = 0.75
one_shot = true

[node name="Sprite" type="Sprite" parent="PlayerGrim"]
texture = ExtResource( 7 )

[node name="Trees" type="Node2D" parent="."]

[node name="Tree" type="StaticBody2D" parent="Trees"]
position = Vector2( 148, 201 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree"]
texture = ExtResource( 6 )

[node name="Tree2" type="StaticBody2D" parent="Trees"]
position = Vector2( 192, 104 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree2"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree2"]
texture = ExtResource( 6 )

[node name="Tree3" type="StaticBody2D" parent="Trees"]
position = Vector2( 319, 211 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree3"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree3"]
texture = ExtResource( 6 )

[node name="Tree4" type="StaticBody2D" parent="Trees"]
position = Vector2( 300, 120 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree4"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree4"]
texture = ExtResource( 6 )

[node name="Tree5" type="StaticBody2D" parent="Trees"]
position = Vector2( 179, 221 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree5"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree5"]
texture = ExtResource( 6 )

[node name="Tree6" type="StaticBody2D" parent="Trees"]
position = Vector2( 36, 152 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree6"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree6"]
texture = ExtResource( 6 )

[node name="Tree7" type="StaticBody2D" parent="Trees"]
position = Vector2( 416, 83 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree7"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree7"]
texture = ExtResource( 6 )

[node name="Tree8" type="StaticBody2D" parent="Trees"]
position = Vector2( 412, 251 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree8"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree8"]
texture = ExtResource( 6 )

[node name="Tree9" type="StaticBody2D" parent="Trees"]
position = Vector2( 207, 158 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Trees/Tree9"]
position = Vector2( 0.5, 19.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="Trees/Tree9"]
texture = ExtResource( 6 )

[node name="Spirits" type="Node2D" parent="."]

[node name="Spirit" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 251, 145 )

[node name="Spirit2" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 254, 220 )

[node name="Spirit3" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 265, 155 )

[node name="Spirit4" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 244, 154 )

[node name="Spirit5" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 254, 165 )

[node name="Spirit6" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 374, 34 )

[node name="Spirit7" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 92, 75 )

[node name="Spirit8" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 89, 185 )

[node name="Spirit9" parent="Spirits" instance=ExtResource( 2 )]
position = Vector2( 253, 45 )

[connection signal="grim_neared" from="Spirits/Spirit" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit2" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit2" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit3" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit3" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit4" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit4" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit5" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit5" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit6" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit6" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit7" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit7" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit8" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit8" to="." method="_on_Spirit_grim_touched"]
[connection signal="grim_neared" from="Spirits/Spirit9" to="." method="_on_Spirit_grim_neared"]
[connection signal="grim_touched" from="Spirits/Spirit9" to="." method="_on_Spirit_grim_touched"]
           [gd_scene load_steps=5 format=2]

[ext_resource path="res://scripts/Spirit.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 2, 2 )

[sub_resource type="CircleShape2D" id=2]
radius = 35.0143

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 3, 3 )

[node name="Spirit" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -3.0
margin_top = -3.0
margin_right = 3.0
margin_bottom = 3.0
color = Color( 0.0901961, 0.780392, 0.701961, 1 )

[node name="CollisionShape2D3" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Aura" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Aura"]
shape = SubResource( 2 )

[node name="Run" type="Timer" parent="."]

[node name="Body" type="Area2D" parent="."]

[node name="CollisionShape2D2" type="CollisionShape2D" parent="Body"]
shape = SubResource( 3 )

[connection signal="body_entered" from="Aura" to="." method="_on_Aura_Area2D_body_entered"]
[connection signal="timeout" from="Run" to="." method="_on_Run_timeout"]
[connection signal="body_entered" from="Body" to="." method="_on_Body_body_entered"]
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            R      ���ӄ�   �����϶�   ����������������������Ҷ   ���������۶�   ������Ѷ   ���������������������Ҷ�   �����¶�   �������϶���   �������ض���   ����������������������Ҷ   ���������Ӷ�                                                          	      
                                 #      %      &      '      .      7      A      B      C      J      P      3YYYYY0�  PQV�  -YYYYYYY0�  PQV�  &W�  T�  V�  -YYY0�  P�  QV�  &W�  T�  V�  �  T�  PW�  T�  QYYY0�	  P�  QV�  �  T�
  PQY`        GDSC         (   �      ������������τ�   ����Ҷ��   �����¶�   ������Ѷ   ����Ķ��   ��������ƶ��   �����϶�   ���ƶ���   ���������������Ŷ���   ����׶��   �������϶���   �������ض���   ���������Ҷ�   ��������ض��   ���������������Ӷ���   ����������ٶ   ����¶��   ���������������¶���   ����¶��   �������������������Ѷ���   ������¶   ��������������������޶��   ��������¶��   ����¶��   2                                                                                                 	      
   #      )      *      +      ,      3      9      R      \      k      o      p      w      }      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YYY8;�  V�  Y;�  Y;�  �  Y5;�  W�  YYY0�  PQV�  �  T�  PQYYYY0�  P�	  QV�  &�  �  V�  ;�
  V�  P�  �  QT�  PQ�  P�  &�  (�  Q�  ;�  �  P�
  �	  Q�  &�  �  �  T�  P�  Q	�  V�  �  PQ�  Y0�  P�  QV�  &�  4�  V�  �  P�  T�  Q�  �  �  T�  �  �  T�  PQ�  '�  4�  V�  �  �  T�  �  �  P�  Q�  �?  P�  T�  Q�  &�  T�  �  V�  �  �  �  (V�  �  �  �  �  T�  PQYY0�  PQV�  �  �  �  �  �  Y`              GDSC   "      9   :     ������������τ�   ����Ҷ��   �������󶶶�   �������󶶶�   ��Ķ   ������Ѷ   ����������Ҷ   �����¶�   �����������Ҷ���   ���������Ŷ�   �����϶�   �������Ŷ���   ����׶��   �������������Ӷ�   �����Ŷ�   ���Ӷ���   ��ض   ��������Ӷ��   ����¶��   ��������������¶   ��������¶��   ����Ķ��   ��������Ӷ��   �������϶���   ��Ŷ   �������ض���   ���������Ҷ�   ��Ҷ    ������������ׄ�������������Ҷ���   ���϶���   ���Ӷ���   ���Ӷ���   ����������ڶ   ��������������������Ҷ��                               Up               Down      Left      Right                   ?         
   PlayerGrim        grim_neared       grim_touched                   	                                 	   "   
   (      )      .      9      C      N      W      Y      Z      [      a      e      f      g      h      o      u      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4     5   '  6   .  7   1  8   8  9   3YY8;�  Y:�  �  Y:�  �  Y;�  Y;�  �  YYB�  P�  QYB�  P�  QYY;�	  N�  �  V�  P�  R�  QR�  �  V�  P�  R�  QR�  �  V�  P�  R�  QR�  �  V�  P�  R�  QYOYYY0�
  PQV�  �%  PQYYYY0�  P�  QV�  &�  �	  V�  �  P�  �  P�
  &�  (�  QQ�  (V�  �  �	  T�  PQL�&  PQ�	  T�  PQM�  W�  T�  �'  PQ�  �  W�  T�  PQ�  YYY0�  PQV�  �  �	  �  W�  T�  �  T�  �  �  �  �  Y0�  P�  V�  QV�  �  P�  �  QT�  PQ�  W�  T�  �'  PQ�  �  W�  T�  PQ�  W�  T�  �  T�  �  �  �  YYY0�  P�  V�  QV�  &�  T�  �  V�  �   P�  RQYY0�!  P�  V�  QV�  &�  T�  �  V�  �   P�  RQ�  (V�  �?  P�  T�  QY`     GDST               �   WEBPRIFF�   WEBPVP8L�   /�?� ��}�<�ѿ��L�b5$���$��@��)D�Cd�$�� ���/�_��*����m>6�S�8�ʵ�O��������� ���1�� �6� x�1�6�ef�g���`�yB:\U�k!�IU��פ)�$K�$IT����a���e�r��K	<�rj@�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/grim.png-03e0b577d27904ed1f8f5cb71e1f7654.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/grim.png"
dest_files=[ "res://.import/grim.png-03e0b577d27904ed1f8f5cb71e1f7654.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST               ~   WEBPRIFFr   WEBPVP8Le   /� ��m8�0��#�MC
Gh��kF�%1��+h`ٶ��]��އK��	)é��#���߰�������ڝG�=á6U��H�>Rs�0       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ground-leaves.png-ea115735e43319de059b8b2b37220bb3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/ground-leaves.png"
dest_files=[ "res://.import/ground-leaves.png-ea115735e43319de059b8b2b37220bb3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST               `   WEBPRIFFT   WEBPVP8LH   /� ��m8�0��#�MC
Gh��kF�%1��+h`I��\�7�������x��b���tۢ��Ye��"�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ground.png-ff2fa17296f0f5e5aa9857819bd9fef8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/ground.png"
dest_files=[ "res://.import/ground.png-ff2fa17296f0f5e5aa9857819bd9fef8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST               �   WEBPRIFF�   WEBPVP8L�   /�7��m�cw�3��,�d#	%�zH�e��'�a� �����8pɶ�����?���@8Hǿ®���O �hY���c l���-��6I�F3`�$g0V��j"�lz�WS"�XN��           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/icon.png"
dest_files=[ "res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST0   0            �  WEBPRIFF�  WEBPVP8L�  //�W`�m���Y��K<�a6��[��Y�3;�l$`�V`�N���"�G���y8�+I���m:/��Q�rd���ߓN|jЏ%w�I�1���\��v�k�3�-]�5-b"�?B!�1 �q�:R�'��.�v�� 	)2���e��bIJ>�+�96
1n߫3R'Vm BG�ЧU�W�r��ݽ�� ��*�~}�-/5q8�O����4� �����X`�UQٗKJu�@�<N�޺&Z�Zm'.r��/��|���Y$uK^
Ì�kE��I��G�E)/���";����|�>ƓN�t/ڙu�G����-�%	��S�li�>REew��n�KR"<�R���2��z��Q6�;�1OVO�܃e�?œNj9�Dۑ_t���$U�[���ˢ֧=�x�}gb����U�S���P1������:��z*����P1Fs����UF�5�9�{�jdy��%;6/��	h��pOa�\�֖5���7�n��,�� do�x�?�I\M!X>dfW�N!R�'c�Z��)A�XlP���̎	U��/!B t@�!�-��Pm��K@lz ��G� ���?*y_�j�����?�����u;?����{��{?�����[f��+��{��;?juȦt�g��{�ٰ��N�*���t���Fk����M            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tree.png-e87203ca34ea34f0ea35ddc8c11a82e9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/tree.png"
dest_files=[ "res://.import/tree.png-e87203ca34ea34f0ea35ddc8c11a82e9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     [remap]

path="res://scripts/Forest.gdc"
       [remap]

path="res://scripts/PlayerGrim.gdc"
   [remap]

path="res://scripts/Spirit.gdc"
       �PNG

   IHDR         ��a   sRGB ���   �IDAT8�c`h��C�?�z����'3��Y�N��C7���OfS���q Ca�6�^&tIB���ȶ@mBam � k �O�©���\🁁���[X5#�ã�Ys�SC��2[5�m�� W���?#�f,���P��qi��W�K�U8�(�x��+����al�逐�  B����M    IEND�B`� ECFG      application/config/name         GrimHarvester      application/run/main_scene         res://Forest.tscn      application/config/icon          res://textures/icon.png    display/window/size/width      �     display/window/size/height           display/window/size/test_width      �     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled            input/point�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      /   input_devices/pointing/emulate_touch_from_mouse         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres    