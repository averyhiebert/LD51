GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�K      �      &�y���ڞu;>��.p   res://EndScreen.tscn�      X      2���{�rp���	�   res://TestingSandbox.tscn         �      ������^��#��Q   res://default_env.tres  �.      �       um�`�N��<*ỳ�8   res://entities/Exit.tscn`/      _      �|�B)r6)��!\    res://entities/GreenArrow.tscn  �1      �      �&�j�p;�x;P�Z,   res://entities/PeriodicPathFollow.gd.remap  ��      6       X�a^�M!i�pR�V(   res://entities/PeriodicPathFollow.gdc   �3      �      �Ń�	Fs�&94y��(   res://entities/PlayerController.gd.remap �      4       �a�W���xC�H��$   res://entities/PlayerController.gdc @5      4	      �Q��jܬ�bq���x$   res://entities/Scannable.gd.remap   @�      -       ߤj��3�����h��T<   res://entities/Scannable.gdc�>            �#0D��Ly��3���    res://entities/SpaceMine.tscn   �I      &      ^�����-�����   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   �Q      �      ��fe��6�B��^ U�   res://levels/BasicLevel.tscnPT      �      ��P�I�Y���N�)�   res://levels/DummyLevel.tscn]      8       ��-,�Y��/�rS�   res://levels/Level1.tscnP]      �      ͉`�dE�<����?    res://levels/QuadrantsLevel.tscn0i      M      �E�Ų��E�HA-�    res://levels/TutorialLevel.tscn �~      �      j���������zy_��   res://levels/VortexEasy.tscn��            
�7d���B��B"�   res://levels/VortexHard.tscn��      �*      0&�IL�e�m�!�   res://project.binary��      �      HK��q恅s��j��8$   res://scanner/LevelBackground.tscn  ��            �Xqa=)8R탍�{���    res://scanner/RadarScanner.tscn ��      {      �x�v8�N���Bs>,    res://scanner/ScanArea.gd.remap p�      +       w���D0@u��.   res://scanner/ScanArea.gdc  �      M      �,���}���e���   res://scanner/ScanArea.tscn `�      `      �2�6V���#�*�v            [gd_scene load_steps=7 format=2]

[ext_resource path="res://scanner/ScanArea.gd" type="Script" id=1]
[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=2]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=6]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 304.5, 305.5 )

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 2 )]

[node name="EverythingVisible" type="Area2D" parent="."]
script = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="EverythingVisible"]
position = Vector2( 300, 297.5 )
shape = SubResource( 1 )

[node name="Arrow" parent="." instance=ExtResource( 3 )]
position = Vector2( 46, 297 )
visible_by_default = true

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 6 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 192 )
visible_by_default = true

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 224 )
visible_by_default = true

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 256 )
visible_by_default = true

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 288 )
visible_by_default = true

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 320 )
visible_by_default = true

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 256 )
visible_by_default = true

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 320 )
visible_by_default = true

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 184, 320 )
visible_by_default = true

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 192 )
visible_by_default = true

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 192 )
visible_by_default = true

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 192 )
visible_by_default = true

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 224 )
visible_by_default = true

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 256 )
visible_by_default = true

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 288 )
visible_by_default = true

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 320 )
visible_by_default = true

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 296, 256 )
visible_by_default = true

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 312, 288 )
visible_by_default = true

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 320 )
visible_by_default = true

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 280, 224 )
visible_by_default = true

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 288 )
visible_by_default = true

[node name="SpaceMine21" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 256 )
visible_by_default = true

[node name="SpaceMine22" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 224 )
visible_by_default = true

[node name="SpaceMine23" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 192 )
visible_by_default = true

[node name="SpaceMine24" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 320 )
visible_by_default = true

[node name="SpaceMine25" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 288 )
visible_by_default = true

[node name="SpaceMine26" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 256 )
visible_by_default = true

[node name="SpaceMine27" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 224 )
visible_by_default = true

[node name="SpaceMine28" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 192 )
visible_by_default = true

[node name="SpaceMine29" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 192 )
visible_by_default = true

[node name="SpaceMine30" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 208 )
visible_by_default = true

