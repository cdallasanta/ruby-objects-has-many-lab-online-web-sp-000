def queensAttack(n, k = 0, r_q, c_q, obstacles = [])
    @n = n
    @r_q = r_q
    @c_q = c_q
    @obstacles = obstacles
    @squares_attacked = 0

    def check_right
        r = @r_q
        c = @c_q + 1
        checking = [r,c]
        until c > @n
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            c += 1
        end
    end

    def check_left
        r = @r_q
        c = @c_q - 1
        checking = [r,c]
        until c == 0
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            c -= 1
        end
    end

    def check_up
        r = @r_q + 1
        c = @c_q
        checking = [r,c]
        until r > @n
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r += 1
        end
    end

    def check_down
        r = @r_q - 1
        c = @c_q
        checking = [r,c]
        until c == 0
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r -= 1
        end
    end

    def check_up_right
        r = @r_q + 1
        c = @c_q + 1
        checking = [r,c]
        until c > @n || r > @n
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r += 1
            c += 1
        end
    end

    def check_up_left
        r = @r_q + 1
        c = @c_q - 1
        checking = [r,c]
        until c == 0 || r > @n
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r += 1
            c -= 1
        end
    end

    def check_down_right
        r = @r_q - 1
        c = @c_q + 1
        checking = [r,c]
        until c > @n || r == 0
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r += 1
            c -= 1
        end
    end

    def check_down_left
        r = @r_q - 1
        c = @c_q - 1
        checking = [r,c]
        until c == 0 || r == 0
            if @obstacles.include?(checking)
                break
            else
                @squares_attacked+=1
            end
            r -= 1
            c -= 1
        end
    end

    check_left
    check_right
    check_up
    check_down
    check_up_left
    check_up_right
    check_down_left
    check_down_right

    squares_attacked
end

queensAttack(4, 0, 4, 4)
