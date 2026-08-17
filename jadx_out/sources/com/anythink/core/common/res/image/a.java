package com.anythink.core.common.res.image;

import com.anythink.core.common.d.s;
import com.anythink.core.common.res.d;
import com.anythink.core.common.res.e;
import com.anythink.core.common.v.n;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes2.dex */
public final class a extends b {

    /* renamed from: a, reason: collision with root package name */
    e f7468a;

    /* renamed from: b, reason: collision with root package name */
    InterfaceC0077a f7469b;

    /* renamed from: com.anythink.core.common.res.image.a$a, reason: collision with other inner class name */
    public interface InterfaceC0077a {
        void a(e eVar);

        void a(e eVar, String str);
    }

    public a(e eVar) {
        super(eVar.f7467h);
        this.f7468a = eVar;
    }

    @Override // com.anythink.core.common.res.image.b
    public final Map<String, String> a() {
        return null;
    }

    @Override // com.anythink.core.common.res.image.b
    public final void b() {
    }

    @Override // com.anythink.core.common.res.image.b
    public final void c() {
        InterfaceC0077a interfaceC0077a = this.f7469b;
        if (interfaceC0077a != null) {
            interfaceC0077a.a(this.f7468a);
        }
    }

    public final void a(InterfaceC0077a interfaceC0077a) {
        this.f7469b = interfaceC0077a;
    }

    @Override // com.anythink.core.common.res.image.b
    public final boolean a(InputStream inputStream) {
        d dVarA = d.a(s.b().g());
        e eVar = this.f7468a;
        return dVarA.a(eVar.f7466g, n.a(eVar.f7467h), inputStream);
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bi, runnable));
    }

    @Override // com.anythink.core.common.res.image.b
    public final void a(String str) {
        InterfaceC0077a interfaceC0077a = this.f7469b;
        if (interfaceC0077a != null) {
            interfaceC0077a.a(this.f7468a, str);
        }
    }
}
