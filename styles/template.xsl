<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/resume">
<html>
<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="styles/bootstrap-reboot.min.css"/>
	<link rel="stylesheet" href="styles/stylesheet.css"/>
	<title><xsl:value-of select="name"/>: <xsl:value-of select="tagline"/></title>
</head>
<body>
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
					<span class="tagline"><xsl:value-of select="tagline"/></span>
				</div>
				<div class="flex-row contact">
					<div><i class="icon home"/><xsl:value-of select="address"/></div>
					<div><i class="icon email"/><xsl:value-of select="email"/></div>
				</div>
				<div class="intro"><xsl:value-of select="bio"/></div>
			</div>
		</div>
	</div>
	<div class="wrapper content">
		<div class="wrapper-inner flex-row">
			<div class="flex-grow sidebar">
				<section>
					<h2>Education</h2>
					<xsl:for-each select="education">
						<p>
							<xsl:for-each select="degree">
								<span class="title"><xsl:value-of select="."/></span>
							</xsl:for-each>
							<span class="name"><xsl:value-of select="name"/></span>
							<span class="address"><xsl:value-of select="address"/></span>
							<span class="year"><xsl:value-of select="year"/></span>
						</p>
					</xsl:for-each>
				</section>
			</div>
			<div class="flex-fluid main">
				<section>
					<h2>Work Experience</h2>
					<xsl:for-each select="experience">
						<div class="experience flex-row">
							<div class="logo">
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="logo"/>
									</xsl:attribute>
								</img>
							</div>
							<div class="flex-fluid">
								<div class="flex-row">
									<div class="">
										<div class="title"><xsl:value-of select="title"/></div>
										<div class="name"><xsl:value-of select="name"/></div>
									</div>
									<div class="">
										<div class="year"><xsl:value-of select="from"/> - <xsl:value-of select="to"/></div>
										<div class="address"><xsl:value-of select="address"/></div>
									</div>
								</div>
								<p class="description"><xsl:value-of select="description"/></p>
							</div>
						</div>
					</xsl:for-each>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