[node name="SpaceMine31" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 464, 224 )
visible_by_default = true

[node name="SpaceMine32" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 464, 256 )
visible_by_default = true

[node name="SpaceMine33" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 464, 288 )
visible_by_default = true

[node name="SpaceMine34" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 304 )
visible_by_default = true

[node name="SpaceMine35" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 320 )
visible_by_default = true
        [gd_scene load_steps=11 format=2]

[ext_resource path="res://scanner/ScanArea.gd" type="Script" id=1]
[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=2]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=5]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=6]
[ext_resource path="res://levels/BasicLevel.tscn" type="PackedScene" id=7]
[ext_resource path="res://entities/PeriodicPathFollow.gd" type="Script" id=8]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 304.5, 305.5 )

[sub_resource type="Curve2D" id=2]
_data = {
"points": PoolVector2Array( -135.417, -16.0362, 135.417, 16.0362, 264, 192, -1.7818, -67.7083, 1.7818, 67.7083, 392, 336, 63.2538, -2.6727, -63.2538, 2.6727, 280, 456, 0, 94.4353, 0, -94.4353, 128, 328, -89.0899, 10.6908, 89.0899, -10.6908, 264, 192 )
}

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 2 )]

[node name="EverythingVisible" type="Area2D" parent="."]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="EverythingVisible"]
position = Vector2( 300, 297.5 )
shape = SubResource( 1 )

[node name="Arrow" parent="." instance=ExtResource( 3 )]
position = Vector2( 46, 297 )
visible_by_default = true

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 6 )

[node name="Path2D" type="Path2D" parent="."]
position = Vector2( 0, -16 )
curve = SubResource( 2 )

[node name="PeriodicPathFollow" type="PathFollow2D" parent="Path2D"]
position = Vector2( 264, 192 )
rotation = 0.122508
rotate = false
script = ExtResource( 8 )
period = 30

[node name="Exit" parent="Path2D/PeriodicPathFollow" instance=ExtResource( 5 )]
rotation = -0.844151
visible_by_default = true
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 480, 320 )
visible_by_default = true

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 320 )
visible_by_default = true

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 200 )
visible_by_default = true

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 408 )
visible_by_default = true

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 320, 128 )
visible_by_default = true

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 448 )
visible_by_default = true

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 88 )
visible_by_default = true

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 528 )
visible_by_default = true

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 568 )
visible_by_default = true

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 544, 256 )
visible_by_default = true

[node name="SpaceMine" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 480, 256 )
visible_by_default = true

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 320 )
visible_by_default = true

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 256 )
visible_by_default = true

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 288 )
visible_by_default = true

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 256 )
visible_by_default = true

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 472, 104 )
visible_by_default = true

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 528 )
visible_by_default = true

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 304 )
visible_by_default = true

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 176, 72 )
visible_by_default = true

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 552, 464 )
visible_by_default = true
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=2 format=2]

[ext_resource path="res://entities/Scannable.gd" type="Script" id=1]

[node name="Exit" type="KinematicBody2D"]
collision_layer = 2
collision_mask = 0
script = ExtResource( 1 )
can_activate = true

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 0, 1, 0.858824, 1 )
polygon = PoolVector2Array( 0, -8, 8, -8, 4, 0, 8, 8, -8, 8, -4, 0, -8, -8 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -8, -8, 8, -8, 4, 0, 8, 8, -8, 8, -4, 0 )
__meta__ = {
"_edit_lock_": true
}
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://entities/Scannable.gd" type="Script" id=1]

[node name="Arrow" type="KinematicBody2D"]
collision_mask = 2
script = ExtResource( 1 )

