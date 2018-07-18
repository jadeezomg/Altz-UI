local F, C = unpack(select(2, ...))

tinsert(C.themes["Aurora"], function()
	ColorPickerFrameHeader:SetAlpha(0)
	ColorPickerFrameHeader:ClearAllPoints()
	ColorPickerFrameHeader:SetPoint("TOP", ColorPickerFrame, 0, 0)
	F.CreateBD(ColorPickerFrame)
	F.CreateSD(ColorPickerFrame)
	F.Reskin(ColorPickerOkayButton)
	F.Reskin(ColorPickerCancelButton)
end)