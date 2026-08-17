package com.smartdigimkt.q4;

import com.anythink.core.common.m.AbstractC1114b;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class a extends com.smartdigimkt.b4.g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f42850b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f42851c;

    public a(b bVar, int i2) {
        this.f42851c = bVar;
        this.f42850b = i2;
    }

    @Override // com.smartdigimkt.b4.g
    public final void b() {
        IHttpLoaderInterceptor iHttpLoaderInterceptor;
        HttpRespEntity httpRespEntityInterceptRequest;
        try {
            byte[] bArrH = this.f42851c.f42855d.h();
            b bVar = this.f42851c;
            b.a(bVar, bVar.f42855d, bArrH);
            this.f42851c.getClass();
            b bVar2 = this.f42851c;
            bVar2.f42859h = false;
            bVar2.f42852a = bVar2.f42855d.k();
            com.smartdigimkt.r4.d dVar = this.f42851c.f42855d;
            int iJ = dVar != null ? dVar.j() : 2;
            boolean zL = true;
            String str = ((iJ == 1 || iJ == 2) && iJ != 2) ? "POST" : "GET";
            this.f42851c.getClass();
            b bVar3 = this.f42851c;
            String str2 = bVar3.f42852a;
            com.smartdigimkt.l4.b bVar4 = bVar3.f42853b;
            if (bVar4 != null) {
                bVar4.a(this.f42850b);
            }
            b bVar5 = this.f42851c;
            if (bVar5.f42856e == null) {
                com.smartdigimkt.r4.d dVar2 = bVar5.f42855d;
                bVar5.f42856e = dVar2 != null ? dVar2.f() : null;
            }
            b bVar6 = this.f42851c;
            HttpReqEntity httpReqEntity = bVar6.f42856e;
            if (httpReqEntity != null && (iHttpLoaderInterceptor = bVar6.f42854c) != null && (httpRespEntityInterceptRequest = iHttpLoaderInterceptor.interceptRequest(httpReqEntity)) != null && httpRespEntityInterceptRequest.isIntercept()) {
                int interceptStatusCode = httpRespEntityInterceptRequest.getInterceptStatusCode();
                String strValueOf = String.valueOf(interceptStatusCode);
                if (interceptStatusCode != 200) {
                    this.f42851c.a(this.f42850b, interceptStatusCode, "", com.smartdigimkt.k4.b.a(strValueOf, interceptStatusCode == 699 ? "Your App or Placement has been suspended or deleted and no longer obtains strategy." : interceptStatusCode == 700 ? "API access restricted due to too many requests. Please reduce requests or try again later." : ""), false, false);
                    return;
                }
                b bVar7 = this.f42851c;
                int i2 = this.f42850b;
                Object interceptResult = httpRespEntityInterceptRequest.getInterceptResult();
                if (bVar7.f42859h) {
                    return;
                }
                bVar7.f42859h = true;
                com.smartdigimkt.l4.b bVar8 = bVar7.f42853b;
                if (bVar8 != null) {
                    bVar8.a(i2, interceptResult);
                    return;
                }
                return;
            }
            com.smartdigimkt.p4.a aVar = this.f42851c.f42857f;
            if (aVar == null) {
                int i3 = com.smartdigimkt.o4.a.f42264d;
                ArrayList arrayList = new ArrayList();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                com.smartdigimkt.o4.a aVar2 = new com.smartdigimkt.o4.a();
                aVar2.f42266b = 60000L;
                aVar2.f42265a = 60000L;
                if (!arrayList.isEmpty()) {
                    aVar2.f42267c.addAll(new ArrayList(arrayList));
                }
                aVar = new com.smartdigimkt.p4.a(aVar2);
                this.f42851c.f42857f = aVar;
            }
            b bVar9 = this.f42851c;
            bVar9.getClass();
            try {
                com.smartdigimkt.r4.d dVar3 = bVar9.f42855d;
                if (dVar3 instanceof com.smartdigimkt.r4.j) {
                    zL = ((com.smartdigimkt.r4.j) dVar3).l();
                }
            } catch (Throwable unused) {
            }
            b bVar10 = this.f42851c;
            String str3 = bVar10.f42852a;
            com.smartdigimkt.o4.b bVar11 = new com.smartdigimkt.o4.b();
            bVar11.f42268a = str3;
            bVar11.f42269b = str;
            com.smartdigimkt.r4.d dVar4 = bVar10.f42855d;
            Map mapE = dVar4 != null ? dVar4.e() : new HashMap();
            if (mapE != null && mapE.containsKey(AbstractC1114b.f5589g)) {
            }
            bVar11.f42270c = bArrH;
            com.smartdigimkt.r4.d dVar5 = this.f42851c.f42855d;
            Map mapE2 = dVar5 != null ? dVar5.e() : new HashMap();
            if (mapE2 == null) {
                mapE2 = new HashMap();
            }
            if (!mapE2.containsKey("User-Agent") && SDKContext.getInstance().a("ua")) {
                mapE2.put("User-Agent", com.smartdigimkt.c5.j.a());
            }
            bVar11.f42271d = mapE2;
            bVar11.f42272e = zL;
            com.smartdigimkt.o4.d dVarA = aVar.a(new com.smartdigimkt.o4.c(bVar11));
            int i4 = dVarA.f42279b;
            if (i4 != 200 && i4 != 201 && i4 != 204 && !this.f42851c.b(i4)) {
                b.b(this.f42851c, dVarA, this.f42850b);
                return;
            }
            b.a(this.f42851c, dVarA, this.f42850b);
        } catch (Throwable th) {
            this.f42851c.a(0, 0, th.getMessage(), com.smartdigimkt.k4.b.a("90002", "" + th));
        }
    }
}
