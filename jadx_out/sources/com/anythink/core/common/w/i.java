package com.anythink.core.common.w;

import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.by;
import com.anythink.core.common.v.k;
import com.anythink.core.common.v.o;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private List<by> f8525a;

    public i(List<by> list) {
        ArrayList arrayList = new ArrayList();
        this.f8525a = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
    }

    private static double b(by byVar) {
        if (byVar.bh() == 2) {
            return 0.0d;
        }
        return o.a(byVar);
    }

    public final synchronized List<by> a() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f8525a);
        return arrayList;
    }

    public final synchronized void a(by byVar) {
        List<by> list = this.f8525a;
        if (list != null) {
            if (list.size() == 0) {
                byVar.L(0);
                this.f8525a.add(byVar);
                a(byVar, 0, null);
                return;
            }
            for (int i2 = 0; i2 < this.f8525a.size(); i2++) {
                by byVar2 = this.f8525a.get(i2);
                if (k.a(byVar, byVar2) < 0) {
                    byVar.L(i2);
                    this.f8525a.add(i2, byVar);
                    a(byVar, i2, byVar2);
                    int i3 = i2 + 1;
                    List<by> list2 = this.f8525a;
                    if (list2 != null && i3 < list2.size()) {
                        while (i3 < list2.size()) {
                            by byVar3 = list2.get(i3);
                            if (byVar3 != null) {
                                byVar3.L(i3);
                            }
                            i3++;
                        }
                    }
                    return;
                }
            }
            byVar.L(this.f8525a.size());
            this.f8525a.add(byVar);
            a(byVar, this.f8525a.size() - 1, null);
        }
    }

    private static void a(int i2, List<by> list) {
        if (list != null && i2 < list.size()) {
            while (i2 < list.size()) {
                by byVar = list.get(i2);
                if (byVar != null) {
                    byVar.L(i2);
                }
                i2++;
            }
        }
    }

    private void a(by byVar, int i2, by byVar2) {
        ad adVarY;
        ad adVarY2;
        if (byVar.w() && (adVarY2 = byVar.Y()) != null) {
            if (byVar2 != null) {
                adVarY2.a(byVar2, o.a(byVar2));
            } else {
                adVarY2.a(byVar, b(byVar));
            }
        }
        if (i2 > 0) {
            by byVar3 = this.f8525a.get(i2 - 1);
            if (!byVar3.w() || (adVarY = byVar3.Y()) == null) {
                return;
            }
            adVarY.a(byVar, o.a(byVar));
        }
    }
}
