package com.anythink.core.common.u.a.b.a.b;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.r;
import com.anythink.core.common.m.d.f;
import com.anythink.core.common.m.d.h;
import com.anythink.core.common.m.s;
import com.anythink.core.common.m.y;
import com.anythink.core.e.d;
import java.util.List;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    List<com.anythink.core.common.u.a.b.a.a.c> f7787a;

    /* renamed from: c, reason: collision with root package name */
    private final String f7789c = c.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private f.a f7790d = new f.a() { // from class: com.anythink.core.common.u.a.b.a.b.c.1
        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Object obj) {
            c cVar = c.this;
            if (cVar.f7787a != null) {
                com.anythink.core.common.u.a.a.b.a(r.a(cVar.f7788b)).a(c.this.f7787a);
                com.anythink.core.common.u.a.b.a().b("tk");
            }
        }

        @Override // com.anythink.core.common.m.d.f.a
        public final void a(Throwable th) {
            c cVar = c.this;
            if (cVar.f7787a != null) {
                com.anythink.core.common.u.a.a.b.a(r.a(cVar.f7788b)).b(c.this.f7787a);
                com.anythink.core.common.u.a.b.a().a("tk");
            }
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private s f7791e = new s() { // from class: com.anythink.core.common.u.a.b.a.b.c.2
        @Override // com.anythink.core.common.m.s
        public final void onLoadCanceled(int i2) {
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadError(int i2, String str, AdError adError) {
            c cVar = c.this;
            if (cVar.f7787a != null) {
                com.anythink.core.common.u.a.a.b.a(r.a(cVar.f7788b)).b(c.this.f7787a);
                com.anythink.core.common.u.a.b.a().a("tk");
            }
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadFinish(int i2, Object obj) {
            c cVar = c.this;
            if (cVar.f7787a != null) {
                com.anythink.core.common.u.a.a.b.a(r.a(cVar.f7788b)).a(c.this.f7787a);
                com.anythink.core.common.u.a.b.a().b("tk");
            }
        }

        @Override // com.anythink.core.common.m.s
        public final void onLoadStart(int i2) {
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private Context f7788b = com.anythink.core.common.d.s.b().g();

    public final void a(boolean z2) {
        List<com.anythink.core.common.u.a.b.a.a.c> list;
        if (com.anythink.core.common.d.s.b().a()) {
            com.anythink.core.common.u.a.a.b bVarA = com.anythink.core.common.u.a.a.b.a(r.a(this.f7788b));
            com.anythink.core.common.u.a.a.a();
            List<com.anythink.core.common.u.a.b.a.a.c> listA = bVarA.a(com.anythink.core.common.u.a.a.g().a(), z2);
            this.f7787a = listA;
            if (listA == null || listA.isEmpty() || (list = this.f7787a) == null || list.isEmpty()) {
                return;
            }
            com.anythink.core.e.b bVarB = d.a(this.f7788b).b(com.anythink.core.common.d.s.b().p());
            if (bVarB == null) {
                new y(this.f7788b, 0, this.f7787a).a(0, this.f7791e);
                return;
            }
            int iX = bVarB.x();
            if (iX == 1) {
                h hVar = new h(this.f7787a);
                hVar.a(1, bVarB.w());
                hVar.a(this.f7790d);
            } else {
                if (iX != 2) {
                    new y(this.f7788b, bVarB.x(), this.f7787a).a(0, this.f7791e);
                    return;
                }
                new y(this.f7788b, bVarB.x(), this.f7787a).a(0, this.f7791e);
                h hVar2 = new h(this.f7787a);
                hVar2.a(2, bVarB.w());
                hVar2.a(this.f7790d);
            }
        }
    }
}