[node name="sprite" type="Polygon2D" parent="."]
color = Color( 0, 1, 0, 1 )
polygon = PoolVector2Array( 8, 0, -8, 6, -4, 0, -8, -6 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
visible = false
position = Vector2( 0, 2 )
polygon = PoolVector2Array( 8, -2, -8, 4, -4, -2, -8, -8 )
            GDSC            /      ��������������������   �����������򶶶�   �����Ҷ�   �����϶�   ���������������Ŷ���   ����׶��   ��������������¶   ��������������¶                                                          	      
                           "      -      2YY3�  YY8;�  YYYY0�  PQV�  -YYYY0�  P�  QV�  �  P�  PQ�  �  QY`GDSC   $      I   �     ���������������Ķ���   ���Ӷ���   ����������������   �����Ӷ�   ��������������������Ҷ��   �������   �������϶���   ����Ѷ��   �����������Ŷ���   �����Ķ�   �����϶�   ���������¶�   ������¶   ���������������¶���   ����׶��   ������Ѷ   ����¶��   ����������������Ҷ��   ζ��   ϶��   �������Ŷ���   ���������Ҷ�   �����������ض���   ����Ӷ��   �������������Ӷ�   ������������������ض   ��������ض��   �������Ķ���   �����������Ŷ���   ���������Ӷ�   �����������Ӷ���   �������Ӷ���   �������ض���   �������Ӷ���   �����������Ķ���   �������������������Ӷ���   �    ffffff�?                        died   
   player_die        ui_left             ui_right      ui_up         ui_down    X              Player died       ?      timeout                                	      
         	      
         #      (      -      .      3      4      5      ;      A      L      M      T      ^      _      c      f      g      p      w      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7     8     9     :     ;     <     =   '  >   +  ?   3  @   <  A   =  B   _  C   c  D   d  E   j  F   n  G   s  H   �  I   �  J   YY2YY3�  YYY:�  �  T�  Y:�  �  YY;�  �  P�  R�  QY;�  �  Y;�  �  YY;�	  �  YYY0�
  PQV�  �	  �  PQ�  �	  T�  P�  RR�  Q�  Y0�  P�  QV�  ;�  �  P�  R�  Q�  �  &�  V�  .�  �  �  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�	  QV�  �  T�  �  �  (V�  �  T�  �  �  �  &�  T�  P�
  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  �  .�  YYY0�  P�  QV�  &�  V�  .�  �  ;�  �  P�  Q�  �  �  �  �  T�  PQ�  �  �  �  �  �  �  �  �	  T�  P�  T�  PQQ�  �	  T�  P�  �  R�  P�  R�  QQ�  �  &�	  T�  P�  Q�  V�  �  �  ;�  �	  T�  P�  Q�  &�  T�  T�  V�  �  PQ�  &�  T�  T�  V�  �  T�  T�  PQ�  �  &�	  T�   T�  	�  �	  T�   T�  	�  �	  T�   T�  �  �	  T�   T�  �  V�  �  PQYY0�  PQV�  �  �  �  �?  P�  Q�  AP�!  PQT�"  P�  QR�  Q�  �!  PQT�#  PQY`            GDSC   5      `   �     ������������϶��   ������������τ�   �����������������¶�   �������¶���   �����������Ŷ���   �����������Ӷ���   ������ٶ   �������Ӷ���   ���Ҷ���   ���������Ӷ�   ����Ӷ��   �����϶�   �������Ӷ���   ����   �����������ض���   ������؄򶶶   ��������������Ķ   ������Ӷ   ��������Ŷ��   ���������ض�   ��������ض��   �����������¶���   �������Ӷ���   �������Ӷ���   ���������������۶���   �������Ӷ���   ���¶���   ��������Ҷ��   ��������Ҷ��   ���������Ӷ�   ն��   ����Ķ��   ����������Ķ   Ķ��   Ѷ��   Զ��   ��������Ķ��   ����ض��   ����ض��   ����   ��������������������Ӷ��   ������������������   �������������������϶���   �����������   �������ⶶ��   ����¶��   �����������Ķ���   �������Ӷ���   �����Ķ�   �����������Ŷ���   ��������������ٶ   ��Ӷ   ����������ڶ              +   Error: Scannable object with no image child                      333333�?      color      	         timeout       Level exit reached        died                               	               	      
   !      )      *      -      .      3      4      9      :      ;      <      B      I      J      K      S      Y      ]      _      h      i      m       q   !   r   "   w   #   x   $   |   %   }   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E   �   F   �   G   �   H   �   I   �   J     K   &  L   /  M   7  N   <  O   G  P   V  Q   \  R   ]  S   ^  T   l  U   r  V   s  W   z  X   {  Y     Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   YY2YY3�  YY8;�  Y8;�  Y8;�  Y8;�  Y8;�  V�  �  YYB�  YY;�	  �  YY;�
  �  �  YYY0�  PQV�  �	  �L  P�  Q�  �  �  )�  �  PQV�  &�  4�  V�  �
  �  �  +�  @P�
  �  R�  Q�  �  &�  V�  �  �  �  �  '�  V�  �  �  YY0�  PQV�  -YY0�  PQV�  &�  V�  �  �  -�  (V�  �  �  YY0�  PQV�  &�  V�  �  �  �  PQYY0�  PQV�  �  �  ;�  �	  T�  PQ�  �  �  T�  �  �  �  �  �  T�  �  �  �  �  �  PQT�  T�  P�  QT�  P�  Q�  �  �  �  �  &�  T�
  V�  �  T�  PQ�  .�  ;�  �  T�
  T�  �  ;�   �  P�  T�!  R�  T�"  R�  T�#  R�  Q�  ;�$  �  P�  T�!  R�  T�"  R�  T�#  R�  Q�  ;�%  �&  T�'  PQ�  �%  T�(  �%  T�)  �  �  P�%  Q�  �%  T�*  P�  T�
  R�  R�  �   R�$  R�  R�&  T�+  R�&  T�,  Q�  �%  T�-  PQ�  �  �  AP�  PQT�.  P�  QR�	  Q�  �  T�  PQYY0�/  P�0  QV�  �  &�  V�  �0  T�1  �  �  �?  P�
  Q�  AP�  PQT�.  P�  QR�	  Q�  �  PQT�2  P�  QYY0�3  PQV�  �4  P�  QY`              [gd_scene load_steps=2 format=2]

[ext_resource path="res://entities/Scannable.gd" type="Script" id=1]

[node name="SpaceMine" type="KinematicBody2D"]
script = ExtResource( 1 )
is_hazardous = true

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 1, 0, 0, 1 )
polygon = PoolVector2Array( 0, -8, 2, -2, 8, 0, 2, 2, 0, 8, -2, 2, -8, 0, -2, -2 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 0, -8, 2, -2, 8, 0, 2, 2, 0, 8, -2, 2, -8, 0, -2, -2 )
          GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

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
              [gd_scene load_steps=8 format=2]

[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=2]
[ext_resource path="res://scanner/RadarScanner.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=5]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=6]
[ext_resource path="res://levels/Level1.tscn" type="PackedScene" id=7]

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 1 )]

[node name="RadarScanner" parent="." instance=ExtResource( 3 )]

[node name="Arrow" parent="." instance=ExtResource( 2 )]
position = Vector2( 336, 224 )

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 5 )

[node name="Exit" parent="." instance=ExtResource( 4 )]
position = Vector2( 81, 533 )
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 167, 540 )

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 59, 321 )

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 204, 397 )

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 371, 526 )

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 465, 356 )

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 182, 207 )

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 43, 84 )

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 221, 79 )

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 386, 155 )

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 522, 511 )

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 445, 34 )

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 556, 286 )
[gd_scene format=2]

[node name="Node2D" type="Node2D"]
        [gd_scene load_steps=8 format=2]

[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=2]
[ext_resource path="res://scanner/RadarScanner.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=5]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=6]
[ext_resource path="res://levels/VortexEasy.tscn" type="PackedScene" id=7]

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 1 )]

[node name="RadarScanner" parent="." instance=ExtResource( 3 )]

[node name="Arrow" parent="." instance=ExtResource( 2 )]
position = Vector2( 494, 126 )

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 5 )

[node name="Exit" parent="." instance=ExtResource( 4 )]
position = Vector2( 145, 145 )
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 312, 287 )

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 263, 258 )

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 330, 231 )

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 246, 169 )

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 335, 161 )

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 280, 188 )

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 211, 88 )

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 284, 76 )

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 267, 120 )

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 335, 75 )

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 25, 31 )

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 130, 32 )

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 34, 148 )

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 327, 121 )

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 377, 113 )

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 241, 31 )

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 370, 35 )

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 472, 30 )

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 122, 515 )

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 494, 436 )
        [gd_scene load_steps=10 format=2]

[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=2]
[ext_resource path="res://scanner/RadarScanner.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=5]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=6]
[ext_resource path="res://EndScreen.tscn" type="PackedScene" id=7]
[ext_resource path="res://entities/PeriodicPathFollow.gd" type="Script" id=8]

[sub_resource type="Curve2D" id=1]
_data = {
"points": PoolVector2Array( 22.9569, -3.56762, -22.9569, 3.56762, 292.174, 224, 2.58654, -78.0111, -2.58654, 78.0111, 200.348, 312, 0, 0, 0, 0, 296, 400, 0, 85.3071, 0, -85.3071, 392, 312, 15.5114, 0.594604, -15.5114, -0.594604, 292.174, 224 )
}

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 1 )]

[node name="RadarScanner" parent="." instance=ExtResource( 3 )]

[node name="Arrow" parent="." instance=ExtResource( 2 )]
position = Vector2( 408, 312 )

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 5 )

[node name="Path2D" type="Path2D" parent="."]
position = Vector2( 16, 8 )
scale = Vector2( 0.958333, 1 )
curve = SubResource( 1 )

[node name="PathFollow2D" type="PathFollow2D" parent="Path2D"]
position = Vector2( 292.174, 224 )
rotation = 3.08074
rotate = false
script = ExtResource( 8 )
period = 30

[node name="Exit" parent="Path2D/PathFollow2D" instance=ExtResource( 4 )]
rotation = -3.08074
scale = Vector2( 1.04348, 1 )
visible_by_default = true
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 296, 304 )

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 320, 288 )

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 336, 272 )

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 352, 256 )

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 400, 208 )

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 416, 192 )

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 272, 288 )

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 255, 272 )

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 240, 256 )

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 192, 208 )

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 176, 192 )

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 272, 328 )

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 256, 344 )

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 240, 360 )

[node name="SpaceMine21" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 192, 408 )

[node name="SpaceMine22" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 176, 424 )

[node name="SpaceMine23" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 440 )

[node name="SpaceMine24" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 144, 456 )

[node name="SpaceMine25" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 176 )

[node name="SpaceMine26" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 144, 160 )

[node name="SpaceMine27" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 432, 176 )

[node name="SpaceMine28" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 448, 160 )

[node name="SpaceMine29" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 320, 328 )

[node name="SpaceMine30" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 336, 344 )

[node name="SpaceMine31" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 352, 360 )

[node name="SpaceMine34" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 400, 408 )

[node name="SpaceMine35" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 416, 424 )

[node name="SpaceMine36" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 432, 440 )

[node name="SpaceMine37" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 448, 456 )

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 368, 240 )

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 224 )

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 208, 224 )

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 224, 240 )

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 368, 376 )

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 392 )

[node name="SpaceMine32" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 224, 376 )

[node name="SpaceMine33" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 208, 392 )
   [gd_scene load_steps=9 format=2]

[ext_resource path="res://scanner/ScanArea.gd" type="Script" id=1]
[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=2]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=5]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=6]
[ext_resource path="res://levels/BasicLevel.tscn" type="PackedScene" id=7]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 304.5, 305.5 )

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 2 )]

[node name="EverythingVisible" type="Area2D" parent="."]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="EverythingVisible"]
position = Vector2( 300, 297.5 )
shape = SubResource( 1 )

[node name="Arrow" parent="." instance=ExtResource( 3 )]
position = Vector2( 46, 297 )
visible_by_default = true

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 6 )

[node name="Exit" parent="." instance=ExtResource( 5 )]
position = Vector2( 480, 288 )
visible_by_default = true
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 480, 320 )
visible_by_default = true

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 320 )
visible_by_default = true

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 200 )
visible_by_default = true

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 408 )
visible_by_default = true

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 320, 128 )
visible_by_default = true

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 448 )
visible_by_default = true

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 88 )
visible_by_default = true

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 528 )
visible_by_default = true

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 568 )
visible_by_default = true

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 544, 256 )
visible_by_default = true

[node name="SpaceMine" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 480, 256 )
visible_by_default = true

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 320 )
visible_by_default = true

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 256 )
visible_by_default = true

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 288 )
visible_by_default = true

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 256 )
visible_by_default = true

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 472, 104 )
visible_by_default = true

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 528 )
visible_by_default = true

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 304 )
visible_by_default = true

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 176, 72 )
visible_by_default = true

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 552, 464 )
visible_by_default = true
   [gd_scene load_steps=8 format=2]

[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=2]
[ext_resource path="res://scanner/RadarScanner.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/PlayerController.gd" type="Script" id=5]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=6]
[ext_resource path="res://levels/QuadrantsLevel.tscn" type="PackedScene" id=7]

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 1 )]

[node name="RadarScanner" parent="." instance=ExtResource( 3 )]

[node name="Arrow" parent="." instance=ExtResource( 2 )]
position = Vector2( 320, 128 )

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 5 )

[node name="Exit" parent="." instance=ExtResource( 4 )]
position = Vector2( 240, 376 )
exit_to = ExtResource( 7 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine38" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 32, 192 )

[node name="SpaceMine39" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 64, 192 )

[node name="SpaceMine40" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 96, 192 )

[node name="SpaceMine41" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 128, 192 )

[node name="SpaceMine42" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 192 )

[node name="SpaceMine43" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 192, 192 )

[node name="SpaceMine44" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 224, 192 )

[node name="SpaceMine45" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 256, 192 )

[node name="SpaceMine46" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 288, 192 )

[node name="SpaceMine47" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 320, 192 )

[node name="SpaceMine48" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 352, 192 )

[node name="SpaceMine49" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 192 )

[node name="SpaceMine50" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 224 )

[node name="SpaceMine51" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 256 )

[node name="SpaceMine52" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 288 )

[node name="SpaceMine53" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 320 )

[node name="SpaceMine54" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 352 )

[node name="SpaceMine55" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 384 )

[node name="SpaceMine56" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 416 )

[node name="SpaceMine57" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 384, 448 )

[node name="SpaceMine58" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 352, 448 )

[node name="SpaceMine59" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 320, 448 )

[node name="SpaceMine60" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 288, 448 )

[node name="SpaceMine61" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 256, 448 )

[node name="SpaceMine62" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 224, 448 )

[node name="SpaceMine63" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 192, 448 )

[node name="SpaceMine64" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 448 )

[node name="SpaceMine65" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 416 )

[node name="SpaceMine66" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 384 )

[node name="SpaceMine67" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 352 )

[node name="SpaceMine69" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 160, 320 )

[node name="SpaceMine70" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 192, 320 )

[node name="SpaceMine71" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 224, 320 )

[node name="SpaceMine72" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 256, 320 )

[node name="SpaceMine73" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 288, 320 )

[node name="SpaceMine" parent="Mines" instance=ExtResource( 6 )]
position = Vector2( 0, 192 )
       [gd_scene load_steps=7 format=2]

[ext_resource path="res://entities/PlayerController.gd" type="Script" id=1]
[ext_resource path="res://entities/GreenArrow.tscn" type="PackedScene" id=2]
[ext_resource path="res://scanner/LevelBackground.tscn" type="PackedScene" id=3]
[ext_resource path="res://entities/SpaceMine.tscn" type="PackedScene" id=4]
[ext_resource path="res://scanner/RadarScanner.tscn" type="PackedScene" id=5]
[ext_resource path="res://entities/Exit.tscn" type="PackedScene" id=6]

[node name="Node2D" type="Node2D"]

[node name="LevelBackground" parent="." instance=ExtResource( 3 )]
position = Vector2( 16, 8 )

[node name="RadarScanner" parent="." instance=ExtResource( 5 )]

[node name="Arrow" parent="." instance=ExtResource( 2 )]
position = Vector2( 338, 92 )

[node name="PlayerController" type="Node" parent="Arrow"]
script = ExtResource( 1 )

[node name="Exit" parent="." instance=ExtResource( 6 )]
position = Vector2( 264, 344 )

[node name="Mines" type="Node2D" parent="."]

[node name="SpaceMine" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 64 )

[node name="SpaceMine2" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 416, 64 )

[node name="SpaceMine3" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 64 )

[node name="SpaceMine33" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 464, 80 )

[node name="SpaceMine34" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 416 )

[node name="SpaceMine35" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 384 )

[node name="SpaceMine36" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 352 )

[node name="SpaceMine37" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 320 )

[node name="SpaceMine38" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 288 )

[node name="SpaceMine39" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 256 )

[node name="SpaceMine40" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 224 )

[node name="SpaceMine41" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 80, 208 )

[node name="SpaceMine42" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 104, 192 )

[node name="SpaceMine43" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 192 )

[node name="SpaceMine44" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 192 )

[node name="SpaceMine45" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 224, 192 )

[node name="SpaceMine46" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 192 )

[node name="SpaceMine47" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 288, 192 )

[node name="SpaceMine48" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 320, 192 )

[node name="SpaceMine49" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 352, 192 )

[node name="SpaceMine50" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 192 )

[node name="SpaceMine51" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 400, 208 )

[node name="SpaceMine52" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 416, 224 )

[node name="SpaceMine53" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 240 )

[node name="SpaceMine54" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 304 )

[node name="SpaceMine55" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 336 )

[node name="SpaceMine56" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 368 )

[node name="SpaceMine57" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 400 )

[node name="SpaceMine58" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 432 )

[node name="SpaceMine59" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 416, 448 )

[node name="SpaceMine60" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 448 )

[node name="SpaceMine61" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 352, 448 )

[node name="SpaceMine62" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 320, 448 )

[node name="SpaceMine63" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 288, 448 )

[node name="SpaceMine64" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 448 )

[node name="SpaceMine65" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 224, 448 )

[node name="SpaceMine66" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 448 )

[node name="SpaceMine67" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 448 )

[node name="SpaceMine68" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 144, 432 )

[node name="SpaceMine69" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 416 )

[node name="SpaceMine70" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 384 )

[node name="SpaceMine71" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 352 )

[node name="SpaceMine72" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 320 )

[node name="SpaceMine73" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 288 )

[node name="SpaceMine74" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 256 )

[node name="SpaceMine75" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 144, 240 )

[node name="SpaceMine76" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 176, 240 )

[node name="SpaceMine77" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 208, 240 )

[node name="SpaceMine78" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 240, 240 )

[node name="SpaceMine79" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 240 )

[node name="SpaceMine80" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 304, 240 )

[node name="SpaceMine81" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 240 )

[node name="SpaceMine82" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 352, 256 )

[node name="SpaceMine83" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 368, 272 )

[node name="SpaceMine84" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 288 )

[node name="SpaceMine85" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 320 )

[node name="SpaceMine86" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 352 )

[node name="SpaceMine87" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 376 )

[node name="SpaceMine88" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 368, 392 )

[node name="SpaceMine89" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 336, 392 )

[node name="SpaceMine90" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 304, 392 )

[node name="SpaceMine91" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 272, 392 )

[node name="SpaceMine92" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 240, 392 )

[node name="SpaceMine93" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 216, 376 )

[node name="SpaceMine94" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 216, 344 )

[node name="SpaceMine95" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 216, 312 )

[node name="SpaceMine96" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 248, 296 )

[node name="SpaceMine97" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 280, 296 )

[node name="SpaceMine98" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 312, 312 )

[node name="SpaceMine99" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 432, 272 )

[node name="SpaceMine100" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 192 )

[node name="SpaceMine4" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 480, 96 )

[node name="SpaceMine5" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 496, 112 )

[node name="SpaceMine6" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 128 )

[node name="SpaceMine7" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 160 )

[node name="SpaceMine8" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 192 )

[node name="SpaceMine9" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 224 )

[node name="SpaceMine10" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 256 )

[node name="SpaceMine11" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 288 )

[node name="SpaceMine12" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 320 )

[node name="SpaceMine13" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 352 )

[node name="SpaceMine14" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 384 )

[node name="SpaceMine15" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 416 )

[node name="SpaceMine16" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 448 )

[node name="SpaceMine17" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 512, 480 )

[node name="SpaceMine18" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 488, 512 )

[node name="SpaceMine19" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 448, 512 )

[node name="SpaceMine20" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 416, 512 )

[node name="SpaceMine21" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 384, 512 )

[node name="SpaceMine22" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 352, 512 )

[node name="SpaceMine23" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 320, 512 )

[node name="SpaceMine24" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 288, 512 )

[node name="SpaceMine25" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 256, 512 )

[node name="SpaceMine26" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 224, 512 )

[node name="SpaceMine27" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 192, 512 )

[node name="SpaceMine28" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 160, 512 )

[node name="SpaceMine29" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 128, 512 )

[node name="SpaceMine30" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 112, 496 )

[node name="SpaceMine101" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 80, 464 )

[node name="SpaceMine31" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 96, 480 )

[node name="SpaceMine32" parent="Mines" instance=ExtResource( 4 )]
position = Vector2( 64, 448 )
    [gd_scene format=2]

[node name="LevelBackground" type="Node2D"]

[node name="CanvasLayer" type="CanvasLayer" parent="."]
layer = -1

[node name="ColorRect" type="ColorRect" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
color = Color( 0.129412, 0, 0.2, 1 )
[gd_scene load_steps=3 format=2]

[ext_resource path="res://scanner/ScanArea.tscn" type="PackedScene" id=3]

[sub_resource type="Animation" id=1]
resource_name = "scanner_rotating"
length = 10.0
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 5, 10, 10.5 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 0.0, 180.0, 360.0, 359.0 ]
}

[node name="RadarScanner" type="Node2D"]
position = Vector2( 300, 300 )

[node name="Polygon2D" type="Polygon2D" parent="."]
polygon = PoolVector2Array( -2, 0, -5, -500, 5, -500, 2, 0 )

[node name="ScanArea" parent="." instance=ExtResource( 3 )]
position = Vector2( 1, -1 )
collision_layer = 4
collision_mask = 3

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="ScanArea"]
polygon = PoolVector2Array( -6, 0, -196, -486, -18, -499 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
autoplay = "scanner_rotating"
playback_process_mode = 0
anims/scanner_rotating = SubResource( 1 )
     GDSC   	         M      �������׶���   ���ׄ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ���������Ҷ�   ���������ض�   �������ׄ������������Ҷ�   ��������ض��   
   enter_scan     	   exit_scan                                        	      
         	      
                                                                     $      -      3      4      5      <      E      K      2YY3�  YYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  QV�  &�  T�  PQV�  �  T�  PQYYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  PQY`   [gd_scene load_steps=2 format=2]

