# AUTO GENERATED FILE - DO NOT EDIT

export daq_joystick

"""
    daq_joystick(;kwargs...)
    daq_joystick(children::Any;kwargs...)
    daq_joystick(children_maker::Function;kwargs...)

A Joystick component.
A joystick.
Keyword arguments:
- `id` (String; optional): The ID used to identify the color picker in Dash callbacks
- `disabled` (Bool; optional): If true, color cannot be picked.
- `angle` (Real; optional): Joystick angle in degrees, 0 = right, 90 = up, 180 = left, 270 = down
- `force` (Real; optional): Joystick force: distance between cursor and center in big-circle radii
- `size` (Real; optional): Size (width) of the component in pixels
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the indicator label is positioned
- `className` (String; optional): Class to apply to the root component element
- `style` (Dict; optional): Style to apply to the root component element
"""
function daq_joystick(; kwargs...)
        available_props = Set(Symbol[:id, :disabled, :angle, :force, :size, :theme, :label, :labelPosition, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("Joystick", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_joystick"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_joystick(children::Any; kwargs...)
    result = daq_joystick(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_joystick(children_maker::Function; kwargs...) = daq_joystick(children_maker(); kwargs...)
