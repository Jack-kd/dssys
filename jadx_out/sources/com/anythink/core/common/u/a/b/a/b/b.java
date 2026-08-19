package com.anythink.core.common.u.a.b.a.b;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.r;
import com.anythink.core.common.m.d.f;
import com.anythink.core.common.m.e;
import com.anythink.core.common.m.s;
import com.anythink.core.e.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    List<com.anythink.core.common.u.a.b.a.a.a> f7780a;

    /* renamed from: b, reason: collision with root package name */
    private final String f7781b = b.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private f.a f7783d = new f.a() { // from class: com.anythink.core.common.u.a.b.a.b.b.1
        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Object obj) {
            b bVar = b.this;
            if (bVar.f7780a != null) {
                com.anythink.core.common.u.a.a.a.a(r.a(bVar.f7782c)).a(b.this.f7780a);
            }
            com.anythink.core.common.u.a.b.a().b("da");
        }

        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Throwable th) {
            b bVar = b.this;
            if (bVar.f7780a != null) {
                com.anythink.core.common.u.a.a.a.a(r.a(bVar.f7782c)).b(b.this.f7780a);
                com.anythink.core.common.u.a.b.a().a("da");
            }
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private s f7784e = new s() { // from class: com.anythink.core.common.u.a.b.a.b.b.2
        @Override // com.anythink.core.common.m.s
        public final void onLoadCanceled(int i2) {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadError(int i2, String str, AdError adError) {
            b bVar = b.this;
            if (bVar.f7780a != null) {
                com.anythink.core.common.u.a.a.a.a(r.a(bVar.f7782c)).b(b.this.f7780a);
                com.anythink.core.common.u.a.b.a().a("da");
            }
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadFinish(int i2, Object obj) {
            b bVar = b.this;
            if (bVar.f7780a != null) {
                com.anythink.core.common.u.a.a.a.a(r.a(bVar.f7782c)).a(b.this.f7780a);
            }
            com.anythink.core.common.u.a.b.a().b("da");
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadStart(int i2) {
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private Context f7782c = com.anythink.core.common.d.s.b().g();

    public final void a(boolean z2) {
        if (com.anythink.core.common.d.s.b().a()) {
            com.anythink.core.common.u.a.a.a aVarA = com.anythink.core.common.u.a.a.a.a(r.a(this.f7782c));
            com.anythink.core.common.u.a.a.a();
            List<com.anythink.core.common.u.a.b.a.a.a> listA = aVarA.a(com.anythink.core.common.u.a.a.g().b(), z2);
            this.f7780a = listA;
            if (listA == null || listA.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<com.anythink.core.common.u.a.b.a.a.a> it = this.f7780a.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().f7762e);
            }
            com.anythink.core.e.b bVarB = d.a(this.f7782c).b(com.anythink.core.common.d.s.b().p());
            if (bVarB == null) {
                e eVar = new e(this.f7782c, 0, arrayList);
                eVar.t();
                eVar.a(0, this.f7784e);
            } else if (bVarB.x() != 1) {
                e eVar2 = new e(this.f7782c, bVarB.x(), arrayList);
                eVar2.t();
                eVar2.a(0, this.f7784e);
            } else {
                com.anythink.core.common.m.d.b bVar = new com.anythink.core.common.m.d.b(arrayList);
                bVar.a(1, bVarB.w());
                bVar.g();
                bVar.a(this.f7783d);
            }
        }
    }
}