[ext_resource path="res://scanner/ScanArea.gd" type="Script" id=1]

[node name="ScanArea" type="Area2D"]
collision_layer = 2
script = ExtResource( 1 )

[connection signal="body_entered" from="." to="." method="_on_Area2D_body_entered"]
[connection signal="body_exited" from="." to="." method="_on_Area2D_body_exited"]
[remap]

path="res://entities/PeriodicPathFollow.gdc"
          [remap]

path="res://entities/PlayerController.gdc"
            [remap]

path="res://entities/Scannable.gdc"
   [remap]

path="res://scanner/ScanArea.gdc"
     �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                    class         PeriodicPathFollow        language      GDScript      path   $   res://entities/PeriodicPathFollow.gd      base      PathFollow2D            class         PlayerController      language      GDScript      path   "   res://entities/PlayerController.gd        base      Node            class         ScanArea      language      GDScript      path      res://scanner/ScanArea.gd         base      Area2D              class         ScannableBody         language      GDScript      path      res://entities/Scannable.gd       base      KinematicBody2D    _global_script_class_icons�               ScannableBody                ScanArea             PeriodicPathFollow               PlayerController          application/config/name         Ld 51      application/run/main_scene(         res://levels/TutorialLevel.tscn    application/config/icon         res://icon.png     display/window/size/width      X     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script         input/ui_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/ui_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script         layer_names/2d_physics/layer_1         green_arrows   layer_names/2d_physics/layer_2         player_can_hit     layer_names/2d_physics/layer_3      	   scan_area      layer_names/2d_physics/layer_4         ghosts  )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres                