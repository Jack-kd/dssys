package com.smartdigimkt.t2;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class g implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f44261a;

    public g(k kVar) {
        this.f44261a = kVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    @Override // com.smartdigimkt.t2.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.m3.b r26) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t2.g.a(com.smartdigimkt.m3.b):void");
    }

    @Override // com.smartdigimkt.t2.j
    public final void a(String str, String str2) {
        k kVar = this.f44261a;
        if (kVar.f44273i) {
            com.smartdigimkt.l3.a aVar = kVar.f44267c;
            String str3 = aVar.f41631e;
            com.smartdigimkt.m3.b bVar = kVar.f44266b;
            String str4 = bVar.f42054o0;
            String str5 = bVar.f41806a;
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f44261a.f44271g;
            String string = "";
            String str6 = "" + this.f44261a.f44272h;
            com.smartdigimkt.m3.b bVar2 = this.f44261a.f44266b;
            String str7 = bVar2.f41818i;
            String str8 = bVar2.f41821l;
            String[] strArr = bVar2.f42048i0.f42096d;
            String string2 = strArr != null ? Arrays.toString(strArr) : "";
            f fVar = this.f44261a.f44270f;
            if (fVar != null && fVar.f44257f.size() > 0) {
                string = this.f44261a.f44270f.f44257f.toString();
            }
            com.smartdigimkt.y3.h.a(aVar, str3, str4, str5, str, jCurrentTimeMillis, str2, str6, str7, str8, string2, string);
        }
        j jVar = this.f44261a.f44269e;
        if (jVar != null) {
            jVar.a(str, str2);
        }
    }
}
