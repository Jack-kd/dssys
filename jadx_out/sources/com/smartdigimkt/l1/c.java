package com.smartdigimkt.l1;

import android.app.Activity;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.m3.k;
import com.smartdigimkt.p1.e;
import com.smartdigimkt.sdk.basead.ui.BaseATActivity;
import com.smartdigimkt.sdk.basead.ui.BaseBannerATView;
import com.smartdigimkt.sdk.basead.ui.BaseSplashATView;
import java.util.Map;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public k f41616a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f41617b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.p1.a f41618c;

    /* renamed from: d, reason: collision with root package name */
    public BaseSplashATView f41619d;

    /* renamed from: e, reason: collision with root package name */
    public BaseBannerATView f41620e;

    public c(k kVar, com.smartdigimkt.l3.a aVar) {
        this.f41616a = kVar;
        this.f41617b = aVar;
    }

    public final void a(Activity activity, Map map, String str, String str2, String str3) {
        e eVar = com.smartdigimkt.p1.b.f42548a;
        eVar.f42554a.put(str, new b(this, map, str3, str));
        com.smartdigimkt.m3.a aVar = new com.smartdigimkt.m3.a();
        aVar.f41772c = this.f41616a;
        aVar.f41773d = str;
        aVar.f41770a = 3;
        aVar.f41775f = this.f41617b;
        aVar.f41774e = h.y(activity);
        aVar.f41771b = str2;
        BaseATActivity.a(activity, aVar);
    }

    public final void a(Activity activity, Map map, String str, String str2, String str3, boolean z2) {
        e eVar = com.smartdigimkt.p1.b.f42548a;
        eVar.f42554a.put(str, new a(this, map, str3, str));
        com.smartdigimkt.m3.a aVar = new com.smartdigimkt.m3.a();
        aVar.f41772c = this.f41616a;
        aVar.f41773d = str;
        aVar.f41770a = 1;
        aVar.f41775f = this.f41617b;
        aVar.f41774e = h.y(activity);
        aVar.f41771b = str2;
        aVar.f41776g = z2;
        BaseATActivity.a(activity, aVar);
    }
}
