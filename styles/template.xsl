<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, viewport-fit=cover"/>
		<link rel="stylesheet" href="styles/bootstrap-reboot.min.css"/>
		<link rel="stylesheet" href="styles/stylesheet.css"/>
		<title><xsl:value-of select="resume/name"/>: <xsl:value-of select="resume/title"/></title>
	</head>
	<body>
		<xsl:apply-templates match="resume"/>
	</body>
	</html>
</xsl:template>

<xsl:template match="resume">
	<div class="wrapper header">
		<div class="wrapper-inner flex-row">
			<div class="flex-grow avatar sidebar">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="headshot"/>
					</xsl:attribute>
				</img>
			</div>
			<div class="flex-col flex-fluid">
				<div class="flex-grow heading">
					<h1 class="name"><xsl:value-of select="name"/></h1>
					<span class="tagline"><xsl:value-of select="title"/></span>
				</div>
				<div class="flex-row contact">
					<div><xsl:apply-templates select="email"/></div>
					<div><xsl:apply-templates select="address"/></div>
				</div>
				<div class="intro"><xsl:value-of select="description"/></div>
			</div>
		</div>
	</div>
	<div class="wrapper content">
		<div class="wrapper-inner flex-row">
			<div class="flex-grow sidebar">
				<section>
					<h2>Education</h2>
					<xsl:apply-templates select="education"/>
				</section>
			</div>
			<div class="flex-fluid main">
				<section>
					<h2>Work Experience</h2>
					<xsl:apply-templates select="experience"/>
				</section>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template match="education">
	<p>
		<xsl:for-each select="degree">
			<span class="title"><xsl:value-of select="."/></span>
		</xsl:for-each>
		<span class="name"><xsl:value-of select="name"/></span>
		<span class="address"><xsl:value-of select="address"/></span>
		<span class="year"><xsl:value-of select="year"/></span>
	</p>
</xsl:template>

<xsl:template match="experience">
	<div class="experience flex-row">
		<div class="logo">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="logo"/>
				</xsl:attribute>
			</img>
		</div>
		<div class="flex-fluid">
			<div class="title"><xsl:value-of select="title"/></div>
			<div class="name">
				<xsl:value-of select="name"/>
				<span class="address">
					- <xsl:value-of select="address"/>
				</span>
			</div>
			<div class="year">
				<xsl:value-of select="from"/> - <xsl:value-of select="to"/>
			</div>
			<p class="description">
				<xsl:value-of select="description"/>
			</p>
		</div>
	</div>
	<xsl:choose>
		<xsl:when test="position() != last()">
			<hr/>
		</xsl:when>
	</xsl:choose>
</xsl:template>

