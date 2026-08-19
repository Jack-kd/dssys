package com.smartdigimkt.w0;

import java.io.EOFException;

/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.o0.d[] f44779a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.o0.e f44780b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.o0.d f44781c;

    public g(com.smartdigimkt.o0.d[] dVarArr, com.smartdigimkt.o0.e eVar) {
        this.f44779a = dVarArr;
        this.f44780b = eVar;
    }

    public final com.smartdigimkt.o0.d a(com.smartdigimkt.o0.b bVar) throws l0 {
        com.smartdigimkt.o0.d dVar = this.f44781c;
        if (dVar != null) {
            return dVar;
        }
        com.smartdigimkt.o0.d[] dVarArr = this.f44779a;
        int length = dVarArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            com.smartdigimkt.o0.d dVar2 = dVarArr[i2];
            try {
            } catch (EOFException unused) {
            } catch (Throwable th) {
                bVar.f42193f = 0;
                throw th;
            }
            if (dVar2.a(bVar)) {
                this.f44781c = dVar2;
                bVar.f42193f = 0;
                break;
            }
            continue;
            bVar.f42193f = 0;
            i2++;
        }
        com.smartdigimkt.o0.d dVar3 = this.f44781c;
        if (dVar3 != null) {
            dVar3.a(this.f44780b);
            return this.f44781c;
        }
        StringBuilder sb = new StringBuilder("None of the available extractors (");
        com.smartdigimkt.o0.d[] dVarArr2 = this.f44779a;
        int i3 = com.smartdigimkt.a1.t.f39303a;
        StringBuilder sb2 = new StringBuilder();
        for (int i4 = 0; i4 < dVarArr2.length; i4++) {
            sb2.append(dVarArr2[i4].getClass().getSimpleName());
            if (i4 < dVarArr2.length - 1) {
                sb2.append(", ");
            }
        }
        sb.append(sb2.toString());
        sb.append(") could read the stream.");
        throw new l0(sb.toString());
    }
}
