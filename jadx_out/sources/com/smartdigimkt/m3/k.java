package com.smartdigimkt.m3;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class k extends c {

    /* renamed from: e0, reason: collision with root package name */
    public long f42044e0;

    /* renamed from: f0, reason: collision with root package name */
    public String f42045f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f42046g0;

    /* renamed from: h0, reason: collision with root package name */
    public String f42047h0;

    /* renamed from: i0, reason: collision with root package name */
    public m f42048i0;

    /* renamed from: j0, reason: collision with root package name */
    public String f42049j0;

    /* renamed from: k0, reason: collision with root package name */
    public int f42050k0;

    /* renamed from: l0, reason: collision with root package name */
    public int f42051l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f42052m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f42053n0;

    /* renamed from: o0, reason: collision with root package name */
    public String f42054o0;

    /* renamed from: p0, reason: collision with root package name */
    public String f42055p0;

    /* renamed from: q0, reason: collision with root package name */
    public int f42056q0;

    /* renamed from: r0, reason: collision with root package name */
    public int f42057r0;

    /* renamed from: s0, reason: collision with root package name */
    public long f42058s0;

    /* renamed from: t0, reason: collision with root package name */
    public final ConcurrentHashMap f42059t0 = new ConcurrentHashMap();

    /* renamed from: u0, reason: collision with root package name */
    public String f42060u0 = "";

    @Override // com.smartdigimkt.m3.c
    public final /* bridge */ /* synthetic */ ArrayList a(e eVar, boolean z2) {
        return a((l) eVar);
    }

    @Override // com.smartdigimkt.m3.c
    public final ArrayList b(e eVar) {
        l lVar = (l) eVar;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.equals(lVar.f41915a + "", "2") && this.f42046g0 == 3 && !TextUtils.isEmpty(this.f41814e)) {
            arrayList.add(this.f41814e);
        }
        if (TextUtils.equals(String.valueOf(lVar.f41915a), "4") && 1 != this.f42046g0 && !TextUtils.isEmpty(this.f41814e)) {
            arrayList.add(this.f41814e);
        }
        return arrayList;
    }

    public final boolean k() {
        return System.currentTimeMillis() >= this.f42058s0;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList a(com.smartdigimkt.m3.l r9) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.m3.k.a(com.smartdigimkt.m3.l):java.util.ArrayList");
    }

    @Override // com.smartdigimkt.m3.c
    public String a() {
        return this.f42060u0;
    }

    public final boolean a(boolean z2, boolean z3) {
        return z2 ? z3 ? this.f42050k0 == 1 : this.f42051l0 == 1 : z3 ? this.f42052m0 == 1 : this.f42053n0 == 1;
    }
}
