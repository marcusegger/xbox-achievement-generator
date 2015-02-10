<cfcomponent output="false">

	<cffunction name="generate" access="public" output="false" returntype="Any">
		<cfparam name="text" type="string" default="">
		
		<cfimage action="read" name="achievement_image" source="/img/achievement_bg.jpeg">
		
		<cfset attr = StructNew()>
		<cfset attr.font = "arial">
		<cfset attr.size = 18>
		<cfset attr.style = "plain">
		<cfset ImageSetDrawingColor(achievement_image,"white")>
		<cfset ImageSetAntialiasing(achievement_image)>

		<cfset ImageDrawText(achievement_image, "Achievement Unlocked", 75, 25, attr) />
		<cfset ImageDrawText(achievement_image, #text#, 75, 45, attr) />
		
		<cfset attr.size = 9>
		<cfset ImageDrawText(achievement_image, "www.marcusegger.de", 160, 63, attr) />
		
		<cfreturn achievement_image />
	</cffunction>
	
</cfcomponent>
