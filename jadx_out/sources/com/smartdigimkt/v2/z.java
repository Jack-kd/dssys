package com.smartdigimkt.v2;

import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class z extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f44706a;

    public z(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "VAST");
        xmlPullParser.getAttributeValue(null, cl.f49059n);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("Error")) {
                    xmlPullParser.require(2, null, "Error");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "Error");
                } else if (name == null || !name.equals("Ad")) {
                    a0.b(xmlPullParser);
                } else {
                    if (this.f44706a == null) {
                        this.f44706a = new ArrayList();
                    }
                    xmlPullParser.require(2, null, "Ad");
                    this.f44706a.add(new a(xmlPullParser));
                    xmlPullParser.require(3, null, "Ad");
                }
            }
        }
    }
}
