package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class t extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f44692a;

    /* renamed from: b, reason: collision with root package name */
    public final l f44693b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f44694c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f44695d;

    /* renamed from: e, reason: collision with root package name */
    public final d0 f44696e;

    public t(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Linear");
        this.f44692a = xmlPullParser.getAttributeValue(null, "skipoffset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("AdParameters")) {
                    xmlPullParser.require(2, null, "AdParameters");
                    xmlPullParser.getAttributeValue(null, "xmlEncoded");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AdParameters");
                } else if (name != null && name.equals("Duration")) {
                    xmlPullParser.require(2, null, "Duration");
                    this.f44693b = new l(xmlPullParser);
                    xmlPullParser.require(3, null, "Duration");
                } else if (name != null && name.equals("MediaFiles")) {
                    xmlPullParser.require(2, null, "MediaFiles");
                    ArrayList arrayList = new ArrayList();
                    xmlPullParser.require(2, null, "MediaFiles");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 == null || !name2.equals("MediaFile")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "MediaFile");
                                arrayList.add(new u(xmlPullParser));
                                xmlPullParser.require(3, null, "MediaFile");
                            }
                        }
                    }
                    this.f44694c = arrayList;
                    xmlPullParser.require(3, null, "MediaFiles");
                } else if (name != null && name.equals("TrackingEvents")) {
                    xmlPullParser.require(2, null, "TrackingEvents");
                    ArrayList arrayList2 = new ArrayList();
                    xmlPullParser.require(2, null, "TrackingEvents");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name3 = xmlPullParser.getName();
                            if (name3 == null || !name3.equals("Tracking")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Tracking");
                                arrayList2.add(new y(xmlPullParser));
                                xmlPullParser.require(3, null, "Tracking");
                            }
                        }
                    }
                    this.f44695d = arrayList2;
                    xmlPullParser.require(3, null, "TrackingEvents");
                } else if (name != null && name.equals("VideoClicks")) {
                    xmlPullParser.require(2, null, "VideoClicks");
                    this.f44696e = new d0(xmlPullParser);
                    xmlPullParser.require(3, null, "VideoClicks");
                } else if (name == null || !name.equals("Icons")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "Icons");
                    ArrayList arrayList3 = new ArrayList();
                    xmlPullParser.require(2, null, "Icons");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name4 = xmlPullParser.getName();
                            if (name4 == null || !name4.equals("Icon")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Icon");
                                arrayList3.add(new q(xmlPullParser));
                                xmlPullParser.require(3, null, "Icon");
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "Icons");
                }
            }
        }
    }
}
