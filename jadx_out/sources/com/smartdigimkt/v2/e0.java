package com.smartdigimkt.v2;

import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class e0 extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f44674a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f44675b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f44676c;

    public e0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Wrapper");
        xmlPullParser.getAttributeValue(null, "followAdditionalWrappers");
        xmlPullParser.getAttributeValue(null, "allowMultipleAds");
        xmlPullParser.getAttributeValue(null, "fallbackOnNoAd");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("AdSystem")) {
                    xmlPullParser.require(2, null, "AdSystem");
                    xmlPullParser.getAttributeValue(null, cl.f49059n);
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AdSystem");
                } else if (name != null && name.equals("Error")) {
                    xmlPullParser.require(2, null, "Error");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "Error");
                } else if (name != null && name.equals("VASTAdTagURI")) {
                    xmlPullParser.require(2, null, "VASTAdTagURI");
                    this.f44674a = new b0(xmlPullParser);
                    xmlPullParser.require(3, null, "VASTAdTagURI");
                } else if (name != null && name.equals("Impression")) {
                    if (this.f44675b == null) {
                        this.f44675b = new ArrayList();
                    }
                    xmlPullParser.require(2, null, "Impression");
                    this.f44675b.add(new r(xmlPullParser));
                    xmlPullParser.require(3, null, "Impression");
                } else if (name != null && name.equals("Creatives")) {
                    xmlPullParser.require(2, null, "Creatives");
                    ArrayList arrayList = new ArrayList();
                    xmlPullParser.require(2, null, "Creatives");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 == null || !name2.equals("Creative")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Creative");
                                arrayList.add(new i(xmlPullParser));
                                xmlPullParser.require(3, null, "Creative");
                            }
                        }
                    }
                    this.f44676c = arrayList;
                    xmlPullParser.require(3, null, "Creatives");
                } else if (name == null || !name.equals("Extensions")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "Extensions");
                    ArrayList arrayList2 = new ArrayList();
                    xmlPullParser.require(2, null, "Extensions");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name3 = xmlPullParser.getName();
                            if (name3 == null || !name3.equals("Extension")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Extension");
                                arrayList2.add(new n(xmlPullParser));
                                xmlPullParser.require(3, null, "Extension");
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "Extensions");
                }
            }
        }
    }
}
