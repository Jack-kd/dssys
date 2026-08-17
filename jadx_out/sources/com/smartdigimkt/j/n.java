package com.smartdigimkt.j;

import android.content.Context;
import android.util.TypedValue;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40798a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f40799b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f40800c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f40801d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f40802e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Runnable f40803f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.s3.b f40804g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ u f40805h;

    public n(u uVar, Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, Runnable runnable, com.smartdigimkt.s3.b bVar) {
        this.f40805h = uVar;
        this.f40798a = context;
        this.f40799b = aVar;
        this.f40800c = cVar;
        this.f40801d = str;
        this.f40802e = str2;
        this.f40803f = runnable;
        this.f40804g = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u uVar = this.f40805h;
        Context context = this.f40798a;
        com.smartdigimkt.l3.a aVar = this.f40799b;
        com.smartdigimkt.m3.c cVar = this.f40800c;
        String str = this.f40801d;
        String str2 = this.f40802e;
        Runnable runnable = this.f40803f;
        com.smartdigimkt.s3.b bVar = this.f40804g;
        uVar.getClass();
        if (runnable != null) {
            runnable.run();
        }
        com.smartdigimkt.k.r rVar = new com.smartdigimkt.k.r();
        rVar.f41192o = com.smartdigimkt.c5.j.a(cVar);
        rVar.f41178a = aVar.f41632f;
        rVar.f41183f = cVar.f41806a;
        rVar.f41179b = str;
        rVar.f41191n = str2;
        rVar.f41182e = cVar.f41822m;
        rVar.f41180c = cVar.f41810c;
        rVar.f41187j = cVar;
        rVar.f41188k = aVar;
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        if (eVar != null) {
            rVar.f41193p = eVar.f41853F == 1;
            rVar.f41195r = eVar.f41859H;
            rVar.f41194q = eVar.f41856G;
        }
        int iApplyDimension = (int) TypedValue.applyDimension(1, 50.0f, context.getResources().getDisplayMetrics());
        rVar.f41181d = com.smartdigimkt.t3.m.a(context).b(new com.smartdigimkt.t3.o(1, cVar.f41814e), iApplyDimension, iApplyDimension);
        String str3 = cVar.f41820k;
        if (str3 != null) {
            String str4 = aVar.f41632f;
            if (str4 == null) {
                str4 = "";
            }
            rVar.f41189l = str3.replaceAll("\\{req_id\\}", str4);
        }
        rVar.f41190m = bVar;
        rVar.f41200w = com.smartdigimkt.n.c.a(rVar.f41192o);
        rVar.f41197t = aVar.f41627a;
        rVar.f41198u = aVar.f41631e;
        rVar.f41199v = String.valueOf(aVar.f41636j);
        ConcurrentHashMap concurrentHashMap = uVar.f40827h;
        if (concurrentHashMap != null) {
            concurrentHashMap.remove(rVar.f41192o);
        }
        ConcurrentHashMap concurrentHashMap2 = uVar.f40828i;
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.remove(rVar.f41192o);
        }
        String str5 = rVar.f41192o;
        if (!uVar.a(str5)) {
            uVar.c(rVar);
            return;
        }
        com.smartdigimkt.k.o oVar = uVar.f40834o;
        o oVar2 = new o(uVar, rVar);
        oVar.getClass();
        oVar.f41163c.b(new com.smartdigimkt.k.l(oVar, str5, oVar2));
    }
}
