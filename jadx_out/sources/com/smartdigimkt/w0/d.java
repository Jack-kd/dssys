package com.smartdigimkt.w0;

import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f44755a;

    public d(i iVar) {
        this.f44755a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f44755a;
        if (iVar.f44799L || iVar.f44819t || iVar.f44815p == null || !iVar.f44818s) {
            return;
        }
        int i2 = 0;
        for (e0 e0Var : iVar.f44816q) {
            if (e0Var.c() == null) {
                return;
            }
        }
        com.smartdigimkt.a1.d dVar = iVar.f44810k;
        synchronized (dVar) {
            dVar.f39268a = false;
        }
        int length = iVar.f44816q.length;
        i0[] i0VarArr = new i0[length];
        iVar.f44790C = new boolean[length];
        iVar.f44789B = new boolean[length];
        iVar.f44791D = new boolean[length];
        iVar.f44788A = iVar.f44815p.b();
        int i3 = 0;
        while (true) {
            boolean z2 = true;
            if (i3 >= length) {
                break;
            }
            com.smartdigimkt.j0.s sVarC = iVar.f44816q[i3].c();
            i0VarArr[i3] = new i0(sVarC);
            String str = sVarC.f40991f;
            if (!"video".equals(com.smartdigimkt.a1.h.b(str)) && !MediaFormat.KEY_AUDIO.equals(com.smartdigimkt.a1.h.b(str))) {
                z2 = false;
            }
            iVar.f44790C[i3] = z2;
            iVar.f44792E = z2 | iVar.f44792E;
            i3++;
        }
        iVar.f44825z = new k0(i0VarArr);
        if (iVar.f44802c == -1 && iVar.f44793F == -1 && iVar.f44815p.b() == -9223372036854775807L) {
            iVar.f44820u = 6;
        }
        iVar.f44819t = true;
        j jVar = iVar.f44804e;
        long j2 = iVar.f44788A;
        boolean zA = iVar.f44815p.a();
        if (j2 == -9223372036854775807L) {
            j2 = jVar.f44841m;
        }
        if (jVar.f44841m != j2 || jVar.f44842n != zA) {
            jVar.f44841m = j2;
            jVar.f44842n = zA;
            g0 g0Var = new g0(j2, zA, jVar.f44840l);
            jVar.f44832d = g0Var;
            jVar.f44833e = null;
            ArrayList arrayList = jVar.f44829a;
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((com.smartdigimkt.j0.p) ((n) obj)).f40963f.f39298a.obtainMessage(8, new com.smartdigimkt.j0.m(jVar, g0Var, null)).sendToTarget();
            }
        }
        iVar.f44814o.a(iVar);
    }
}
