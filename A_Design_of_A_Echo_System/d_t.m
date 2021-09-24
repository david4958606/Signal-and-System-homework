function y = d_t(t)
for i = 1: length(t)
    if t(i) == 0
        y(i) = 1e4;
    else
        y(i) = 0;
    end
end