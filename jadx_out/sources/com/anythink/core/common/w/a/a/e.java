package com.anythink.core.common.w.a.a;

import android.content.Context;
import com.anythink.core.common.h.aj;
import com.anythink.core.common.h.ak;
import com.anythink.core.common.w.a.c.a;
import com.anythink.core.e.m;
import java.util.List;

/* loaded from: classes2.dex */
public class e implements com.anythink.core.common.w.a.b.e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8391a = "e";

    /* renamed from: b, reason: collision with root package name */
    private final String f8392b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.w.a.b.c f8393c;

    /* renamed from: d, reason: collision with root package name */
    private final com.anythink.core.common.w.a.b.d f8394d;

    /* renamed from: e, reason: collision with root package name */
    private long f8395e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f8396f;

    public e(String str, com.anythink.core.common.w.a.b.c cVar, com.anythink.core.common.w.a.b.d dVar) {
        this.f8392b = str;
        this.f8393c = cVar;
        this.f8394d = dVar;
    }

    @Override // com.anythink.core.common.w.a.b.e
    public final void a(final Context context, final m mVar, final com.anythink.core.common.w.a.b.a aVar) {
        if (mVar == null) {
            aVar.a();
            return;
        }
        final aj ajVarBy = mVar.by();
        boolean z2 = ajVarBy == null || ajVarBy.a();
        boolean z3 = ajVarBy != null && ajVarBy.a(this.f8395e);
        if (z2 || z3) {
            if (z2 && this.f8396f) {
                this.f8396f = false;
                d.a(this.f8392b);
            }
            aVar.a();
            return;
        }
        this.f8396f = true;
        this.f8395e = System.currentTimeMillis();
        com.anythink.core.common.w.a.b.c cVar = this.f8393c;
        if (cVar != null) {
            cVar.a(ajVarBy);
        }
        final boolean zC = ajVarBy.c();
        if (!zC) {
            aVar.a();
        }
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.aP, new Runnable() { // from class: com.anythink.core.common.w.a.a.e.1
            @Override // java.lang.Runnable
            public final void run() {
                e.a(e.this, context, mVar, aVar, ajVarBy).a(zC);
            }
        }));
    }

    @Override // com.anythink.core.common.w.a.b.b
    public final void b() {
        this.f8396f = false;
        this.f8395e = 0L;
    }

    /* renamed from: com.anythink.core.common.w.a.a.e$2, reason: invalid class name */
    public class AnonymousClass2 implements a.InterfaceC0087a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ aj f8403a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.w.a.b.a f8404b;

        public AnonymousClass2(aj ajVar, com.anythink.core.common.w.a.b.a aVar) {
            this.f8403a = ajVar;
            this.f8404b = aVar;
        }

        @Override // com.anythink.core.common.w.a.c.a.InterfaceC0087a
        public final void a(List<ak> list, boolean z2) {
            this.f8403a.a(list);
            com.anythink.core.common.w.a.b.a aVar = this.f8404b;
            if (aVar == null || !z2) {
                return;
            }
            aVar.a();
        }

        @Override // com.anythink.core.common.w.a.c.a.InterfaceC0087a
        public final void a(boolean z2) {
            com.anythink.core.common.w.a.b.a aVar = this.f8404b;
            if (aVar == null || !z2) {
                return;
            }
            aVar.a();
        }
    }

    private com.anythink.core.common.w.a.c.a a(Context context, m mVar, com.anythink.core.common.w.a.b.a aVar, aj ajVar) {
        com.anythink.core.common.w.a.c.a aVar2 = new com.anythink.core.common.w.a.c.a(context, mVar, ajVar, this.f8394d);
        aVar2.a(new AnonymousClass2(ajVar, aVar));
        return aVar2;
    }

    public static /* synthetic */ com.anythink.core.common.w.a.c.a a(e eVar, Context context, m mVar, com.anythink.core.common.w.a.b.a aVar, aj ajVar) {
        com.anythink.core.common.w.a.c.a aVar2 = new com.anythink.core.common.w.a.c.a(context, mVar, ajVar, eVar.f8394d);
        aVar2.a(eVar.new AnonymousClass2(ajVar, aVar));
        return aVar2;
    }
}
