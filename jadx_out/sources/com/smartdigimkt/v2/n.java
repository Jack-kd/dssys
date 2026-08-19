package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class n extends a0 {
    public n(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.getAttributeValue(null, "type");
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name == null || !name.equals("AdVerifications")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "AdVerifications");
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 == null || !name2.equals("Verification")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Verification");
                                arrayList.add(new c0(xmlPullParser));
                                xmlPullParser.require(3, null, "Verification");
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "AdVerifications");
                }
            }
        }
    }
}
