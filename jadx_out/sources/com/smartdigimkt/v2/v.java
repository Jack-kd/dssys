package com.smartdigimkt.v2;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class v extends a0 {
    public v(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "NonLinear");
        xmlPullParser.getAttributeValue(null, "id");
        xmlPullParser.getAttributeValue(null, "width");
        xmlPullParser.getAttributeValue(null, "height");
        xmlPullParser.getAttributeValue(null, "expandedWidth");
        xmlPullParser.getAttributeValue(null, "expandedHeight");
        xmlPullParser.getAttributeValue(null, "scalable");
        xmlPullParser.getAttributeValue(null, "maintainAspectRatio");
        xmlPullParser.getAttributeValue(null, "minSuggestedDuration");
        xmlPullParser.getAttributeValue(null, "apiFramework");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("StaticResource")) {
                    xmlPullParser.require(2, null, "StaticResource");
                    xmlPullParser.getAttributeValue(null, "creativeType");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "StaticResource");
                } else if (name != null && name.equals("IFrameResource")) {
                    xmlPullParser.require(2, null, "IFrameResource");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "IFrameResource");
                } else if (name != null && name.equals("HTMLResource")) {
                    xmlPullParser.require(2, null, "HTMLResource");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "HTMLResource");
                } else if (name != null && name.equals("AdParameters")) {
                    xmlPullParser.require(2, null, "AdParameters");
                    xmlPullParser.getAttributeValue(null, "xmlEncoded");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AdParameters");
                } else if (name != null && name.equals("NonLinearClickThrough")) {
                    xmlPullParser.require(2, null, "NonLinearClickThrough");
                    xmlPullParser.getAttributeValue(null, "id");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "NonLinearClickThrough");
                } else if (name == null || !name.equals("NonLinearClickTracking")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "NonLinearClickTracking");
                    xmlPullParser.getAttributeValue(null, "id");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "NonLinearClickTracking");
                }
            }
        }
    }
}
