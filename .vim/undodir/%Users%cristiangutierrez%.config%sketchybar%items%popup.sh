Vim�UnDo� �7�bF���aH�EN�()�"��Q���O�C   #           -                       e��S    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e���    �   !              B                                             sketchybar -m --set a�   "            �                 E              --set apple.activity icon=􀒓                         �               �                 C                        label.font="SF Pro:Semibold:13.0"          �               �   	              D                               popup.background.border_width=2      �   
            �                   �               5��                    	   D                   �      �    	   D              C   �                     �       C              E   �                    �       E              B    	                    �    !   B                                       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/usr/bin/env bash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!usr/bin/env bash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!sr/bin/env bash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!r/bin/env bash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/bin/env bash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/bin/nv bash5��                                                5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/bin/v bash5��                                                5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/bin/ bash5��                                                5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      #!/bin/bash5��                                                5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             e��     �          #      
#!/bin/ash5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��    �          #      	#!/bin/sh5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��f     �               #   
#!/bin/zsh       _sketchybar -m --bar blur_radius=50                                                            \   _                    height=32                                                                 \   _              --add item apple.logo left                                                      \   b              --set apple.logo icon=􀣺                                                         \   _                               icon.font="SF Pro:Black:16.0"                                  \   _                               label.drawing=off                                              \   _                               click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \   _                               popup.background.border_width=2                                \   `                               popup.background.corner_radius=3                                \   _                               popup.background.border_color=0xff9dd274                       \   _                                                                                              \   _              --default background.padding_left=5                                             \   _                        background.padding_right=5                                            \   _                        icon.padding_right=5                                                  \   _                        icon.font="SF Pro:Bold:16.0"                                          \   _                        label.font="SF Pro:Semibold:13.0"                                     \   _                                                                                              \   _              --add item apple.preferences popup.apple.logo                                   \   b              --set apple.preferences icon=􀺽                                                  \   _                               label="Preferences"                                            \   ^                               click_script="open -a 'System Preferences';                       _                                             sketchybar -m --set apple.logo popup.drawing=off"\   _              --add item apple.activity popup.apple.logo                                      \   b              --set apple.activity icon=􀒓                                                     \   _                               label="Activity"                                               \   _                               click_script="open -a 'Activity Monitor';                          _                                             sketchybar -m --set apple.logo popup.drawing=off"\   _              --add item apple.lock popup.apple.logo                                          \   b              --set apple.lock icon=􀒳                                                         \   _                               label="Lock Screen"                                            \   ^                               click_script="pmset displaysleepnow;                              ^                                             sketchybar -m --set apple.logo popup.drawing=off"    5�5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             e�տ     �         #      _                               label="Activity"                                               \5��       .                  C	                     �       .                 C	                    5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             e���    �         #      f                               label="ActivityMonitor"                                               \5��       .                  C	                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                               .          .       V   .    e��     �   "   (   #    �   "   #   #    5��    "                                    �      5�_�                    "   ^    ����                                                                                                                                                                                                                                                                                                                               .          .       V   .    e��    �   !   #   (      ^                                             sketchybar -m --set apple.logo popup.drawing=off"5��    !   ^                                       �    !   _                                       5�_�                    %   &    ����                                                                                                                                                                                                                                                                                                                               .          .       V   .    e��      �   $   &   (      g                               label="Activity Monitor"                                               \5��    $   &                                     5�_�                    &   -    ����                                                                                                                                                                                                                                                                                                                               .          .       V   .    e��1     �   %   '   (      _                               click_script="open -a 'Activity Monitor';                       5��    %   -                 o                    5�_�                    &   -    ����                                                                                                                                                                                                                                                                                                                               .          .       V   .    e��5     �   %   '   (      E                               click_script=";                       5��    %   -                  o                     �    %   6                 x                    5�_�                     #        ����                                                                                                                                                                                                                                                                                                                            #   :       '   :       V   :    e��R    �   "   #          _              --add item apple.activity popup.apple.logo                                      \   b              --set apple.activity icon=􀒓                                                     \   _                               label="Shutdown"                                               \   S                               click_script="pmset schedule;                          _                                             sketchybar -m --set apple.logo popup.drawing=off"\5��    "                            �              5��