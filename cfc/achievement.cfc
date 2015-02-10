<cfcomponent displayname="achievement" output="false" hint="generates a xbox achievement image with text">

	<cffunction name="generate" access="public" output="false" returntype="any">
		<cfparam name="text" type="string" required="true">
		
		<cfimage action="read" name="achievement_image" source="/img/achievement_bg.jpeg">
		
		<cfset var attr = StructNew() />
		<cfset attr.font = "arial" />
		<cfset attr.size = 18 />
		<cfset attr.style = "plain" />
		<cfset ImageSetDrawingColor(achievement_image,"white") />
		<cfset ImageSetAntialiasing(achievement_image) />
		<cfset ImageDrawText(achievement_image, "Achievement Unlocked", 75, 25, attr) />
		<cfset ImageDrawText(achievement_image, #arguments.text#, 75, 45, attr) />
		<cfset attr.size = 9 />
		<cfset ImageDrawText(achievement_image, "www.marcusegger.de", 160, 63, attr) />
		
		<cfreturn achievement_image />
	</cffunction>
	
</cfcomponent>
