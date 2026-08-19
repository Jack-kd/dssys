package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class g extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f44677a;

    /* renamed from: b, reason: collision with root package name */
    public final String f44678b;

    /* renamed from: c, reason: collision with root package name */
    public final x f44679c;

    /* renamed from: d, reason: collision with root package name */
    public final p f44680d;

    /* renamed from: e, reason: collision with root package name */
    public final o f44681e;

    /* renamed from: f, reason: collision with root package name */
    public final h f44682f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f44683g;

    public g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Companion");
        xmlPullParser.getAttributeValue(null, "id");
        this.f44677a = xmlPullParser.getAttributeValue(null, "width");
        this.f44678b = xmlPullParser.getAttributeValue(null, "height");
        xmlPullParser.getAttributeValue(null, "assetWidth");
        xmlPullParser.getAttributeValue(null, "assetHeight");
        xmlPullParser.getAttributeValue(null, "expandedWidth");
        xmlPullParser.getAttributeValue(null, "expandedHeight");
        xmlPullParser.getAttributeValue(null, "apiFramework");
        xmlPullParser.getAttributeValue(null, "adSlotID");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("StaticResource")) {
                    xmlPullParser.require(2, null, "StaticResource");
                    this.f44679c = new x(xmlPullParser);
                    xmlPullParser.require(3, null, "StaticResource");
                } else if (name != null && name.equals("IFrameResource")) {
                    xmlPullParser.require(2, null, "IFrameResource");
                    this.f44680d = new p(xmlPullParser);
                    xmlPullParser.require(3, null, "IFrameResource");
                } else if (name != null && name.equals("HTMLResource")) {
                    xmlPullParser.require(2, null, "HTMLResource");
                    this.f44681e = new o(xmlPullParser);
                    xmlPullParser.require(3, null, "HTMLResource");
                } else if (name != null && name.equals("AdParameters")) {
                    xmlPullParser.require(2, null, "AdParameters");
                    xmlPullParser.getAttributeValue(null, "xmlEncoded");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AdParameters");
                } else if (name != null && name.equals("AltText")) {
                    xmlPullParser.require(2, null, "AltText");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AltText");
                } else if (name != null && name.equals("CompanionClickThrough")) {
                    xmlPullParser.require(2, null, "CompanionClickThrough");
                    xmlPullParser.getAttributeValue(null, "id");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "CompanionClickThrough");
                } else if (name != null && name.equals("CompanionClickTracking")) {
                    xmlPullParser.require(2, null, "CompanionClickTracking");
                    this.f44682f = new h(xmlPullParser);
                    xmlPullParser.require(3, null, "CompanionClickTracking");
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
                    this.f44683g = arrayList;
                    xmlPullParser.require(3, null, "TrackingEvents");
                }
            }
        }
    }
}
