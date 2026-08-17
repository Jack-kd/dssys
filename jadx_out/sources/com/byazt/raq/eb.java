package com.byazt.raq;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1165, 94})
/* loaded from: classes3.dex */
public abstract class eb implements vv {
    public final vv hp;

    public eb(vv vvVar) {
        if (vvVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.hp = vvVar;
    }

    @Override // com.byazt.raq.vv
    public void a_(jx jxVar, long j2) throws IOException {
        this.hp.a_(jxVar, j2);
    }

    @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.hp.close();
    }

    @Override // com.byazt.raq.vv, java.io.Flushable
    public void flush() throws IOException {
        this.hp.flush();
    }

    @Override // com.byazt.raq.vv
    public sz hp() {
        return this.hp.hp();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.hp.toString() + ")";
    }
}
