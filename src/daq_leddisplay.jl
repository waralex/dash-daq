# AUTO GENERATED FILE - DO NOT EDIT

export daq_leddisplay

"""
    daq_leddisplay(;kwargs...)
    daq_leddisplay(children::Any;kwargs...)
    daq_leddisplay(children_maker::Function;kwargs...)

A LEDDisplay component.
A 7-bar LED display component.
Keyword arguments:
- `id` (String; optional): The ID used to identify the display in Dash callbacks
- `value` (Real | String; optional): Value to be displayed. A number or a string
containing only digits (0-9), periods, and colons,
and possibly starting with a minus sign.
- `color` (String; optional): Color of the display
- `backgroundColor` (String; optional): Color of the display's background
- `size` (Real; optional): Size of the display
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the display label is positioned
- `className` (String; optional): Class to apply to the root component element
- `style` (Dict; optional): Style to apply to the root component element
"""
function daq_leddisplay(; kwargs...)
        available_props = Set(Symbol[:id, :value, :color, :backgroundColor, :size, :theme, :label, :labelPosition, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("LEDDisplay", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_leddisplay"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_leddisplay(children::Any; kwargs...)
    result = daq_leddisplay(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_leddisplay(children_maker::Function; kwargs...) = daq_leddisplay(children_maker(); kwargs...)
