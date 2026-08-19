package com.smartdigimkt.e0;

import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;

/* loaded from: classes5.dex */
public final class l implements com.smartdigimkt.w2.x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f39996a;

    public l(m mVar) {
        this.f39996a = mVar;
    }

    @Override // com.smartdigimkt.w2.x
    public final void a() {
        m mVar = this.f39996a;
        n nVar = mVar.f40001e;
        String str = mVar.f39998b;
        long j2 = mVar.f40000d;
        String str2 = mVar.f39997a;
        if (nVar.f40002a && !TextUtils.isEmpty(str)) {
            com.smartdigimkt.b4.e.a().a(new s((WTWebView) t.f40027c.remove(str)));
        }
        nVar.a(true, null, 0, "", j2, str2);
    }

    @Override // com.smartdigimkt.w2.x
    public final void a(com.smartdigimkt.i0.f fVar) {
        n nVar = this.f39996a.f40001e;
        int i2 = TextUtils.equals(fVar.f40651a, com.anythink.core.common.inner.b.b.f4604u) ? 5 : 4;
        String strA = fVar.a();
        m mVar = this.f39996a;
        nVar.a(false, fVar, i2, strA, mVar.f40000d, mVar.f39997a);
    }
}
