package com.byazt.raq;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

@com.byazt.kj.hp(hp = {0, 1, 1165, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public final class gu implements ec {
    public final w hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25099j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public final Inflater f25100l;

    public gu(w wVar, Inflater inflater) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.hp = wVar;
        this.f25100l = inflater;
    }

    private void jx() throws IOException {
        int i2 = this.jx;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f25100l.getRemaining();
        this.jx -= remaining;
        this.hp.s(remaining);
    }

    @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f25099j) {
            return;
        }
        this.f25100l.end();
        this.f25099j = true;
        this.hp.close();
    }

    @Override // com.byazt.raq.ec
    public long hp(jx jxVar, long j2) throws DataFormatException, IOException {
        boolean zL;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (this.f25099j) {
            throw new IllegalStateException("closed");
        }
        if (j2 == 0) {
            return 0L;
        }
        do {
            zL = l();
            try {
                v vVarW = jxVar.w(1);
                int iInflate = this.f25100l.inflate(vVarW.hp, vVarW.jx, (int) Math.min(j2, 8192 - vVarW.jx));
                if (iInflate > 0) {
                    vVarW.jx += iInflate;
                    long j3 = iInflate;
                    jxVar.f25110l += j3;
                    return j3;
                }
                if (!this.f25100l.finished() && !this.f25100l.needsDictionary()) {
                }
                jx();
                if (vVarW.f25118l != vVarW.jx) {
                    return -1L;
                }
                jxVar.hp = vVarW.l();
                u.hp(vVarW);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!zL);
        throw new EOFException("source exhausted prematurely");
    }

    public final boolean l() throws IOException {
        if (!this.f25100l.needsInput()) {
            return false;
        }
        jx();
        if (this.f25100l.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.hp.w()) {
            return true;
        }
        v vVar = this.hp.jx().hp;
        int i2 = vVar.jx;
        int i3 = vVar.f25118l;
        int i4 = i2 - i3;
        this.jx = i4;
        this.f25100l.setInput(vVar.hp, i3, i4);
        return false;
    }

    @Override // com.byazt.raq.ec
    public sz hp() {
        return this.hp.hp();
    }
}
