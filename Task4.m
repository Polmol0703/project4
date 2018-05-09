clear all
i_cell = [3, 3*1.5]; %inputing current in A
i_l = i_cell; %same extraction current flow


v_cell = 1.23+0.12+0.041.*i_cell;
p_cell = v_cell.*i_cell;
p_cell_onehour = p_cell.*60.* 60;

v_l = 1.23-0.12-0.041.*i_cell;
p_l = i_l.*v_l;
p_l_onehour = p_l.*60.*60;

percent_change = p_l_onehour./p_cell_onehour;