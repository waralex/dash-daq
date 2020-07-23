# AUTO GENERATED FILE - DO NOT EDIT

export daq_tank

"""
    daq_tank(;kwargs...)
    daq_tank(children::Any;kwargs...)
    daq_tank(children_maker::Function;kwargs...)

A Tank component.
A Tank component that fills to
a value between some range.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks
- `value` (Real; optional): The value of tank. If logarithmic, the displayed value
will be the logarithm of the inputted value.
- `height` (Real; optional): The height of the tank in pixels
- `width` (Real; optional): The width of the tank in pixels
- `color` (String; optional): The color of tank fill
- `min` (Real; optional): The minimum value of the tank. If logarithmic,
represents minimum exponent.
- `max` (Real; optional): The maximum value of the tank. If logarithmic,
represents the maximum exponent.
- `base` (Real; optional): Base to be used in logarithmic scale.
- `logarithmic` (Bool; optional): If set to true, a logarithmic scale will be
used.
- `showCurrentValue` (Bool; optional): If true, the current value of the tank
will be displayed
- `units` (String; optional): Label for the current value
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the component label is positioned.
- `scale` (optional): Configuration for the component scale.. scale has the following type: lists containing elements 'start', 'interval', 'labelInterval', 'custom'.
Those elements have the following types:
  - `start` (Real; optional): Value to start the scale from. Defaults
to min.
  - `interval` (Real; optional): Interval by which the scale goes up. Attempts
to dynamically divide min-max range by
default.
  - `labelInterval` (Real; optional): Interval by which labels are added to
scale marks. Defaults to 2 (every other
mark has a label).
  - `custom` (optional): Custom scale marks. The key determines the position
and the value determines what will show. If you want
to set the style of a specific mark point, the value
should be an object which contains style and label
properties. custom has the following type: Real | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (String; optional)
  - `label` (String; optional)
- `className` (String; optional): Class to apply to the root component element.
- `style` (Dict; optional): Style to apply to the root component element.
"""
function daq_tank(; kwargs...)
        available_props = Set(Symbol[:id, :value, :height, :width, :color, :min, :max, :base, :logarithmic, :showCurrentValue, :units, :label, :labelPosition, :scale, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("Tank", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_tank"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_tank(children::Any; kwargs...)
    result = daq_tank(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_tank(children_maker::Function; kwargs...) = daq_tank(children_maker(); kwargs...)
