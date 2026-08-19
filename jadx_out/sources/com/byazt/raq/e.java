package com.byazt.raq;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

@com.byazt.kj.hp(hp = {0, 1, 1165, 45})
/* loaded from: classes3.dex */
public final class e implements ec {

    /* renamed from: j, reason: collision with root package name */
    public final gu f25096j;
    public final Inflater jx;

    /* renamed from: l, reason: collision with root package name */
    public final w f25097l;
    public int hp = 0;

    /* renamed from: w, reason: collision with root package name */
    public final CRC32 f25098w = new CRC32();

    public e(ec ecVar) {
        if (ecVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.jx = inflater;
        w wVarHp = jl.hp(ecVar);
        this.f25097l = wVarHp;
        this.f25096j = new gu(wVarHp, inflater);
    }

    private void jx() throws IOException {
        hp("CRC", this.f25097l.jl(), (int) this.f25098w.getValue());
        hp("ISIZE", this.f25097l.jl(), (int) this.jx.getBytesWritten());
    }

    private void l() throws IOException {
        this.f25097l.hp(10L);
        byte bL = this.f25097l.jx().l(3L);
        boolean z2 = ((bL >> 1) & 1) == 1;
        if (z2) {
            hp(this.f25097l.jx(), 0L, 10L);
        }
        hp("ID1ID2", 8075, this.f25097l.q());
        this.f25097l.s(8L);
        if (((bL >> 2) & 1) == 1) {
            this.f25097l.hp(2L);
            if (z2) {
                hp(this.f25097l.jx(), 0L, 2L);
            }
            long jGu = this.f25097l.jx().gu();
            this.f25097l.hp(jGu);
            if (z2) {
                hp(this.f25097l.jx(), 0L, jGu);
            }
            this.f25097l.s(jGu);
        }
        if (((bL >> 3) & 1) == 1) {
            long jHp = this.f25097l.hp((byte) 0);
            if (jHp == -1) {
                throw new EOFException();
            }
            if (z2) {
                hp(this.f25097l.jx(), 0L, jHp + 1);
            }
            this.f25097l.s(jHp + 1);
        }
        if (((bL >> 4) & 1) == 1) {
            long jHp2 = this.f25097l.hp((byte) 0);
            if (jHp2 == -1) {
                throw new EOFException();
            }
            if (z2) {
                hp(this.f25097l.jx(), 0L, jHp2 + 1);
            }
            this.f25097l.s(jHp2 + 1);
        }
        if (z2) {
            hp("FHCRC", this.f25097l.gu(), (short) this.f25098w.getValue());
            this.f25098w.reset();
        }
    }

    @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f25096j.close();
    }

    @Override // com.byazt.raq.ec
    public long hp(jx jxVar, long j2) throws DataFormatException, IOException {
        e eVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return 0L;
        }
        if (this.hp == 0) {
            l();
            this.hp = 1;
        }
        if (this.hp == 1) {
            long j3 = jxVar.f25110l;
            long jHp = this.f25096j.hp(jxVar, j2);
            if (jHp != -1) {
                hp(jxVar, j3, jHp);
                return jHp;
            }
            eVar = this;
            eVar.hp = 2;
        } else {
            eVar = this;
        }
        if (eVar.hp == 2) {
            jx();
            eVar.hp = 3;
            if (!eVar.f25097l.w()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.byazt.raq.ec
    public sz hp() {
        return this.f25097l.hp();
    }

    private void hp(jx jxVar, long j2, long j3) {
        v vVar = jxVar.hp;
        while (true) {
            int i2 = vVar.jx;
            int i3 = vVar.f25118l;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= i2 - i3;
            vVar = vVar.f25116a;
        }
        while (j3 > 0) {
            int iMin = (int) Math.min(vVar.jx - r6, j3);
            this.f25098w.update(vVar.hp, (int) (vVar.f25118l + j2), iMin);
            j3 -= iMin;
            vVar = vVar.f25116a;
            j2 = 0;
        }
    }

    private void hp(String str, int i2, int i3) throws IOException {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }
}
