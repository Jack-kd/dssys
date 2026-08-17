package com.smartdigimkt.r1;

import android.content.Context;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class q extends d {

    /* renamed from: g, reason: collision with root package name */
    public com.smartdigimkt.p1.a f42978g;

    /* renamed from: h, reason: collision with root package name */
    public BaseSdkSplashATView f42979h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f42980i;

    public q(Context context, com.smartdigimkt.l3.a aVar, String str, boolean z2) {
        super(context, aVar, str, z2);
    }

    @Override // com.smartdigimkt.r1.d
    public final boolean d() {
        try {
            if (a()) {
                return com.smartdigimkt.s1.b.a(this.f42945a).a(this.f42949e, this.f42946b, this.f42948d);
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
