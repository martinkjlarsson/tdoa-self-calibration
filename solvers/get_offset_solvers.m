function solvers = get_offset_solvers()
% GET_OFFSET_SOLVERS Get an array of solvers for finding TDOA offsets
%   solvers = GET_OFFSET_SOLVERS() gets an array of solvers that take an m
%       by n matrix of TDOA measurements between m receivers and n senders,
%       and returns n offsets for the senders.

    solvers = [];
    
    % 2D 7/4 linear
    solvers(end+1).solv = @solver_tdoa_rank2_74;
    solvers(end).name = 'Rank 2 (7r/4s)';
    solvers(end).m = 7;
    solvers(end).n = 4;
    solvers(end).rank = 2;

    % 2D 5/6
    solvers(end+1).solv = @solver_tdoa_rank2_56;
    solvers(end).name = 'Rank 2 (5r/6s)';
    solvers(end).m = 5;
    solvers(end).n = 6;
    solvers(end).rank = 2;

    % 3D 9/5 linear
    solvers(end+1).solv = @solver_tdoa_rank3_95;
    solvers(end).name = 'Rank 3 (9r/5s)';
    solvers(end).m = 9;
    solvers(end).n = 5;
    solvers(end).rank = 3;

    % 3D 7/6
    solvers(end+1).solv = @solver_tdoa_rank3_76;
    solvers(end).name = 'Rank 3 (7r/6s)';
    solvers(end).m = 7;
    solvers(end).n = 6;
    solvers(end).rank = 3;

    % 3D 6/8
    solvers(end+1).solv = @solver_tdoa_rank3_68;
    solvers(end).name = 'Rank 3 (6r/8s)';
    solvers(end).m = 6;
    solvers(end).n = 8;
    solvers(end).rank = 3;
    solvers(end).rank = 3;
end

