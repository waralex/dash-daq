# AUTO GENERATED FILE - DO NOT EDIT

export daq_colorpicker

"""
    daq_colorpicker(;kwargs...)
    daq_colorpicker(children::Any;kwargs...)
    daq_colorpicker(children_maker::Function;kwargs...)

A ColorPicker component.
A color picker.
Keyword arguments:
- `id` (String; optional): The ID used to identify the color picker in Dash callbacks
- `value` (optional): Color value of the picker. value has the following type: lists containing elements 'hex', 'rbg'.
Those elements have the following types:
  - `hex` (String; optional): Hex string
  - `rbg` (optional): RGB/RGBA object. rbg has the following type: lists containing elements 'r', 'g', 'b', 'a'.
Those elements have the following types:
  - `r` (Real; optional)
  - `g` (Real; optional)
  - `b` (Real; optional)
  - `a` (Real; optional)
- `disabled` (Bool; optional): If true, color cannot be picked.
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
function daq_colorpicker(; kwargs...)
        available_props = Set(Symbol[:id, :value, :disabled, :size, :theme, :label, :labelPosition, :className, :style, :persistence, :persisted_props, :persistence_type])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("ColorPicker", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_colorpicker"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_colorpicker(children::Any; kwargs...)
    result = daq_colorpicker(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_colorpicker(children_maker::Function; kwargs...) = daq_colorpicker(children_maker(); kwargs...)
