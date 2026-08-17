package com.smartdigimkt.t;

import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.h;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f44143a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44144b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f44145c;

    public e(int i2, String str, long j2) {
        this.f44143a = i2;
        this.f44144b = str;
        this.f44145c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (SDKContext.getInstance().d() == null) {
            return;
        }
        int iA = y.a(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "oaid_fail_count", 0);
        if (this.f44143a != 6) {
            if (iA >= 3) {
                return;
            }
            iA++;
            y.b(SDKContext.getInstance().d(), "sdm_adx_rp_sdk", "oaid_fail_count", iA);
        }
        h.a(iA, this.f44143a, this.f44144b, this.f44145c);
    }
}
