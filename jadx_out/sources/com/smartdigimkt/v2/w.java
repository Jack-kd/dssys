package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class w extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f44701a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f44702b;

    public w(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "NonLinearAds");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("NonLinear")) {
                    xmlPullParser.require(2, null, "NonLinear");
                    this.f44701a.add(new v(xmlPullParser));
                    xmlPullParser.require(3, null, "NonLinear");
                } else if (name == null || !name.equals("TrackingEvents")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "TrackingEvents");
                    ArrayList arrayList = new ArrayList();
                    xmlPullParser.require(2, null, "TrackingEvents");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 == null || !name2.equals("Tracking")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Tracking");
                                arrayList.add(new y(xmlPullParser));
                                xmlPullParser.require(3, null, "Tracking");
                            }
                        }
                    }
                    this.f44702b = arrayList;
                    xmlPullParser.require(3, null, "TrackingEvents");
                }
            }
        }
    }
}
