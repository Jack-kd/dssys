package com.smartdigimkt.v2;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class i extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final t f44684a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f44685b;

    /* renamed from: c, reason: collision with root package name */
    public final w f44686c;

    public i(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creative");
        xmlPullParser.getAttributeValue(null, "id");
        xmlPullParser.getAttributeValue(null, "sequence");
        xmlPullParser.getAttributeValue(null, "adID");
        xmlPullParser.getAttributeValue(null, "apiFramework");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("CreativeExtensions")) {
                    a0.b(xmlPullParser);
                } else if (name != null && name.equals("Linear")) {
                    xmlPullParser.require(2, null, "Linear");
                    this.f44684a = new t(xmlPullParser);
                    xmlPullParser.require(3, null, "Linear");
                } else if (name != null && name.equals("CompanionAds")) {
                    xmlPullParser.require(2, null, "CompanionAds");
                    ArrayList arrayList = new ArrayList();
                    xmlPullParser.require(2, null, "CompanionAds");
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name2 = xmlPullParser.getName();
                            if (name2 == null || !name2.equals("Companion")) {
                                a0.b(xmlPullParser);
                            } else {
                                xmlPullParser.require(2, null, "Companion");
                                arrayList.add(new g(xmlPullParser));
                                xmlPullParser.require(3, null, "Companion");
                            }
                        }
                    }
                    this.f44685b = arrayList;
                    xmlPullParser.require(3, null, "CompanionAds");
                } else if (name == null || !name.equals("NonLinearAds")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "NonLinearAds");
                    this.f44686c = new w(xmlPullParser);
                    xmlPullParser.require(3, null, "NonLinearAds");
                }
            }
        }
    }
}
