package com.anythink.core.common.n.b.a.a;

import com.anythink.core.common.n.c.h;
import com.anythink.core.common.n.c.v;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes2.dex */
class e extends h {

    /* renamed from: a, reason: collision with root package name */
    private boolean f6120a;

    public e(v vVar) {
        super(vVar);
    }

    @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v
    public final void a(com.anythink.core.common.n.c.c cVar, long j2) throws EOFException {
        if (this.f6120a) {
            cVar.i(j2);
            return;
        }
        try {
            super.a(cVar, j2);
        } catch (IOException unused) {
            this.f6120a = true;
            b();
        }
    }

    public void b() {
    }

    @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f6120a) {
            return;
        }
        try {
            super.close();
        } catch (IOException unused) {
            this.f6120a = true;
            b();
        }
    }

    @Override // com.anythink.core.common.n.c.h, com.anythink.core.common.n.c.v, java.io.Flushable
    public void flush() {
        if (this.f6120a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException unused) {
            this.f6120a = true;
            b();
        }
    }
}
