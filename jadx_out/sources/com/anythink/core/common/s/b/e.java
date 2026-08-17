package com.anythink.core.common.s.b;

import com.anythink.core.common.d.t;
import com.anythink.core.common.s.c;
import java.util.Map;

/* loaded from: classes2.dex */
public class e implements com.anythink.core.common.s.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7650a = "e";

    /* renamed from: b, reason: collision with root package name */
    private c f7651b;

    /* renamed from: c, reason: collision with root package name */
    private f f7652c;

    /* renamed from: d, reason: collision with root package name */
    private a f7653d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.s.c f7654e;

    /* renamed from: f, reason: collision with root package name */
    private String f7655f;

    /* renamed from: g, reason: collision with root package name */
    private int f7656g;

    public e(com.anythink.core.common.s.c cVar) {
        this.f7654e = cVar;
        this.f7655f = cVar.b();
        this.f7656g = cVar.c();
        this.f7651b = d.a(cVar);
        f fVarB = d.b(cVar);
        this.f7652c = fVarB;
        this.f7653d = new a(this.f7651b, fVarB);
    }

    private boolean c(String str) {
        com.anythink.core.common.s.b.a();
        return com.anythink.core.common.s.b.a(str) && t.b.f3058a.equals(this.f7655f);
    }

    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2) {
        com.anythink.core.common.s.c cVar = this.f7654e;
        if (cVar != null) {
            a(str, v2, cVar.d());
        } else {
            a(str, v2, 1);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final <V> V b(String str, V v2) {
        f fVar;
        if (c(str)) {
            c cVarE = e();
            if (cVarE != null) {
                return (V) cVarE.b(str, v2);
            }
        } else {
            if (this.f7656g == 0 && (fVar = this.f7652c) != null) {
                return (V) fVar.b(str, v2);
            }
            c cVar = this.f7651b;
            if (cVar != null) {
                V v3 = (V) cVar.b(str, v2);
                if ((v3 != null && v3 != v2) || this.f7651b.d()) {
                    return v3;
                }
                f fVar2 = this.f7652c;
                if (fVar2 != null) {
                    return (V) fVar2.b(str, v2);
                }
                return null;
            }
        }
        return v2;
    }

    public final void d() {
        a aVar = this.f7653d;
        if (aVar == null || this.f7656g != 1) {
            return;
        }
        aVar.a();
    }

    public final c e() {
        com.anythink.core.common.s.c cVar = this.f7654e;
        if (cVar != null) {
            return a(cVar.d());
        }
        return null;
    }

    private boolean e(String str) {
        c cVarE = e();
        return cVarE != null && cVarE.a(str);
    }

    private <V> V c(String str, V v2) {
        c cVarE = e();
        return cVarE != null ? (V) cVarE.b(str, v2) : v2;
    }

    private void d(String str) {
        c cVarE = e();
        if (cVarE != null) {
            cVarE.b(str);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2, int i2) {
        c cVar;
        if (c(str)) {
            b(str, v2, i2);
            return;
        }
        if (this.f7656g == 1 && (cVar = this.f7651b) != null) {
            cVar.a(str, v2, i2);
            return;
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            fVar.a(str, (String) v2, i2);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final int c() {
        c cVar = this.f7651b;
        if (cVar != null) {
            return cVar.c();
        }
        return 0;
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map) {
        com.anythink.core.common.s.c cVar = this.f7654e;
        if (cVar != null) {
            a(map, cVar.d());
        } else {
            a(map, 1);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void b(String str) {
        c cVar;
        if (c(str)) {
            c cVarE = e();
            if (cVarE != null) {
                cVarE.b(str);
                return;
            }
            return;
        }
        if (this.f7656g == 1 && (cVar = this.f7651b) != null && cVar.d()) {
            this.f7651b.b(str);
            return;
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            fVar.b(str);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map, int i2) {
        c cVar;
        if (this.f7656g == 1 && (cVar = this.f7651b) != null) {
            cVar.a(map, i2);
            return;
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            fVar.a(map, i2);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final Map<String, Object> a() {
        c cVar;
        if (this.f7656g == 1 && (cVar = this.f7651b) != null && cVar.d()) {
            return this.f7651b.a();
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            return fVar.a();
        }
        return null;
    }

    @Override // com.anythink.core.common.s.a
    public final void b() {
        c cVar;
        if (this.f7656g == 1 && (cVar = this.f7651b) != null && cVar.d()) {
            this.f7651b.b();
            return;
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            fVar.b();
        }
    }

    private <V> void b(String str, V v2, int i2) {
        c cVarA = a(i2);
        if (cVarA != null) {
            cVarA.a(str, (String) v2);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final boolean a(String str) {
        c cVar;
        if (c(str)) {
            c cVarE = e();
            return cVarE != null && cVarE.a(str);
        }
        if (this.f7656g == 1 && (cVar = this.f7651b) != null && cVar.d()) {
            return this.f7651b.a(str);
        }
        f fVar = this.f7652c;
        if (fVar != null) {
            return fVar.a(str);
        }
        return false;
    }

    private void a(com.anythink.core.common.s.c cVar) {
        this.f7655f = cVar.b();
        this.f7656g = cVar.c();
        this.f7651b = d.a(cVar);
        f fVarB = d.b(cVar);
        this.f7652c = fVarB;
        this.f7653d = new a(this.f7651b, fVarB);
    }

    private c a(int i2) {
        if (this.f7654e == null) {
            return null;
        }
        return d.a(new c.a().a(this.f7654e.a()).a(t.b.f3070m).a(this.f7654e.c()).b(i2).a());
    }
}
