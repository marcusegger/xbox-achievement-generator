<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Simple Xbox Achievement Generator</title>
	<link rel="stylesheet" href="">
</head>
<body>
<h3>Simple Xbox Achievement Generator</h3>
<cfif cgi.request_method NEQ "post">
	<form action="" method="post" name="achievement">
		Achievement Text: 
		<input id="achievetext" name="achievetext" type="text" size="55" placeholder="your text" required /> 
		<input type="submit" value="generate" />	
	</form>	
<cfelse>
	<cfscript>
		oAchievement = createobject('component', 'cfc.achievement');
		achievement_pic = oAchievement.generate(text=form.achievetext);

		if (isdefined("achievement_pic")) {
			image action="writeToBrowser" source="#achievement_pic#" format="jpeg";
		}
	</cfscript>
	<div style="padding:20px 0;"><a href="example.cfm">neues Achievement erzeugen</a></div>
</cfif>	
</body>
</html>