
<h3>Simple Xbox Achievement Generator</h3>

<cfif cgi.request_method NEQ "post">
	<!--- show form --->
	<form action="" method="post" name="achievement">
		Achievement Text: 
		<input id="achievetext" name="achievetext" type="text" size="55" /> 
		<input type="submit" value="generate" />	
	</form>	
<cfelse>
	<!---  generate image --->
	<cfset oAchievement = createobject('component', 'cfc.achievement') />
	<cfset achievement_pic = oAchievement.generate(text=form.achievetext) />
	
	<cfif isdefined("achievement_pic")>
		<cfimage action="writeToBrowser" source="#achievement_pic#" format="jpeg" />
	</cfif>	
	
	<p style="padding:20px"><a href="example.cfm">neues Achievement erzeugen</a></p>
</cfif>