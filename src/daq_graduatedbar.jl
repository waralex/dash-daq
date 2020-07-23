# AUTO GENERATED FILE - DO NOT EDIT

export daq_graduatedbar

"""
    daq_graduatedbar(;kwargs...)
    daq_graduatedbar(children::Any;kwargs...)
    daq_graduatedbar(children_maker::Function;kwargs...)

A GraduatedBar component.
A graduated bar component that displays
a value within some range as a
percentage.
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `value` (Real; optional): The value of the graduated bar
- `color` (optional): Color configuration for the graduated bar's
progress blocks.. color has the following type: String | lists containing elements 'default', 'gradient', 'ranges'.
Those elements have the following types:
  - `default` (String; optional): Fallback color to use when color.ranges
has gaps.
  - `gradient` (Bool; optional): Display ranges as a gradient between given colors.
Requires color.ranges to be contiguous along
the entirety of the graduated bar's range of values.
  - `ranges` (optional): Define multiple color ranges on the graduated bar's track.
The key determines the color of the range and
the value is the start,end of the range itself.. ranges has the following type: lists containing elements 'color'.
Those elements have the following types:
  - `color` (Array of Reals; optional)
- `size` (Real; optional): The size (length) of the graduated bar in pixels
- `vertical` (Bool; optional): If true, will display bar vertically instead of horizontally
- `min` (Real; optional): The minimum value of the graduated bar
- `max` (Real; optional): The maximum value of the graduated bar
- `step` (Real; optional): Value by which progress blocks appear
- `showCurrentValue` (Bool; optional): If true, the current percentage
 of the bar will be displayed
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling, pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the component label is positioned.
- `className` (String; optional): Class to apply to the root component element.
- `style` (Dict; optional): Style to apply to the root component element.
"""
function daq_graduatedbar(; kwargs...)
        available_props = Set(Symbol[:id, :value, :color, :size, :vertical, :min, :max, :step, :showCurrentValue, :theme, :label, :labelPosition, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("GraduatedBar", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_graduatedbar"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_graduatedbar(children::Any; kwargs...)
    result = daq_graduatedbar(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_graduatedbar(children_maker::Function; kwargs...) = daq_graduatedbar(children_maker(); kwargs...)
