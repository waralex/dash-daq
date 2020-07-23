# AUTO GENERATED FILE - DO NOT EDIT

export daq_knob

"""
    daq_knob(;kwargs...)
    daq_knob(children::Any;kwargs...)
    daq_knob(children_maker::Function;kwargs...)

A Knob component.
A knob component that can be turned
to a value between some range.
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `value` (Real; optional): The value of knob
- `color` (optional): Color configuration for the knob's track.. color has the following type: String | lists containing elements 'default', 'gradient', 'ranges'.
Those elements have the following types:
  - `default` (String; optional): Color used for current value text and other minor accents
  - `gradient` (Bool; optional): Display ranges as a gradient between given colors.
  - `ranges` (optional): Define multiple color ranges on the knob's track.
The key determines the color of the range and
the value is the start,end of the range itself.
Ranges must be contiguous along the entirety
of the knob's range of values.. ranges has the following type: lists containing elements 'color'.
Those elements have the following types:
  - `color` (Array of Reals; optional)
- `size` (Real; optional): The size (diameter) of the knob in pixels
- `min` (Real; optional): The minimum value of the knob
- `max` (Real; optional): The maximum value of the knob
- `disabled` (Bool; optional): If true, knob cannot be moved.
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling, pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the knob label is positioned.
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
- `persistence` (Bool | String | Real; optional): Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.
- `persisted_props` (Array of a value equal to: 'value's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
"""
function daq_knob(; kwargs...)
        available_props = Set(Symbol[:id, :value, :color, :size, :min, :max, :disabled, :theme, :label, :labelPosition, :scale, :className, :style, :persistence, :persisted_props, :persistence_type])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("Knob", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_knob"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_knob(children::Any; kwargs...)
    result = daq_knob(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_knob(children_maker::Function; kwargs...) = daq_knob(children_maker(); kwargs...)
