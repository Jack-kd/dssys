package com.czhj.sdk.common.utils;

import java.io.Serializable;
import java.util.Calendar;
import java.util.UUID;

/* loaded from: classes3.dex */
public class AdvertisingId implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    private static final long f29423c = 86400000;

    /* renamed from: a, reason: collision with root package name */
    Calendar f29424a;

    /* renamed from: b, reason: collision with root package name */
    final String f29425b;
    public final String mAdvertisingId;
    public final boolean mDoNotTrack;

    public AdvertisingId(String str, String str2, boolean z2, long j2) {
        this.mAdvertisingId = str;
        this.f29425b = str2;
        this.mDoNotTrack = z2;
        Calendar calendar = Calendar.getInstance();
        this.f29424a = calendar;
        calendar.setTimeInMillis(j2);
    }

    public static String a() {
        return UUID.randomUUID().toString();
    }

    public static AdvertisingId generateExpiredAdvertisingId() {
        return new AdvertisingId(null, a(), false, Calendar.getInstance().getTimeInMillis() - 86400001);
    }

    public boolean b() {
        return Calendar.getInstance().getTimeInMillis() - this.f29424a.getTimeInMillis() >= 86400000;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        return this.mDoNotTrack == advertisingId.mDoNotTrack && this.mAdvertisingId.equals(advertisingId.mAdvertisingId) && this.f29425b.equals(advertisingId.f29425b);
    }

    public int hashCode() {
        return (((this.mAdvertisingId.hashCode() * 31) + this.f29425b.hashCode()) * 31) + (this.mDoNotTrack ? 1 : 0);
    }

    public String toString() {
        return "AdvertisingId{mLastRotation=" + this.f29424a + ", mAdvertisingId='" + this.mAdvertisingId + "', mSigmobId='" + this.f29425b + "', mDoNotTrack=" + this.mDoNotTrack + '}';
    }
}
