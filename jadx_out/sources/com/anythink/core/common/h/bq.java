package com.anythink.core.common.h;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class bq {

    /* renamed from: a, reason: collision with root package name */
    public int f4017a;

    /* renamed from: b, reason: collision with root package name */
    public String f4018b;

    /* renamed from: c, reason: collision with root package name */
    public int f4019c;

    /* renamed from: d, reason: collision with root package name */
    public int f4020d;

    /* renamed from: e, reason: collision with root package name */
    public long f4021e;

    /* renamed from: f, reason: collision with root package name */
    public String f4022f;

    /* renamed from: g, reason: collision with root package name */
    public String f4023g;

    /* renamed from: h, reason: collision with root package name */
    public ConcurrentHashMap<String, a> f4024h;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f4025a;

        /* renamed from: b, reason: collision with root package name */
        public String f4026b;

        /* renamed from: c, reason: collision with root package name */
        public String f4027c;

        /* renamed from: d, reason: collision with root package name */
        public int f4028d;

        /* renamed from: e, reason: collision with root package name */
        public int f4029e;

        /* renamed from: f, reason: collision with root package name */
        public long f4030f;

        public final String toString() {
            return "AdSourceImpressionInfo{unitId='" + this.f4025a + "', hourTimeFormat='" + this.f4026b + "', dateTimeFormat='" + this.f4027c + "', dayShowCount=" + this.f4028d + ", hourShowCount=" + this.f4029e + ", showTime=" + this.f4030f + '}';
        }
    }

    private a a(String str) {
        ConcurrentHashMap<String, a> concurrentHashMap = this.f4024h;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(str);
        }
        return null;
    }

    public final String toString() {
        return "PlacementImpressionInfo{format=" + this.f4017a + ", placementId='" + this.f4018b + "', dayShowCount=" + this.f4019c + ", hourShowCount=" + this.f4020d + ", showTime=" + this.f4021e + ", hourTimeFormat='" + this.f4022f + "', dateTimeFormat='" + this.f4023g + "'}";
    }

    private synchronized void a(String str, a aVar) {
        try {
            if (this.f4024h == null) {
                this.f4024h = new ConcurrentHashMap<>(3);
            }
            this.f4024h.put(str, aVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
