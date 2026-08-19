package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class d0 extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final e f44671a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f44672b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f44673c = new ArrayList();

    public d0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "VideoClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("ClickThrough")) {
                    xmlPullParser.require(2, null, "ClickThrough");
                    this.f44671a = new e(xmlPullParser);
                    xmlPullParser.require(3, null, "ClickThrough");
                } else if (name != null && name.equals("ClickTracking")) {
                    xmlPullParser.require(2, null, "ClickTracking");
                    this.f44672b.add(new f(xmlPullParser));
                    xmlPullParser.require(3, null, "ClickTracking");
                } else if (name == null || !name.equals("CustomClick")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "CustomClick");
                    this.f44673c.add(new j(xmlPullParser));
                    xmlPullParser.require(3, null, "CustomClick");
                }
            }
        }
    }
}
