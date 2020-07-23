# AUTO GENERATED FILE - DO NOT EDIT

export daq_stopbutton

"""
    daq_stopbutton(;kwargs...)
    daq_stopbutton(children::Any;kwargs...)
    daq_stopbutton(children_maker::Function;kwargs...)

A StopButton component.
A Stop button component
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of the button.
- `id` (String; optional): The ID used to identify this compnent in Dash callbacks
- `size` (Real; optional): The size (width) of the stop button in pixels
- `buttonText` (String; optional): Text displayed in the button
- `n_clicks` (Real; optional): Number of times the button was clicked
- `disabled` (Bool; optional): If true, button cannot be pressesd.
- `theme` (Dict; optional): Theme configuration to be set by a ThemeProvider
- `label` (optional): Description to be displayed alongside the button.
To control styling, pass an object with label and
style properties.. label has the following type: String | lists containing elements 'style', 'label'.
Those elements have the following types:
  - `style` (Dict; optional)
  - `label` (String; optional)
- `labelPosition` (a value equal to: 'top', 'bottom'; optional): Where the  label is positioned.
- `className` (String; optional): Class to apply to the root component element.
- `style` (Dict; optional): Style to apply to the root component element.
"""
function daq_stopbutton(; kwargs...)
        available_props = Set(Symbol[:children, :id, :size, :buttonText, :n_clicks, :disabled, :theme, :label, :labelPosition, :className, :style])
        wild_props = Set(Symbol[])
        wild_regs = r"^(?<prop>)"

        result = Component("StopButton", "dash_daq", Dict{Symbol, Any}(), available_props, Set(Symbol[]))

        for (prop, value) = pairs(kwargs)
            m = match(wild_regs, string(prop))
            if (length(wild_props) == 0 || isnothing(m)) && !(prop in available_props)
                throw(ArgumentError("Invalid property $(string(prop)) for component " * "daq_stopbutton"))
            end

            push!(result.props, prop => Front.to_dash(value))
        end

    return result
end

function daq_stopbutton(children::Any; kwargs...)
    result = daq_stopbutton(;kwargs...)
    push!(result.props, :children => Front.to_dash(children))
    return result
end

daq_stopbutton(children_maker::Function; kwargs...) = daq_stopbutton(children_maker(); kwargs...)
