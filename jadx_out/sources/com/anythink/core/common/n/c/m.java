package com.anythink.core.common.n.c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class m implements w {

    /* renamed from: a, reason: collision with root package name */
    private final e f7100a;

    /* renamed from: b, reason: collision with root package name */
    private final Inflater f7101b;

    /* renamed from: c, reason: collision with root package name */
    private int f7102c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f7103d;

    private m(w wVar, Inflater inflater) {
        this(n.a(wVar), inflater);
    }

    private boolean b() {
        if (!this.f7101b.needsInput()) {
            return false;
        }
        c();
        if (this.f7101b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f7100a.g()) {
            return true;
        }
        s sVar = this.f7100a.c().f7059b;
        int i2 = sVar.f7130e;
        int i3 = sVar.f7129d;
        int i4 = i2 - i3;
        this.f7102c = i4;
        this.f7101b.setInput(sVar.f7128c, i3, i4);
        return false;
    }

    private void c() {
        int i2 = this.f7102c;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f7101b.getRemaining();
        this.f7102c -= remaining;
        this.f7100a.i(remaining);
    }

    @Override // com.anythink.core.common.n.c.w
    public final x a() {
        return this.f7100a.a();
    }

    @Override // com.anythink.core.common.n.c.w
    public final long a_(c cVar, long j2) throws DataFormatException, IOException {
        boolean z2;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.f7103d) {
            throw new IllegalStateException("closed");
        }
        if (j2 == 0) {
            return 0L;
        }
        do {
            z2 = false;
            if (this.f7101b.needsInput()) {
                c();
                if (this.f7101b.getRemaining() != 0) {
                    throw new IllegalStateException("?");
                }
                if (this.f7100a.g()) {
                    z2 = true;
                } else {
                    s sVar = this.f7100a.c().f7059b;
                    int i2 = sVar.f7130e;
                    int i3 = sVar.f7129d;
                    int i4 = i2 - i3;
                    this.f7102c = i4;
                    this.f7101b.setInput(sVar.f7128c, i3, i4);
                }
            }
            try {
                s sVarG = cVar.g(1);
                int iInflate = this.f7101b.inflate(sVarG.f7128c, sVarG.f7130e, (int) Math.min(j2, 8192 - sVarG.f7130e));
                if (iInflate > 0) {
                    sVarG.f7130e += iInflate;
                    long j3 = iInflate;
                    cVar.f7060c += j3;
                    return j3;
                }
                if (!this.f7101b.finished() && !this.f7101b.needsDictionary()) {
                }
                c();
                if (sVarG.f7129d != sVarG.f7130e) {
                    return -1L;
                }
                cVar.f7059b = sVarG.c();
                t.a(sVarG);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!z2);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f7103d) {
            return;
        }
        this.f7101b.end();
        this.f7103d = true;
        this.f7100a.close();
    }

    public m(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f7100a = eVar;
        this.f7101b = inflater;
    }
}
