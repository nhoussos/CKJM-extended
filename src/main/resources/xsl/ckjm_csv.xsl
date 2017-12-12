<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
 (C) Copyright 2005 Julien Rentrop, Diomidis Spinellis

 Permission to use, copy, and distribute this software and its
 documentation for any purpose and without fee is hereby granted,
 provided that the above copyright notice appear in all copies and that
 both that copyright notice and this permission notice appear in
 supporting documentation.

 THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED
 WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
 MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

 $Id: \\dds\\src\\Research\\ckjm.RCS\\xsl\\ckjm.xsl,v 1.3 2005/10/15 09:03:57 dds Exp $

-->

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:for-each select="/ckjm/class[1]/*">
  <xsl:value-of select="name()"/>
  <xsl:text>|</xsl:text>
</xsl:for-each>
<xsl:text>&#xa;</xsl:text>
<xsl:for-each select="/ckjm/class">
  <xsl:sort select="name" data-type="text" order="ascending"/>
  <xsl:for-each select="*">
     <xsl:value-of select="text()"/>
     <xsl:text>|</xsl:text>
  </xsl:for-each>
  <xsl:text>&#xa;</xsl:text>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
