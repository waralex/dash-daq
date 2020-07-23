# AUTO GENERATED FILE - DO NOT EDIT

export daq_numericinput

"""
    daq_numericinput(;kwargs...)
    daq_numericinput(children::Any;kwargs...)
    daq_numericinput(children_maker::Function;kwargs...)

A NumericInput component.
A numeric input component that can be
set to a value between some range.
Keyword arguments:
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `value` (Real; optional): The value of numeric input
- `size` (Real; optional): The size (length) of the numeric input in pixels
- `min` (Real; optional): The minimum value of the numeric input
- `max` (Real; optional): The maximum value of the numeric input
- `disabled` (Bool; optional): If true, numeric input cannot changed.
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the control. To control styling,
pass an object with label and style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the numeric input label is positioned.
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
function daq_numericinput(; kwargs...)
        available_props = Set(Symbol[:id, :value, :size, :min, :max, :disabled, :theme, :label, :labelPosition, :className, :style, :persistence, :persisted_props, :persistence_type])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("NumericInput", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_numericinput"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_numericinput(children::Any; kwargs...)
    result = daq_numericinput(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_numericinput(children_maker::Function; kwargs...) = daq_numericinput(children_maker(); kwargs...)
