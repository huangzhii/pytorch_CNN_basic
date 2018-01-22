clc;
file = dir('./val');

for i=1:length(labels)
    fname = [char(labels{i,1}) '.jpg'];
    lbl = char(labels{i,2});
    mkdir(['./val/' lbl]);
    try
        copyfile(['./val/' fname], ['./val/' lbl '/' fname]);
    end
    i
end