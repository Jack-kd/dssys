package com.smartdigimkt.v2;

import com.bykv.vk.component.ttvideo.player.MediaFormat;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes5.dex */
public final class u extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f44697a;

    /* renamed from: b, reason: collision with root package name */
    public final String f44698b;

    /* renamed from: c, reason: collision with root package name */
    public final String f44699c;

    /* renamed from: d, reason: collision with root package name */
    public final String f44700d;

    public u(XmlPullParser xmlPullParser) {
        xmlPullParser.getAttributeValue(null, "id");
        xmlPullParser.getAttributeValue(null, "delivery");
        this.f44698b = xmlPullParser.getAttributeValue(null, "type");
        xmlPullParser.getAttributeValue(null, MediaFormat.KEY_BIT_RATE);
        xmlPullParser.getAttributeValue(null, "minBitrate");
        xmlPullParser.getAttributeValue(null, "maxBitrate");
        this.f44699c = xmlPullParser.getAttributeValue(null, "width");
        this.f44700d = xmlPullParser.getAttributeValue(null, "height");
        xmlPullParser.getAttributeValue(null, "xPosition");
        xmlPullParser.getAttributeValue(null, "yPosition");
        xmlPullParser.getAttributeValue(null, "duration");
        xmlPullParser.getAttributeValue(null, "offset");
        xmlPullParser.getAttributeValue(null, "apiFramework");
        this.f44697a = a0.a(xmlPullParser);
    }
}
