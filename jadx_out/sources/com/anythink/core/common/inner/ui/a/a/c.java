package com.anythink.core.common.inner.ui.a.a;

import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes2.dex */
public final class c extends d {

    /* renamed from: e, reason: collision with root package name */
    e f5086e;

    public c(View view) {
        super(view);
        if (view == null) {
            return;
        }
        e eVar = new e(view);
        this.f5086e = eVar;
        eVar.g();
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final synchronized void a() {
        super.a();
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final void b() {
        super.b();
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final void c() {
        super.c();
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.c();
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final void d() {
        super.d();
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.d, com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final void a(Canvas canvas) {
        super.a(canvas);
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.a(canvas);
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.d, com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final void a(int i2, int i3) {
        super.a(i2, i3);
        e eVar = this.f5086e;
        if (eVar != null) {
            eVar.a(i2, i3);
        }
    }
}
