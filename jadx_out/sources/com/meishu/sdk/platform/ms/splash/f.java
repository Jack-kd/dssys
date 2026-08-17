package com.meishu.sdk.platform.ms.splash;

import com.meishu.sdk.core.safe.l;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes4.dex */
public class f extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ShakeUtil f33163a;

    public class a implements Comparator<c> {
        public a(f fVar) {
        }

        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            return cVar2.f33139c - cVar.f33139c;
        }
    }

    public f(ShakeUtil shakeUtil) {
        this.f33163a = shakeUtil;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        List<c> list = this.f33163a.f33103g;
        if (list == null || list.size() <= 0) {
            this.f33163a.a();
            return;
        }
        Collections.sort(this.f33163a.f33103g, new a(this));
        for (int i2 = 0; i2 < this.f33163a.f33103g.size(); i2++) {
            c cVar = this.f33163a.f33103g.get(i2);
            if (cVar != null && cVar.f33143g) {
                cVar.f33144h = 1;
                this.f33163a.f33100d = true;
            } else if (cVar != null) {
                cVar.f33144h = 2;
            }
        }
    }
}
