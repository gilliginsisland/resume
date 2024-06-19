<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, viewport-fit=cover" />
				<link rel="stylesheet" href="styles/bootstrap-reboot.min.css" />
				<link rel="stylesheet" href="styles/stylesheet.css" />
				<title><xsl:value-of select="resume/name" />: <xsl:value-of select="resume/title" /></title>
			</head>
			<body>
				<xsl:apply-templates match="resume" />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="resume">
		<div class="wrapper header">
			<div class="wrapper-inner flex-row">
				<div class="flex-grow avatar sidebar">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="headshot" />
						</xsl:attribute>
					</img>
				</div>
				<div class="flex-col flex-fluid">
					<div class="flex-grow heading">
						<h1 class="name">
							<xsl:value-of select="name" />
						</h1>
						<span class="tagline">
							<xsl:value-of select="title" />
						</span>
					</div>
					<div class="flex-row contact">
						<div>
							<xsl:apply-templates select="email" />
						</div>
						<div>
							<xsl:apply-templates select="address" />
						</div>
					</div>
					<div class="intro">
						<xsl:value-of select="description" />
					</div>
				</div>
			</div>
		</div>
		<div class="wrapper content">
			<div class="wrapper-inner flex-row">
				<div class="flex-grow sidebar">
					<section>
						<h2>Education</h2>
						<xsl:apply-templates select="education" />
					</section>
					<section>
						<h2>Skills</h2>
						<xsl:apply-templates select="skills" />
					</section>
				</div>
				<div class="flex-fluid main">
					<section>
						<h2>Work Experience</h2>
						<xsl:apply-templates select="experience" />
					</section>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="education">
		<p class="education">
			<xsl:for-each select="degree">
				<span class="title">
					<xsl:value-of select="." />
				</span>
			</xsl:for-each>
			<span class="name">
				<xsl:value-of select="name" />
			</span>
			<span class="address">
				<xsl:value-of select="address" />
			</span>
			<span class="year">
				<xsl:value-of select="year" />
			</span>
		</p>
	</xsl:template>

	<xsl:template match="skills">
		<section class="skills">
			<h6>
				<xsl:value-of select="@type" />
			</h6>
			<ul class="bullets">
				<xsl:for-each select="skill">
					<li>
						<xsl:value-of select="." />
					</li>
				</xsl:for-each>
			</ul>
		</section>
	</xsl:template>

	<xsl:template match="experience">
		<div class="experience flex-row">
			<div class="logo">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="logo" />
					</xsl:attribute>
				</img>
			</div>
			<div class="flex-fluid">
				<div class="title">
					<xsl:value-of select="title" />
				</div>
				<div class="name">
					<xsl:value-of select="name" />
					<span class="address"> - <xsl:value-of select="address" /></span>
				</div>
				<div class="year">
					<xsl:value-of select="from" /> - <xsl:value-of select="to" />
				</div>
			</div>
			<ul class="bullets">
				<xsl:for-each select="bullets/bullet">
					<li>
						<xsl:value-of select="." />
					</li>
				</xsl:for-each>
			</ul>
		</div>
	<xsl:choose>
			<xsl:when test="position() != last()">
				<hr />
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="resume/email">
		<svg id="Layer_1" style="enable-background:new 0 0 100.354 100.352;" version="1.1"
			viewBox="0 0 100.354 100.352" xml:space="preserve" xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink">
		<path d="M93.09,76.224c0.047-0.145,0.079-0.298,0.079-0.459V22.638c0-0.162-0.032-0.316-0.08-0.462  c-0.007-0.02-0.011-0.04-0.019-0.06c-0.064-0.171-0.158-0.325-0.276-0.46c-0.008-0.009-0.009-0.02-0.017-0.029  c-0.005-0.005-0.011-0.007-0.016-0.012c-0.126-0.134-0.275-0.242-0.442-0.323c-0.013-0.006-0.023-0.014-0.036-0.02  c-0.158-0.071-0.33-0.111-0.511-0.123c-0.018-0.001-0.035-0.005-0.053-0.005c-0.017-0.001-0.032-0.005-0.049-0.005H8.465  c-0.017,0-0.033,0.004-0.05,0.005c-0.016,0.001-0.032,0.004-0.048,0.005c-0.183,0.012-0.358,0.053-0.518,0.125  c-0.01,0.004-0.018,0.011-0.028,0.015c-0.17,0.081-0.321,0.191-0.448,0.327c-0.005,0.005-0.011,0.006-0.016,0.011  c-0.008,0.008-0.009,0.019-0.017,0.028c-0.118,0.135-0.213,0.29-0.277,0.461c-0.008,0.02-0.012,0.04-0.019,0.061  c-0.048,0.146-0.08,0.3-0.08,0.462v53.128c0,0.164,0.033,0.32,0.082,0.468c0.007,0.02,0.011,0.039,0.018,0.059  c0.065,0.172,0.161,0.327,0.28,0.462c0.007,0.008,0.009,0.018,0.016,0.026c0.006,0.007,0.014,0.011,0.021,0.018  c0.049,0.051,0.103,0.096,0.159,0.14c0.025,0.019,0.047,0.042,0.073,0.06c0.066,0.046,0.137,0.083,0.21,0.117  c0.018,0.008,0.034,0.021,0.052,0.028c0.181,0.077,0.38,0.121,0.589,0.121h83.204c0.209,0,0.408-0.043,0.589-0.121  c0.028-0.012,0.054-0.03,0.081-0.044c0.062-0.031,0.124-0.063,0.181-0.102c0.03-0.021,0.057-0.048,0.086-0.071  c0.051-0.041,0.101-0.082,0.145-0.129c0.008-0.008,0.017-0.014,0.025-0.022c0.008-0.009,0.01-0.021,0.018-0.03  c0.117-0.134,0.211-0.288,0.275-0.458C93.078,76.267,93.083,76.246,93.09,76.224z M9.965,26.04l25.247,23.061L9.965,72.346V26.04z   M61.711,47.971c-0.104,0.068-0.214,0.125-0.301,0.221c-0.033,0.036-0.044,0.083-0.073,0.121l-11.27,10.294L12.331,24.138h75.472  L61.711,47.971z M37.436,51.132l11.619,10.613c0.287,0.262,0.649,0.393,1.012,0.393s0.725-0.131,1.011-0.393l11.475-10.481  l25.243,23.002H12.309L37.436,51.132z M64.778,49.232L90.169,26.04v46.33L64.778,49.232z"/>
	</svg>
	<xsl:value-of select="." />
	</xsl:template>

	<xsl:template match="resume/address">
		<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			viewBox="0 0 99.313 99.313" style="enable-background:new 0 0 99.313 99.313;"
			xml:space="preserve">
		<g>
			<path d="M69.693,38.046c0.005,0,0.011,0,0.016,0c2.087,0,4.049-0.812,5.527-2.286
				c1.482-1.479,2.3-3.445,2.302-5.539c0.004-4.323-3.508-7.844-7.828-7.85c-0.002,0-0.005,0-0.007,0c-4.319,0-7.835,3.508-7.84,7.823
				c-0.004,2.096,0.811,4.068,2.292,5.552C65.634,37.229,67.602,38.046,69.693,38.046z M69.702,25.34c0.002,0,0.004,0,0.005,0
				c2.684,0.003,4.864,2.192,4.862,4.878c-0.001,1.3-0.509,2.521-1.429,3.439c-0.918,0.916-2.137,1.419-3.435,1.419
				c-0.003,0-0.007,0-0.01,0c-1.3,0-2.521-0.507-3.44-1.427c-0.92-0.922-1.426-2.147-1.424-3.451
				C64.835,27.519,67.019,25.34,69.702,25.34z"/>
			<path d="M95.31,84.301L80.282,49.146l5.12-8.19c0.055-0.088,0.1-0.181,0.133-0.276
				c1.751-2.905,2.676-6.196,2.676-9.538c0.008-4.949-1.908-9.603-5.396-13.104c-3.489-3.503-8.137-5.437-13.088-5.444
				c-0.008,0-0.015,0-0.022,0c-10.2,0-18.51,8.292-18.526,18.496c0,3.393,0.928,6.703,2.687,9.59c0.028,0.071,0.062,0.141,0.103,0.208
				l2.779,4.667H21.197c-0.595,0-1.132,0.354-1.365,0.901L3.656,84.301c-0.195,0.458-0.148,0.985,0.126,1.401
				c0.275,0.416,0.74,0.667,1.239,0.667h88.927c0.499,0,0.964-0.25,1.239-0.667C95.459,85.286,95.505,84.759,95.31,84.301z
				 M56.524,39.338c-1.556-2.468-2.378-5.32-2.378-8.245c0.015-8.567,6.991-15.529,15.557-15.529c0.007,0,0.013,0,0.02,0
				c4.156,0.006,8.06,1.629,10.989,4.57c2.928,2.94,4.537,6.848,4.53,11.004c0,0.001,0,0.001,0,0.002c0,2.891-0.827,5.741-2.393,8.241
				c-0.054,0.084-0.097,0.173-0.13,0.265l-13.335,21.33l-8.768-14.724c-0.011-0.018-0.02-0.036-0.032-0.053l-3.928-6.596
				C56.622,39.511,56.578,39.422,56.524,39.338z M22.173,48.524h3.383c0.212,4.235,3.843,5.83,6.52,6.998
				c1.405,0.613,2.858,1.246,3.314,2.024c0.72,1.228,0.255,2.083-1.155,4.041c-1.289,1.789-2.894,4.015-1.796,6.934
				c1.702,4.526,10.53,5.742,20.208,6.678c1.757,0.169,3.273,0.316,4.225,0.478c7.474,1.269,9.984,5.506,10.802,7.726H7.267
				L22.173,48.524z M70.791,83.4c-0.676-2.552-3.356-8.944-13.423-10.652c-1.056-0.179-2.621-0.331-4.435-0.506
				c-5.363-0.519-16.523-1.598-17.715-4.768c-0.512-1.36,0.208-2.464,1.425-4.152c1.298-1.8,3.074-4.266,1.308-7.279
				c-0.944-1.611-2.848-2.441-4.688-3.244c-2.793-1.217-4.529-2.153-4.72-4.276h29.97l9.565,16.062c0.265,0.445,0.742,0.72,1.26,0.725
				c0.005,0,0.011,0,0.016,0c0.512,0,0.987-0.263,1.259-0.697l7.752-12.4L91.697,83.4H70.791z"/>
		</g>
	</svg>
	<xsl:value-of select="." />
	</xsl:template>
</xsl:stylesheet>
