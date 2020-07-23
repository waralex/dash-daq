# AUTO GENERATED FILE - DO NOT EDIT

export daq_toggleswitch

"""
    daq_toggleswitch(;kwargs...)
    daq_toggleswitch(children::Any;kwargs...)
    daq_toggleswitch(children_maker::Function;kwargs...)

A ToggleSwitch component.
A switch component that toggles between
two values.
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `value` (Bool; optional): The state of the switch
- `size` (Real; optional): The size of the switch
- `color` (String; optional): Color to highlight button/indicator
- `vertical` (Bool; optional): If true, switch will be vertical instead
of horizontal
- `disabled` (Bool; optional): If true, switch cannot be clicked
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling, pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional) | Array of String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)s
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the component label is positioned.
- `className` (String; optional): Class to apply to the root component element.
- `style` (Dict; optional): Style to apply to the root object.
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
function daq_toggleswitch(; kwargs...)
        available_props = Set(Symbol[:id, :value, :size, :color, :vertical, :disabled, :theme, :label, :labelPosition, :className, :style, :persistence, :persisted_props, :persistence_type])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("ToggleSwitch", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_toggleswitch"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_toggleswitch(children::Any; kwargs...)
    result = daq_toggleswitch(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_toggleswitch(children_maker::Function; kwargs...) = daq_toggleswitch(children_maker(); kwargs...)
