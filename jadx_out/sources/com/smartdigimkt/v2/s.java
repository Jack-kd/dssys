package com.smartdigimkt.v2;

import com.umeng.analytics.pro.cl;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class s extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final b f44687a;

    /* renamed from: b, reason: collision with root package name */
    public final k f44688b;

    /* renamed from: c, reason: collision with root package name */
    public final m f44689c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f44690d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f44691e;

    public s(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "InLine");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("AdSystem")) {
                    xmlPullParser.require(2, null, "AdSystem");
                    xmlPullParser.getAttributeValue(null, cl.f49059n);
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "AdSystem");
                } else if (name != null && name.equals("AdTitle")) {
                    xmlPullParser.require(2, null, "AdTitle");
                    this.f44687a = new b(xmlPullParser);
                    xmlPullParser.require(3, null, "AdTitle");
                } else if (name != null && name.equals("Description")) {
                    xmlPullParser.require(2, null, "Description");
                    this.f44688b = new k(xmlPullParser);
                    xmlPullParser.require(3, null, "Description");
                } else if (name != null && name.equals("Advertiser")) {
                    xmlPullParser.require(2, null, "Advertiser");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "Advertiser");
                } else if (name != null && name.equals("Pricing")) {
                    xmlPullParser.require(2, null, "Pricing");
                    xmlPullParser.getAttributeValue(null, "model");
                    xmlPullParser.getAttributeValue(null, DeepLinkPresetEvent.UMEventParamCurrency);
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "Pricing");
                } else if (name != null && name.equals("Survey")) {
                    xmlPullParser.require(2, null, "Survey");
                    a0.a(xmlPullParser);
                    xmlPullParser.require(3, null, "Survey");
                } else if (name != null && name.equals("Error")) {
                    xmlPullParser.require(2, null, "Error");
                    this.f44689c = new m(xmlPullParser);
                    xmlPullParser.require(3, null, "Error");
                } else if (name != null && name.equals("Impression")) {
                    if (this.f44690d == null) {
                        this.f44690d = new ArrayList();
                    }
                    xmlPullParser.require(2, null, "Impression");
                    this.f44690d.add(new r(xmlPullParser));
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
                    this.f44691e = arrayList;
                    xmlPullParser.require(3, null, "Creatives");
                } else if (name != null && name.equals("Extensions")) {
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
                } else if (name == null || !name.equals("AdVerifications")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "AdVerifications");
                    ArrayList arrayList3 = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name4 = xmlPullParser.getName();
                            if (name4 == null || !name4.equals("Verification")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Verification");
                                arrayList3.add(new c0(xmlPullParser));
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
