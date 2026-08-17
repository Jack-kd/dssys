package com.anythink.core.common.w.a.a;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.f.j;
import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.al;
import com.anythink.core.common.h.am;
import com.anythink.core.common.h.an;
import com.anythink.core.common.h.n;
import com.anythink.core.common.w.a.a;
import java.util.Map;

/* loaded from: classes2.dex */
public class b implements com.anythink.core.common.w.a.b.d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8374a = "b";

    /* renamed from: b, reason: collision with root package name */
    private final String f8375b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.w.a.b.c f8376c;

    /* renamed from: d, reason: collision with root package name */
    private final c f8377d = new c();

    /* renamed from: e, reason: collision with root package name */
    private j f8378e;

    /* renamed from: com.anythink.core.common.w.a.a.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f8381a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f8382b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f8383c;

        public AnonymousClass2(n nVar, boolean z2, String str) {
            this.f8381a = nVar;
            this.f8382b = z2;
            this.f8383c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f8381a.ad(this.f8382b ? 1 : 2);
            this.f8381a.z(this.f8383c);
            com.anythink.core.common.u.e.a(s.b().g());
            com.anythink.core.common.u.e.a(3, this.f8381a);
        }
    }

    public b(String str, com.anythink.core.common.w.a.b.c cVar) {
        this.f8375b = str;
        this.f8376c = cVar;
        try {
            this.f8378e = j.a(s.b().g());
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.w.a.b.d
    public final void b(String str) {
        j jVar = this.f8378e;
        if (jVar != null) {
            jVar.b(str);
        }
    }

    @Override // com.anythink.core.common.w.a.b.d
    public final an a(String str) {
        j jVar = this.f8378e;
        if (jVar != null) {
            return jVar.a(str);
        }
        return null;
    }

    @Override // com.anythink.core.common.w.a.b.d
    public final void a(final am amVar) {
        c cVar;
        n nVarI;
        String strA;
        com.anythink.core.common.w.a.b.c cVar2 = this.f8376c;
        aj ajVarA = cVar2 != null ? cVar2.a() : null;
        if (ajVarA == null || ajVarA.a() || amVar == null || !amVar.b().equals(this.f8375b)) {
            return;
        }
        if (amVar.d() == a.b.f8373c && (nVarI = amVar.i()) != null) {
            if (ajVarA.e() != null) {
                strA = com.anythink.core.common.w.a.d.a.a(amVar.e(), ajVarA.e().get(Integer.valueOf(amVar.c())));
            } else {
                strA = "";
            }
            boolean zJ = amVar.j();
            if (!TextUtils.isEmpty(strA)) {
                com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aN, new AnonymousClass2(nVarI, zJ, strA)));
            }
        }
        Map<Integer, al> mapE = ajVarA.e();
        al alVar = mapE != null ? mapE.get(Integer.valueOf(amVar.c())) : null;
        if (alVar == null) {
            return;
        }
        amVar.a(alVar.b());
        if (ajVarA.b() && (cVar = this.f8377d) != null) {
            cVar.a(amVar, alVar, ajVarA);
        }
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aO, new Runnable() { // from class: com.anythink.core.common.w.a.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (b.this.f8378e != null) {
                    b.this.f8378e.a(amVar);
                }
            }
        }));
    }

    @Override // com.anythink.core.common.w.a.b.b
    public final void b() {
        c cVar = this.f8377d;
        if (cVar != null) {
            cVar.a();
        }
    }

    private void a(am amVar, aj ajVar) {
        n nVarI;
        String strA;
        if (amVar == null || amVar.d() != a.b.f8373c || (nVarI = amVar.i()) == null) {
            return;
        }
        if (ajVar != null && ajVar.e() != null) {
            strA = com.anythink.core.common.w.a.d.a.a(amVar.e(), ajVar.e().get(Integer.valueOf(amVar.c())));
        } else {
            strA = "";
        }
        boolean zJ = amVar.j();
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        com.anythink.core.common.v.b.c.a().e(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aN, new AnonymousClass2(nVarI, zJ, strA)));
    }
}
