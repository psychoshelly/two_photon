function all_segs=get_act_raw_trace(single_cell,frame_num,F_cell, prev_t, after_t)
        all_act = F_cell(single_cell, :);
        all_segs=[];
        for ind =1: length(frame_num)
            seg_starts =frame_num(ind)-prev_t;
            seg_ends = frame_num(ind)+after_t;
            frame=all_act(seg_starts:seg_ends);
            all_segs=[all_segs;frame];
        end
        
end