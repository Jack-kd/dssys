package com.smartdigimkt.k2;

import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.common.a.b;
import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f41291a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f41292b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f41293c;

    /* renamed from: d, reason: collision with root package name */
    public final int f41294d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f41295e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f41296f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final boolean f41297g;

    /* JADX WARN: Removed duplicated region for block: B:120:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0181 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01e7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(android.view.ViewGroup r21, com.smartdigimkt.m3.c r22, com.smartdigimkt.l3.a r23, int r24, com.smartdigimkt.k2.e r25) {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k2.c.<init>(android.view.ViewGroup, com.smartdigimkt.m3.c, com.smartdigimkt.l3.a, int, com.smartdigimkt.k2.e):void");
    }

    public final void a(int i2) {
        if ((i2 == 103 || i2 == 118) && !this.f41297g && !com.smartdigimkt.z.z.d(this.f41292b, this.f41293c)) {
            int iA = com.smartdigimkt.z.z.a(this.f41293c, this.f41291a.getContext());
            com.smartdigimkt.m3.c cVar = this.f41292b;
            com.smartdigimkt.l3.a aVar = this.f41293c;
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            com.smartdigimkt.y3.h.a(cVar, aVar, iA, false, 0, "", 0, eVar != null ? eVar.f41878N0 : 1);
        }
        b(i2);
    }

    public abstract ViewGroup.LayoutParams b();

    public final void b(int i2) {
        ArrayList arrayList = this.f41295e;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        com.smartdigimkt.b4.e.a().getClass();
        if (!com.smartdigimkt.b4.e.b()) {
            com.smartdigimkt.b4.e.a().a(new b(this, i2));
            return;
        }
        HashMap map = new HashMap();
        HashMap map2 = this.f41296f;
        if (map2 != null) {
            map.putAll(map2);
        }
        map.put("key_has_endcard_improve", Boolean.valueOf(this.f41297g));
        ArrayList arrayList2 = this.f41295e;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            ((f) obj).a(i2, map);
        }
    }

    public final boolean c(int i2) throws NoSuchAlgorithmException {
        if (i2 == 2) {
            return this.f41293c.f41644r.f41878N0 == 5;
        }
        if (i2 != 1) {
            return false;
        }
        com.smartdigimkt.l3.a aVar = this.f41293c;
        int i3 = aVar.f41644r.f41878N0;
        if (i3 != 2 && i3 != 3 && i3 != 4) {
            return i3 == 5;
        }
        boolean zD = com.smartdigimkt.z.z.d(this.f41292b, aVar);
        boolean zC = !zD;
        com.smartdigimkt.m3.e eVar = this.f41293c.f41644r;
        if (eVar.f41878N0 == 4 && !zD) {
            if (TextUtils.isEmpty(eVar.f41911Y0)) {
                zC = false;
            } else {
                com.smartdigimkt.t3.n nVarA = com.smartdigimkt.t3.n.a();
                String strB = com.smartdigimkt.c5.i.b(this.f41293c.f41644r.f41911Y0);
                nVarA.getClass();
                zC = TextUtils.isEmpty(strB) ? false : new File(nVarA.b(3, strB)).exists();
                String str = this.f41293c.f41644r.f41911Y0;
            }
        }
        if (zC) {
            if (this.f41293c.f41644r.f41878N0 == 3) {
                zC = com.smartdigimkt.t1.d.a().c(b.d.f2187a);
            }
            if (this.f41293c.f41644r.f41878N0 == 2) {
                zC = com.smartdigimkt.t1.d.a().c(b.d.f2195i);
            }
            if (this.f41293c.f41644r.f41878N0 == 4) {
                zC = com.smartdigimkt.t1.d.a().c(b.d.f2202p);
            }
        }
        if (zC && TextUtils.equals(String.valueOf(this.f41293c.f41628b), "1") && TextUtils.isEmpty(this.f41292b.f41818i)) {
            com.smartdigimkt.m3.e eVar2 = this.f41293c.f41644r;
            if (eVar2.f41949l0 == 1) {
                zC = false;
            }
            if (eVar2.f41952m0 == 1) {
                return false;
            }
        }
        return zC;
    }

    public final p a() {
        ArrayList arrayList = this.f41295e;
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        ArrayList arrayList2 = this.f41295e;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            f fVar = (f) obj;
            if (fVar instanceof p) {
                return (p) fVar;
            }
        }
        return null;
    }

    public final void a(HashMap map) {
        if (map != null) {
            this.f41296f.putAll(map);
        }
    }
}
