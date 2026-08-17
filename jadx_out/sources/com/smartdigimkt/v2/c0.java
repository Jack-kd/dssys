package com.smartdigimkt.v2;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class c0 extends a0 {
    public c0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.getAttributeValue(null, "vendor");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("JavaScriptResource")) {
                    xmlPullParser.require(2, null, "JavaScriptResource");
                    xmlPullParser.getAttributeValue(null, "apiFramework");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "JavaScriptResource");
                } else if (name == null || !name.equals("VerificationParameters")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "VerificationParameters");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "VerificationParameters");
                }
            }
        }
    }
}
