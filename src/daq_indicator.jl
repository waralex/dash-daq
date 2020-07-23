# AUTO GENERATED FILE - DO NOT EDIT

export daq_indicator

"""
    daq_indicator(;kwargs...)
    daq_indicator(children::Any;kwargs...)
    daq_indicator(children_maker::Function;kwargs...)

An Indicator component.
A boolean indicator LED.
Keyword arguments:
- `id` (String; optional): The ID used to identify the indicator in Dash callbacks
- `value` (Bool; optional): If true, indicator is illuminated
- `color` (String; optional): Color of the indicator
- `size` (Real; optional): Size of the component. Either use this or width and height
- `width` (Real; optional): Width of the component. Set both width and height for a rectangular indicator
- `height` (Real; optional): Height of the component. Set both width and height for a rectangular indicator
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom', 'right', 'left'; optional): Where the indicator label is positioned
- `className` (String; optional): Class to apply to the root component element
- `style` (Dict; optional): Style to apply to the root component element
"""
function daq_indicator(; kwargs...)
        available_props = Set(Symbol[:id, :value, :color, :size, :width, :height, :theme, :label, :labelPosition, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("Indicator", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_indicator"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_indicator(children::Any; kwargs...)
    result = daq_indicator(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_indicator(children_maker::Function; kwargs...) = daq_indicator(children_maker(); kwargs...)
