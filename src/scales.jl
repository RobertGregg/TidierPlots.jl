function continuous_scale_to_ggoptions(args_dict::Dict)
    
    options_dict = Dict()
    
    if haskey(args_dict, "name")
        options_dict[args_dict["scale"]] = args_dict["name"]
    end

    if haskey(args_dict, "trans")
        options_dict[args_dict["scale"] * "scale"] = args_dict["trans"]
    end

    if haskey(args_dict, "reversed")
        options_dict[args_dict["scale"] * "reversed"] = args_dict["reversed"]
    end

    return(GGOptions(options_dict))

end

function colour_scale_to_ggoptions(args_dict::Dict)
    
    options_dict = Dict()

    if haskey(args_dict, "palette")
        options_dict["palette"] = Symbol(args_dict["palette"])
    end
    
    return(GGOptions(options_dict))

end

macro scale_colour_continuous(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "colour"
    return colour_scale_to_ggoptions(args_dict)
end

macro scale_color_continuous(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "colour"
    return colour_scale_to_ggoptions(args_dict)
end

macro scale_x_continuous(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_continuous(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_log10(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = AlgebraOfGraphics.log10
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_log10(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = AlgebraOfGraphics.log10
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_reverse(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["reversed"] = true 
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_reverse(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["reversed"] = true 
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_sqrt(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = AlgebraOfGraphics.sqrt
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_sqrt(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = AlgebraOfGraphics.sqrt
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_log2(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = AlgebraOfGraphics.log2
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_log2(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = AlgebraOfGraphics.log2
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_log(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = AlgebraOfGraphics.log
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_log(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = AlgebraOfGraphics.log
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_logit(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = Makie.logit
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_logit(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = Makie.logit
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_x_pseudolog10(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "x"
    args_dict["trans"] = Makie.pseudolog10
    return continuous_scale_to_ggoptions(args_dict)
end

macro scale_y_pseudolog10(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    args_dict["scale"] = "y"
    args_dict["trans"] = Makie.pseudolog10
    return continuous_scale_to_ggoptions(args_dict)
end