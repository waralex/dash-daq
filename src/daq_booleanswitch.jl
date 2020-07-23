# AUTO GENERATED FILE - DO NOT EDIT

export daq_booleanswitch

"""
    daq_booleanswitch(;kwargs...)
    daq_booleanswitch(children::Any;kwargs...)
    daq_booleanswitch(children_maker::Function;kwargs...)

A BooleanSwitch component.
A switch component that toggles
between on and off.
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `on` (Bool; optional): Whether or not the switch is on
- `color` (String; optional): Color to highlight active switch background
- `vertical` (Bool; optional): If true, switch will be vertical instead
of horizontal
- `disabled` (Bool; optional): If true, switch cannot be clicked
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the component label is positioned.
- `className` (String; optional): Class to apply to the root component element.
- `style` (Dict; optional): Style to apply to the root object.
- `persistence` (Bool | String | Real; optional): Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.
- `persisted_props` (Array of a value equal to: 'on's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `on` is allowed this prop can
normally be ignored.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
"""
function daq_booleanswitch(; kwargs...)
        available_props = Set(Symbol[:id, :on, :color, :vertical, :disabled, :theme, :label, :labelPosition, :className, :style, :persistence, :persisted_props, :persistence_type])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("BooleanSwitch", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_booleanswitch"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_booleanswitch(children::Any; kwargs...)
    result = daq_booleanswitch(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_booleanswitch(children_maker::Function; kwargs...) = daq_booleanswitch(children_maker(); kwargs...)
