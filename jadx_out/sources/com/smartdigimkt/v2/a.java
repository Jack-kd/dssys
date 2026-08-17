package com.smartdigimkt.v2;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes5.dex */
public final class a extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final s f44667a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f44668b;

    public a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Ad");
        xmlPullParser.getAttributeValue(null, "id");
        xmlPullParser.getAttributeValue(null, "sequence");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("InLine")) {
                    xmlPullParser.require(2, null, "InLine");
                    this.f44667a = new s(xmlPullParser);
                    xmlPullParser.require(3, null, "InLine");
                } else if (name == null || !name.equals("Wrapper")) {
                    a0.b(xmlPullParser);
                } else {
                    xmlPullParser.require(2, null, "Wrapper");
                    this.f44668b = new e0(xmlPullParser);
                    xmlPullParser.require(3, null, "Wrapper");
                }
            }
        }
    }
}
