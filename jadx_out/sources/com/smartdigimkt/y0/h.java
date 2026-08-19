package com.smartdigimkt.y0;

import com.smartdigimkt.j0.s;
import com.smartdigimkt.w0.i0;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final i0 f45153a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f45154b;

    /* renamed from: c, reason: collision with root package name */
    public final s[] f45155c;

    /* renamed from: d, reason: collision with root package name */
    public int f45156d;

    public h(i0 i0Var, int i2) {
        i0Var.getClass();
        this.f45153a = i0Var;
        s[] sVarArr = {i0Var.f44827b[i]};
        this.f45155c = sVarArr;
        int i3 = new int[]{i2}[0];
        Arrays.sort(sVarArr, new a());
        int[] iArr = new int[1];
        this.f45154b = iArr;
        s sVar = sVarArr[0];
        int i4 = 0;
        while (true) {
            s[] sVarArr2 = i0Var.f44827b;
            if (i4 >= sVarArr2.length) {
                i4 = -1;
                break;
            } else if (sVar == sVarArr2[i4]) {
                break;
            } else {
                i4++;
            }
        }
        iArr[0] = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h.class == obj.getClass()) {
            h hVar = (h) obj;
            if (this.f45153a == hVar.f45153a && Arrays.equals(this.f45154b, hVar.f45154b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f45156d == 0) {
            this.f45156d = Arrays.hashCode(this.f45154b) + (System.identityHashCode(this.f45153a) * 31);
        }
        return this.f45156d;
    }
}
