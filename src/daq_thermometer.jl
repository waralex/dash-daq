# AUTO GENERATED FILE - DO NOT EDIT

export daq_thermometer

"""
    daq_thermometer(;kwargs...)
    daq_thermometer(children::Any;kwargs...)
    daq_thermometer(children_maker::Function;kwargs...)

A Thermometer component.
A thermometer component that
fills to a value between some
range
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `value` (Real; optional): The value of thermometer. If logarthmic, the value
displayed will be the logarithm of the inputted value.
- `height` (Real; optional): The height of the thermometer in pixels
- `width` (Real; optional): The width of the thermometer in pixels
- `color` (String; optional): The color of the thermometer fill/current value text
- `min` (Real; optional): The minimum value of the thermometer. If logarithmic,
represents the minimum exponent.
- `max` (Real; optional): The maximum value of the thermometer. If logarithmic,
represents the maximum exponent.
- `base` (Real; optional): Base to be used in logarithmic scale.
- `logarithmic` (Bool; optional): If set to true, a logarithmic scale will be
used.
- `showCurrentValue` (Bool; optional): If true, the current value of the
thermometer will be displayed
- `units` (String; optional): Label for the current value
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling, pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
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
function daq_thermometer(; kwargs...)
        available_props = Set(Symbol[:id, :value, :height, :width, :color, :min, :max, :base, :logarithmic, :showCurrentValue, :units, :theme, :label, :labelPosition, :scale, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("Thermometer", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_thermometer"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_thermometer(children::Any; kwargs...)
    result = daq_thermometer(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_thermometer(children_maker::Function; kwargs...) = daq_thermometer(children_maker(); kwargs...)
