package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.d5.d;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.z.b0;

/* loaded from: classes5.dex */
public abstract class BaseNewStyleSDKSplashATView extends BaseSdkSplashATView {

    /* renamed from: l0, reason: collision with root package name */
    public int f43260l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f43261m0;

    public BaseNewStyleSDKSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public final void a(int i2, boolean z2) {
        super.a(i2, z2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void b() {
        super.b();
        getMaterialRealSize();
    }

    public void getMaterialRealSize() {
        int i2;
        int i3;
        String str = this.f43217c.f41815f;
        if (TextUtils.isEmpty(str)) {
            c cVar = this.f43217c;
            int i4 = cVar.f41790K;
            if (i4 <= 0 || (i2 = cVar.f41791L) <= 0) {
                return;
            }
            this.f43260l0 = i4;
            this.f43261m0 = i2;
            return;
        }
        c cVar2 = this.f43217c;
        synchronized (cVar2) {
            i3 = cVar2.f41788I;
        }
        if (i3 > 0 || this.f43217c.b() > 0) {
            this.f43260l0 = this.f43217c.c();
            this.f43261m0 = this.f43217c.b();
            return;
        }
        e.a().getClass();
        if (e.b()) {
            return;
        }
        b0.a().getClass();
        int[] iArrA = d.a(b0.a(1, str));
        if (iArrA != null) {
            this.f43260l0 = iArrA[0];
            this.f43261m0 = iArrA[1];
        }
    }

    public BaseNewStyleSDKSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