<xsl:template match="resume/email">
	<img class="icon email" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaWQ9IkxheWVyXzEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwMC4zNTQgMTAwLjM1MjsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDEwMC4zNTQgMTAwLjM1MiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+PHBhdGggZD0iTTkzLjA5LDc2LjIyNGMwLjA0Ny0wLjE0NSwwLjA3OS0wLjI5OCwwLjA3OS0wLjQ1OVYyMi42MzhjMC0wLjE2Mi0wLjAzMi0wLjMxNi0wLjA4LTAuNDYyICBjLTAuMDA3LTAuMDItMC4wMTEtMC4wNC0wLjAxOS0wLjA2Yy0wLjA2NC0wLjE3MS0wLjE1OC0wLjMyNS0wLjI3Ni0wLjQ2Yy0wLjAwOC0wLjAwOS0wLjAwOS0wLjAyLTAuMDE3LTAuMDI5ICBjLTAuMDA1LTAuMDA1LTAuMDExLTAuMDA3LTAuMDE2LTAuMDEyYy0wLjEyNi0wLjEzNC0wLjI3NS0wLjI0Mi0wLjQ0Mi0wLjMyM2MtMC4wMTMtMC4wMDYtMC4wMjMtMC4wMTQtMC4wMzYtMC4wMiAgYy0wLjE1OC0wLjA3MS0wLjMzLTAuMTExLTAuNTExLTAuMTIzYy0wLjAxOC0wLjAwMS0wLjAzNS0wLjAwNS0wLjA1My0wLjAwNWMtMC4wMTctMC4wMDEtMC4wMzItMC4wMDUtMC4wNDktMC4wMDVIOC40NjUgIGMtMC4wMTcsMC0wLjAzMywwLjAwNC0wLjA1LDAuMDA1Yy0wLjAxNiwwLjAwMS0wLjAzMiwwLjAwNC0wLjA0OCwwLjAwNWMtMC4xODMsMC4wMTItMC4zNTgsMC4wNTMtMC41MTgsMC4xMjUgIGMtMC4wMSwwLjAwNC0wLjAxOCwwLjAxMS0wLjAyOCwwLjAxNWMtMC4xNywwLjA4MS0wLjMyMSwwLjE5MS0wLjQ0OCwwLjMyN2MtMC4wMDUsMC4wMDUtMC4wMTEsMC4wMDYtMC4wMTYsMC4wMTEgIGMtMC4wMDgsMC4wMDgtMC4wMDksMC4wMTktMC4wMTcsMC4wMjhjLTAuMTE4LDAuMTM1LTAuMjEzLDAuMjktMC4yNzcsMC40NjFjLTAuMDA4LDAuMDItMC4wMTIsMC4wNC0wLjAxOSwwLjA2MSAgYy0wLjA0OCwwLjE0Ni0wLjA4LDAuMy0wLjA4LDAuNDYydjUzLjEyOGMwLDAuMTY0LDAuMDMzLDAuMzIsMC4wODIsMC40NjhjMC4wMDcsMC4wMiwwLjAxMSwwLjAzOSwwLjAxOCwwLjA1OSAgYzAuMDY1LDAuMTcyLDAuMTYxLDAuMzI3LDAuMjgsMC40NjJjMC4wMDcsMC4wMDgsMC4wMDksMC4wMTgsMC4wMTYsMC4wMjZjMC4wMDYsMC4wMDcsMC4wMTQsMC4wMTEsMC4wMjEsMC4wMTggIGMwLjA0OSwwLjA1MSwwLjEwMywwLjA5NiwwLjE1OSwwLjE0YzAuMDI1LDAuMDE5LDAuMDQ3LDAuMDQyLDAuMDczLDAuMDZjMC4wNjYsMC4wNDYsMC4xMzcsMC4wODMsMC4yMSwwLjExNyAgYzAuMDE4LDAuMDA4LDAuMDM0LDAuMDIxLDAuMDUyLDAuMDI4YzAuMTgxLDAuMDc3LDAuMzgsMC4xMjEsMC41ODksMC4xMjFoODMuMjA0YzAuMjA5LDAsMC40MDgtMC4wNDMsMC41ODktMC4xMjEgIGMwLjAyOC0wLjAxMiwwLjA1NC0wLjAzLDAuMDgxLTAuMDQ0YzAuMDYyLTAuMDMxLDAuMTI0LTAuMDYzLDAuMTgxLTAuMTAyYzAuMDMtMC4wMjEsMC4wNTctMC4wNDgsMC4wODYtMC4wNzEgIGMwLjA1MS0wLjA0MSwwLjEwMS0wLjA4MiwwLjE0NS0wLjEyOWMwLjAwOC0wLjAwOCwwLjAxNy0wLjAxNCwwLjAyNS0wLjAyMmMwLjAwOC0wLjAwOSwwLjAxLTAuMDIxLDAuMDE4LTAuMDMgIGMwLjExNy0wLjEzNCwwLjIxMS0wLjI4OCwwLjI3NS0wLjQ1OEM5My4wNzgsNzYuMjY3LDkzLjA4Myw3Ni4yNDYsOTMuMDksNzYuMjI0eiBNOS45NjUsMjYuMDRsMjUuMjQ3LDIzLjA2MUw5Ljk2NSw3Mi4zNDZWMjYuMDR6ICAgTTYxLjcxMSw0Ny45NzFjLTAuMTA0LDAuMDY4LTAuMjE0LDAuMTI1LTAuMzAxLDAuMjIxYy0wLjAzMywwLjAzNi0wLjA0NCwwLjA4My0wLjA3MywwLjEyMWwtMTEuMjcsMTAuMjk0TDEyLjMzMSwyNC4xMzhoNzUuNDcyICBMNjEuNzExLDQ3Ljk3MXogTTM3LjQzNiw1MS4xMzJsMTEuNjE5LDEwLjYxM2MwLjI4NywwLjI2MiwwLjY0OSwwLjM5MywxLjAxMiwwLjM5M3MwLjcyNS0wLjEzMSwxLjAxMS0wLjM5M2wxMS40NzUtMTAuNDgxICBsMjUuMjQzLDIzLjAwMkgxMi4zMDlMMzcuNDM2LDUxLjEzMnogTTY0Ljc3OCw0OS4yMzJMOTAuMTY5LDI2LjA0djQ2LjMzTDY0Ljc3OCw0OS4yMzJ6Ii8+PC9zdmc+"/>
	<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="resume/address">
	<img class="icon home" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaWQ9Ikljb25zIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAzMiAzMjsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDMyIDMyIiB4bWw6c3BhY2U9InByZXNlcnZlIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOm5vbmU7c3Ryb2tlOiMwMDAwMDA7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT48cGF0aCBjbGFzcz0ic3QwIiBkPSJNMjQsMTAuOWMwLDctOCwxMy4xLTgsMTMuMXMtOC02LjEtOC0xMy4xQzgsNi41LDExLjYsMywxNiwzUzI0LDYuNSwyNCwxMC45eiIvPjxwb2x5bGluZSBjbGFzcz0ic3QwIiBwb2ludHM9IjE5LjIsMjEgMjUsMjEgMjksMjkgMywyOSA3LDIxIDEyLjgsMjEgIi8+PHBvbHlsaW5lIGNsYXNzPSJzdDAiIHBvaW50cz0iMTIsMTEgMTYsOCAyMCwxMSAiLz48cG9seWxpbmUgY2xhc3M9InN0MCIgcG9pbnRzPSIxOSwxMC4zIDE5LDE1IDEzLDE1IDEzLDEwLjMgIi8+PC9zdmc+"/>
	<xsl:value-of select="."/>
</xsl:template>
</xsl:stylesheet>
