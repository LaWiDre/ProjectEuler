
#=
Program solving the first excersise at project Euler
by finding every multiple of 3 and 5 between 0 and 1000
=#

function multiple_check(n,k)
    #= 
    Function checking whether the integer n is a multiple of k
    =#
    try
        #Trying to see if the remainder still is an integer
        q = n/k
        q = Int64(q)
        return true
    catch InexactError
        return false
    end
end
global multiple_sum = 0
for i=1:(1000-1)
    #= 
    Main loop
    =#

    multiple = (multiple_check(i, 5) || multiple_check(i, 3))  
    if (multiple)
        global multiple_sum += i
    end
end

println(multiple_sum)