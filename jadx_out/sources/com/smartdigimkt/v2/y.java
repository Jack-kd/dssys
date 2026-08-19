package com.smartdigimkt.v2;

import androidx.core.app.NotificationCompat;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes5.dex */
public final class y extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f44704a;

    /* renamed from: b, reason: collision with root package name */
    public final String f44705b;

    public y(XmlPullParser xmlPullParser) {
        this.f44704a = xmlPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_EVENT);
        this.f44705b = a0.a(xmlPullParser);
    }
}
