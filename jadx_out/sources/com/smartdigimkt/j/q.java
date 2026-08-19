package com.smartdigimkt.j;

import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class q implements com.smartdigimkt.k.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f40811a;

    public q(u uVar) {
        this.f40811a = uVar;
    }

    @Override // com.smartdigimkt.k.a
    public final void a(com.smartdigimkt.k.r rVar, long j2) {
        if (rVar == null) {
            return;
        }
        com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40811a.f40820a);
        jVarA.getClass();
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.d(jVarA, rVar));
        u uVar = this.f40811a;
        uVar.getClass();
        int i2 = SDKContext.getInstance().f44123l ? 1 : 2;
        com.smartdigimkt.k.p pVar = uVar.f40836q;
        if (pVar != null) {
            pVar.a(rVar, i2);
        }
        this.f40811a.e(rVar);
        com.smartdigimkt.k.o oVar = this.f40811a.f40834o;
        if (oVar != null) {
            oVar.a(rVar, "at_offer_action_2");
        }
        this.f40811a.f40824e.remove(rVar.f41192o);
        this.f40811a.f40822c.remove(rVar.f41192o);
        u uVar2 = this.f40811a;
        if (uVar2.f40825f == null) {
            uVar2.f40825f = new ConcurrentHashMap();
        }
        this.f40811a.f40825f.put(rVar.f41192o, rVar);
        this.f40811a.b();
        this.f40811a.f(rVar);
        com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 2, (String) null, j2, rVar.f41185h, rVar.f41187j, 0, 0L);
        String str = rVar.f41178a;
        String str2 = rVar.f41197t;
        long j3 = rVar.f41172B;
        String str3 = rVar.f41199v;
        String str4 = rVar.f41198u;
        com.smartdigimkt.m3.c cVar = rVar.f41187j;
        String str5 = cVar instanceof com.smartdigimkt.m3.k ? ((com.smartdigimkt.m3.k) cVar).f42054o0 : "";
        String str6 = rVar.f41183f;
        String strA = rVar.a();
        String str7 = rVar.f41182e;
        int i3 = rVar.f41201x;
        if (TextUtils.isEmpty(rVar.f41175E)) {
            rVar.f41175E = "1";
        }
        String str8 = rVar.f41175E;
        String strValueOf = String.valueOf(rVar.f41174D);
        int i4 = rVar.f41173C;
        long j4 = rVar.f41185h;
        long j5 = rVar.f41186i;
        com.smartdigimkt.m3.c cVar2 = rVar.f41187j;
        String str9 = cVar2 != null ? cVar2.f41802W : null;
        String str10 = cVar2 != null ? cVar2.f41803X : null;
        com.smartdigimkt.q3.c cVar3 = new com.smartdigimkt.q3.c(null, str3);
        cVar3.f42817a = "1004711";
        cVar3.f42818b = str;
        cVar3.f42811Q = str9;
        cVar3.f42812R = str10;
        cVar3.f42819c = str2;
        cVar3.f42824h = String.valueOf(j3);
        cVar3.f42828l = str3;
        cVar3.f42829m = str4;
        cVar3.f42830n = str5;
        cVar3.f42831o = str6;
        if (!TextUtils.isEmpty(strA)) {
            cVar3.f42832p = String.valueOf(strA.contains("data/data") ? 1 : 2);
        }
        cVar3.f42833q = str7;
        cVar3.f42834r = String.valueOf(i3);
        cVar3.f42835s = str8;
        if (!"1".equals(str8)) {
            cVar3.f42836t = strValueOf;
        }
        cVar3.f42837u = String.valueOf(i4);
        cVar3.f42838v = String.valueOf(j4 / 1024.0f);
        cVar3.f42839w = String.valueOf(j5);
        com.smartdigimkt.y3.h.a(cVar3);
    }

    @Override // com.smartdigimkt.k.a
    public final void b(com.smartdigimkt.k.r rVar, long j2, long j3) {
        String str = rVar.f41192o;
        this.f40811a.f40821b.size();
        ConcurrentHashMap concurrentHashMap = this.f40811a.f40822c;
        if (concurrentHashMap != null) {
            concurrentHashMap.put(rVar.f41192o, rVar);
        }
        if (j2 < j3) {
            u uVar = this.f40811a;
            String str2 = "正在下载： " + rVar.f41180c;
            uVar.getClass();
            com.smartdigimkt.b4.e.a().a(new t(uVar, str2));
            com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40811a.f40820a);
            jVarA.getClass();
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.c(j2, j3, rVar, jVarA, true));
        }
        this.f40811a.e(rVar);
        com.smartdigimkt.k.o oVar = this.f40811a.f40834o;
        if (oVar != null) {
            oVar.a(rVar, "at_offer_action_1");
        }
        this.f40811a.f(rVar);
        com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 1, (String) null, 0L, j3, rVar.f41187j, 0, 0L);
    }

    @Override // com.smartdigimkt.k.a
    public final void a(com.smartdigimkt.k.r rVar, long j2, long j3) {
        if (rVar == null) {
            return;
        }
        com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40811a.f40820a);
        jVarA.getClass();
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.c(j2, j3, rVar, jVarA, false));
        com.smartdigimkt.k.o oVar = this.f40811a.f40834o;
        if (oVar != null) {
            oVar.f41163c.b(new com.smartdigimkt.k.j(oVar, rVar));
        }
        ConcurrentHashMap concurrentHashMap = this.f40811a.f40822c;
        if (concurrentHashMap != null) {
            if (rVar.f41173C != 2) {
                rVar.f41173C = concurrentHashMap.size() < 2 ? 1 : 2;
            }
        }
    }

    @Override // com.smartdigimkt.k.a
    public final void a(com.smartdigimkt.k.r rVar, String str) {
        if (rVar == null) {
            return;
        }
        rVar.a(4);
        u uVar = this.f40811a;
        String str2 = "下载失败： " + rVar.f41180c;
        uVar.getClass();
        com.smartdigimkt.b4.e.a().a(new t(uVar, str2));
        com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40811a.f40820a);
        jVarA.getClass();
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.c(0L, 100L, rVar, jVarA, true));
        this.f40811a.e(rVar);
        this.f40811a.f40824e.remove(rVar.f41192o);
        this.f40811a.f40822c.remove(rVar.f41192o);
        u uVar2 = this.f40811a;
        if (uVar2.f40828i == null) {
            uVar2.f40828i = new ConcurrentHashMap();
        }
        this.f40811a.f40828i.put(rVar.f41192o, rVar);
        this.f40811a.b();
        this.f40811a.f(rVar);
        com.smartdigimkt.y3.h.a(rVar.f41178a, rVar.f41183f, rVar.f41179b, 3, str, 0L, rVar.f41185h, rVar.f41187j, 0, 0L);
    }

    @Override // com.smartdigimkt.k.a
    public final void a(com.smartdigimkt.k.r rVar, long j2, long j3, int i2) {
        com.smartdigimkt.k.r rVar2;
        String str = rVar.f41192o;
        rVar.a(2);
        this.f40811a.e(rVar);
        this.f40811a.f40822c.remove(rVar.f41192o);
        if (i2 == 2) {
            com.smartdigimkt.m.j jVarA = com.smartdigimkt.m.j.a(this.f40811a.f40820a);
            jVarA.getClass();
            rVar2 = rVar;
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.m.c(j2, j3, rVar2, jVarA, true));
            ConcurrentHashMap concurrentHashMap = this.f40811a.f40823d;
            if (concurrentHashMap != null) {
                concurrentHashMap.put(rVar2.f41192o, rVar2);
            }
            this.f40811a.b();
        } else {
            rVar2 = rVar;
        }
        this.f40811a.f(rVar2);
    }
}
