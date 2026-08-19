package com.smartdigimkt.q1;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.smartdigimkt.v1.p3;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.d1.b {

    /* renamed from: a, reason: collision with root package name */
    public g f42679a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.d0.b f42680b;

    /* renamed from: c, reason: collision with root package name */
    public o f42681c;

    /* renamed from: d, reason: collision with root package name */
    public WeakReference f42682d;

    @Override // com.smartdigimkt.d1.b
    public final void a(boolean z2) {
    }

    @Override // com.smartdigimkt.d1.b
    public final void close() {
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(String str) {
        g gVar = this.f42679a;
        if (gVar != null) {
            ((p3) gVar).a(str);
        }
    }

    @Override // com.smartdigimkt.d1.b
    public final void a() {
        close();
    }

    @Override // com.smartdigimkt.d1.b
    public final void a(String str, boolean z2) {
        Context context;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z2);
            WeakReference weakReference = this.f42682d;
            if (weakReference == null || (context = (Context) weakReference.get()) == null) {
                return;
            }
            o oVar = this.f42681c;
            if (oVar == null || !oVar.isShowing()) {
                o oVar2 = new o(context, bundle, this.f42679a, this.f42680b);
                this.f42681c = oVar2;
                oVar2.show();
            }
        } catch (Throwable unused) {
        }
    }
}
