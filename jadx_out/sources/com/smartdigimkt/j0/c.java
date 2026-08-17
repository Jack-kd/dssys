package com.smartdigimkt.j0;

import com.umeng.analytics.pro.ca;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.z0.l f40857a;

    /* renamed from: b, reason: collision with root package name */
    public final long f40858b;

    /* renamed from: c, reason: collision with root package name */
    public final long f40859c;

    /* renamed from: d, reason: collision with root package name */
    public final long f40860d;

    /* renamed from: e, reason: collision with root package name */
    public final long f40861e;

    /* renamed from: f, reason: collision with root package name */
    public final int f40862f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f40863g;

    /* renamed from: h, reason: collision with root package name */
    public int f40864h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f40865i;

    public c() {
        com.smartdigimkt.z0.l lVar = new com.smartdigimkt.z0.l();
        a(2500, 0, "bufferForPlaybackMs", "0");
        a(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(ca.f49002b, 2500, "minBufferMs", "bufferForPlaybackMs");
        a(ca.f49002b, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(50000, ca.f49002b, "maxBufferMs", "minBufferMs");
        this.f40857a = lVar;
        this.f40858b = ca.f49002b * 1000;
        this.f40859c = 50000 * 1000;
        this.f40860d = 2500 * 1000;
        this.f40861e = 5000 * 1000;
        this.f40862f = -1;
        this.f40863g = true;
    }

    public final void a(boolean z2) {
        this.f40864h = 0;
        this.f40865i = false;
        if (z2) {
            com.smartdigimkt.z0.l lVar = this.f40857a;
            synchronized (lVar) {
                lVar.a(0);
            }
        }
    }

    public static void a(int i2, int i3, String str, String str2) {
        com.smartdigimkt.a1.a.a(str + " cannot be less than " + str2, i2 >= i3);
    }
}
