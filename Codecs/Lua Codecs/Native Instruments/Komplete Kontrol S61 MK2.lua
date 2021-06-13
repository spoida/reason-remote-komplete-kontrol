function remote_init(manufacturer, model)
	local items={
		{name="Keyboard", input="keyboard"},
		{name="Pitch Bend", input="value", min=0, max=16384},
		{name="Modulation", input="value", min=0, max=127},
		{name="Damper Pedal", input="value", min=0, max=127},
		{name="Channel Pressure", input="value", min=0, max=127},
		{name="Touch Strip", input="value", min=0, max=127},
		{name="Knob 1", input="value", min=0, max=127, output="value"},
		{name="Knob 2", input="value", min=0, max=127, output="value"},
		{name="Knob 3", input="value", min=0, max=127, output="value"},
		{name="Knob 4", input="value", min=0, max=127, output="value"},
		{name="Knob 5", input="value", min=0, max=127, output="value"},
		{name="Knob 6", input="value", min=0, max=127, output="value"},
		{name="Knob 7", input="value", min=0, max=127, output="value"},
		{name="Knob 8", input="value", min=0, max=127, output="value"},
		{name="Knob 9", input="value", min=0, max=127, output="value"},
		{name="Knob 10", input="value", min=0, max=127, output="value"},
		{name="Knob 11", input="value", min=0, max=127, output="value"},
		{name="Knob 12", input="value", min=0, max=127, output="value"},
		{name="Knob 13", input="value", min=0, max=127, output="value"},
		{name="Knob 14", input="value", min=0, max=127, output="value"},
		{name="Knob 15", input="value", min=0, max=127, output="value"},
		{name="Knob 16", input="value", min=0, max=127, output="value"},
		{name="Button 1", input="button", output="value"},
		{name="Button 2", input="button", output="value"},
		{name="Button 3", input="button", output="value"},
		{name="Button 4", input="button", output="value"},
		{name="Button 5", input="button", output="value"},
		{name="Button 6", input="button", output="value"},
		{name="Button 7", input="button", output="value"},
		{name="Button 8", input="button", output="value"},
	}
	remote.define_items(items)

	local inputs={
		{pattern="9? xx 00", name="Keyboard", value="0", note="x", velocity="64"},
		{pattern="<100x>? yy zz", name="Keyboard"},
		{pattern="e? xx yy", name="Pitch Bend", value="y*128 + x"},
		{pattern="b? 01 xx", name="Modulation"},
		{pattern="b? 40 xx", name="Damper Pedal"},
		{pattern="D? xx ??", name="Channel Pressure"},
		{pattern="b0 0b xx", name="Touch Strip"},
		{pattern="b0 0e xx", name="Knob 1"},
		{pattern="b0 0f xx", name="Knob 2"},
		{pattern="b0 10 xx", name="Knob 3"},
		{pattern="b0 11 xx", name="Knob 4"},
		{pattern="b0 12 xx", name="Knob 5"},
		{pattern="b0 13 xx", name="Knob 6"},
		{pattern="b0 14 xx", name="Knob 7"},
		{pattern="b0 15 xx", name="Knob 8"},
		{pattern="b0 16 xx", name="Knob 9"},
		{pattern="b0 17 xx", name="Knob 10"},
		{pattern="b0 18 xx", name="Knob 11"},
		{pattern="b0 19 xx", name="Knob 12"},
		{pattern="b0 1a xx", name="Knob 13"},
		{pattern="b0 1b xx", name="Knob 14"},
		{pattern="b0 1c xx", name="Knob 15"},
		{pattern="b0 1d xx", name="Knob 16"},
		{pattern="b0 70 xx", name="Button 1"},
		{pattern="b0 71 xx", name="Button 2"},
		{pattern="b0 72 xx", name="Button 3"},
		{pattern="b0 73 xx", name="Button 4"},
		{pattern="b0 74 xx", name="Button 5"},
		{pattern="b0 75 xx", name="Button 6"},
		{pattern="b0 76 xx", name="Button 7"},
		{pattern="b0 77 xx", name="Button 8"},
	}
	remote.define_auto_inputs(inputs)

	local outputs={
		{pattern="b0 0e xx", name="Knob 1"},
		{pattern="b0 0f xx", name="Knob 2"},
		{pattern="b0 10 xx", name="Knob 3"},
		{pattern="b0 11 xx", name="Knob 4"},
		{pattern="b0 12 xx", name="Knob 5"},
		{pattern="b0 13 xx", name="Knob 6"},
		{pattern="b0 14 xx", name="Knob 7"},
		{pattern="b0 15 xx", name="Knob 8"},
		{pattern="b0 16 xx", name="Knob 9"},
		{pattern="b0 17 xx", name="Knob 10"},
		{pattern="b0 18 xx", name="Knob 11"},
		{pattern="b0 19 xx", name="Knob 12"},
		{pattern="b0 1a xx", name="Knob 13"},
		{pattern="b0 1b xx", name="Knob 14"},
		{pattern="b0 1c xx", name="Knob 15"},
		{pattern="b0 1d xx", name="Knob 16"},
		{pattern="b0 70 xx", name="Button 1"},
		{pattern="b0 71 xx", name="Button 2"},
		{pattern="b0 72 xx", name="Button 3"},
		{pattern="b0 73 xx", name="Button 4"},
		{pattern="b0 74 xx", name="Button 5"},
		{pattern="b0 75 xx", name="Button 6"},
		{pattern="b0 76 xx", name="Button 7"},
		{pattern="b0 77 xx", name="Button 8"},
	}

	remote.define_auto_outputs(outputs)
end

