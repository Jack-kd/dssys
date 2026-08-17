package com.smartdigimkt.v2;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class q extends a0 {
    public q(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Icon");
        xmlPullParser.getAttributeValue(null, "program");
        xmlPullParser.getAttributeValue(null, "width");
        xmlPullParser.getAttributeValue(null, "height");
        xmlPullParser.getAttributeValue(null, "xPosition");
        xmlPullParser.getAttributeValue(null, "yPosition");
        xmlPullParser.getAttributeValue(null, "duration");
        xmlPullParser.getAttributeValue(null, "offset");
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
                } else if (name != null && name.equals("IconClicks")) {
                    xmlPullParser.require(2, null, "IconClicks");
                    xmlPullParser.require(2, null, "IconClicks");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 != null && name2.equals("IconClickThrough")) {
                                xmlPullParser.require(2, null, "IconClickThrough");
                                a0.a(xmlPullParser);
                                xmlPullParser.require(3, null, "IconClickThrough");
                            } else if (name2 == null || !name2.equals("IconClickTracking")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "IconClickTracking");
                                xmlPullParser.getAttributeValue(null, "id");
                                a0.a(xmlPullParser);
                                xmlPullParser.require(3, null, "IconClickTracking");
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "IconClicks");
                } else if (name == null || !name.equals("IconViewTracking")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "IconViewTracking");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "IconViewTracking");
                }
            }
        }
    }
}
