clear all;
pose_sub = rossubscriber('/tf');
n = 1;
a = arduino('/dev/ttyUSB0','Mega2560');
val = "z";
%fprintf(a,'%i',val,'async');
fopen(arduino);
while n<500
    rosrate(1);
    pose_sub = rossubscriber('/tf');
    pose_data = receive(pose_sub,10);
    x = pose_data.Transforms.ChildFrameId;
    if x == "head_1"
        val = "a";
        
    elseif x == "left_elbow_1"
        val = "b";
        
    elseif x == "left_foot_1"
        val = "c";
        
    elseif x == "left_hand_1"
        val = "d";
        
    elseif x == "left_hip_1"
        val = "e";
        
    elseif x == "left_knee_1"
        val = "f";
        
    elseif x == "left_shoulder_1"
        val = "g";
        
    elseif x == "neck_1"
        val = "h";
        
    elseif x == "right_elbow_1"
        val = "i";
        
    elseif x == "right_foot_1"
        val = "j";
        
    elseif x == "right_hand_1"
        val = "k";
        
    elseif x == "right_hip_1"
        val = "l";
        
    elseif x == "right_knee_1"
        val = "m";
        
    elseif x == "right_shoulder_1"
        val = "n";
    
    else
        val = "x";
        
    end;
    
        x1 = pose_data.Transforms.Transform.Translation.X;
        y1 = pose_data.Transforms.Transform.Translation.Y;
        z1 = pose_data.Transforms.Transform.Translation.Z;
        
      %  plot(x1,y1);
        phi = atan2(x1,y1);
        angle = phi * 180/pi;
        
        angle = int8(angle);
        
        k = angle + val
        
   % fprintf(arduino,'%s',k,'async');
    
  % fscanf(arduino);
    
    n = n + 1;
    
    
end;























