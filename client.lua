local defaultAspectRatio = 1920/1080 -- Don't change this.
local resolutionX, resolutionY = GetActiveScreenResolution()
local aspectRatio = resolutionX/resolutionY
local minimapXOffset,minimapYOffset = 0,0
if aspectRatio > defaultAspectRatio then
	local aspectDifference = defaultAspectRatio-aspectRatio
	minimapXOffset = aspectDifference/3.6
end

SetMinimapComponentPosition(
	"minimap", 
	"L", 
	"B", 
	-0.0045+minimapXOffset, 
	0.002+minimapYOffset, 
	0.150, 
	0.188888
)

SetMinimapComponentPosition(
	"minimap_mask", 
	"L", 
	"B", 
	0.020+minimapXOffset, 
	0.030+minimapYOffset, 
	0.111, 
	0.159
)

SetMinimapComponentPosition(
	"minimap_blur", 
	"L", 
	"B", 
	-0.03+minimapXOffset, 
	0.022+minimapYOffset, 
	0.266, 
	0.237
)
