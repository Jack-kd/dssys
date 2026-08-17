package com.byazt.cd;

import com.byazt.cd.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 45})
/* loaded from: classes2.dex */
public final class e implements Closeable {

    /* renamed from: l, reason: collision with root package name */
    public static final Logger f18745l = Logger.getLogger(w.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public int f18746a;
    public boolean eb;
    public final j.l hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f18747j;
    public final com.byazt.raq.j jx;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.raq.jx f18748w;

    public e(com.byazt.raq.j jVar, boolean z2) {
        this.jx = jVar;
        this.f18747j = z2;
        com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
        this.f18748w = jxVar;
        this.hp = new j.l(jxVar);
        this.f18746a = 16384;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.eb = true;
        this.jx.close();
    }

    public synchronized void hp() throws IOException {
        try {
            if (this.eb) {
                throw new IOException("closed");
            }
            if (this.f18747j) {
                Logger logger = f18745l;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.byazt.ru.jx.hp(">> CONNECTION %s", w.hp.w()));
                }
                this.jx.jx(w.hp.s());
                this.jx.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int jx() {
        return this.f18746a;
    }

    public synchronized void l() throws IOException {
        if (this.eb) {
            throw new IOException("closed");
        }
        this.jx.flush();
    }

    public synchronized void l(k kVar) throws IOException {
        try {
            if (!this.eb) {
                int i2 = 0;
                hp(0, kVar.l() * 6, (byte) 4, (byte) 0);
                while (i2 < 10) {
                    if (kVar.hp(i2)) {
                        this.jx.s(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                        this.jx.eb(kVar.l(i2));
                    }
                    i2++;
                }
                this.jx.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void hp(k kVar) throws IOException {
        try {
            if (!this.eb) {
                this.f18746a = kVar.j(this.f18746a);
                if (kVar.jx() != -1) {
                    this.hp.hp(kVar.jx());
                }
                hp(0, 0, (byte) 4, (byte) 1);
                this.jx.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void l(int i2, long j2) throws IOException {
        while (j2 > 0) {
            int iMin = (int) Math.min(this.f18746a, j2);
            long j3 = iMin;
            j2 -= j3;
            hp(i2, iMin, (byte) 9, j2 == 0 ? (byte) 4 : (byte) 0);
            this.jx.a_(this.f18748w, j3);
        }
    }

    public synchronized void hp(int i2, int i3, List<jx> list) throws IOException {
        if (!this.eb) {
            this.hp.hp(list);
            long jL = this.f18748w.l();
            int iMin = (int) Math.min(this.f18746a - 4, jL);
            long j2 = iMin;
            hp(i2, iMin + 4, (byte) 5, jL == j2 ? (byte) 4 : (byte) 0);
            this.jx.eb(i3 & Integer.MAX_VALUE);
            this.jx.a_(this.f18748w, j2);
            if (jL > j2) {
                l(i2, jL - j2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void hp(boolean z2, int i2, int i3, List<jx> list) throws IOException {
        if (!this.eb) {
            hp(z2, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void hp(int i2, l lVar) throws IOException {
        if (!this.eb) {
            if (lVar.eb != -1) {
                hp(i2, 4, (byte) 3, (byte) 0);
                this.jx.eb(lVar.eb);
                this.jx.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void hp(boolean z2, int i2, com.byazt.raq.jx jxVar, int i3) throws IOException {
        if (!this.eb) {
            hp(i2, z2 ? (byte) 1 : (byte) 0, jxVar, i3);
        } else {
            throw new IOException("closed");
        }
    }

    public void hp(int i2, byte b3, com.byazt.raq.jx jxVar, int i3) throws IOException {
        hp(i2, i3, (byte) 0, b3);
        if (i3 > 0) {
            this.jx.a_(jxVar, i3);
        }
    }

    public synchronized void hp(boolean z2, int i2, int i3) throws IOException {
        if (!this.eb) {
            hp(0, 8, (byte) 6, z2 ? (byte) 1 : (byte) 0);
            this.jx.eb(i2);
            this.jx.eb(i3);
            this.jx.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void hp(int i2, l lVar, byte[] bArr) throws IOException {
        try {
            if (!this.eb) {
                if (lVar.eb != -1) {
                    hp(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.jx.eb(i2);
                    this.jx.eb(lVar.eb);
                    if (bArr.length > 0) {
                        this.jx.jx(bArr);
                    }
                    this.jx.flush();
                } else {
                    throw w.hp("errorCode.httpCode == -1", new Object[0]);
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void hp(int i2, long j2) throws IOException {
        if (this.eb) {
            throw new IOException("closed");
        }
        if (j2 != 0 && j2 <= 2147483647L) {
            hp(i2, 4, (byte) 8, (byte) 0);
            this.jx.eb((int) j2);
            this.jx.flush();
        } else {
            throw w.hp("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j2));
        }
    }

    public void hp(int i2, int i3, byte b3, byte b4) throws IOException {
        Logger logger = f18745l;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(w.hp(false, i2, i3, b3, b4));
        }
        int i4 = this.f18746a;
        if (i3 > i4) {
            throw w.hp("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i4), Integer.valueOf(i3));
        }
        if ((Integer.MIN_VALUE & i2) == 0) {
            hp(this.jx, i3);
            this.jx.q(b3 & 255);
            this.jx.q(b4 & 255);
            this.jx.eb(i2 & Integer.MAX_VALUE);
            return;
        }
        throw w.hp("reserved bit set: %s", Integer.valueOf(i2));
    }

    private static void hp(com.byazt.raq.j jVar, int i2) throws IOException {
        jVar.q((i2 >>> 16) & 255);
        jVar.q((i2 >>> 8) & 255);
        jVar.q(i2 & 255);
    }

    public void hp(boolean z2, int i2, List<jx> list) throws IOException {
        if (!this.eb) {
            this.hp.hp(list);
            long jL = this.f18748w.l();
            int iMin = (int) Math.min(this.f18746a, jL);
            long j2 = iMin;
            byte b3 = jL == j2 ? (byte) 4 : (byte) 0;
            if (z2) {
                b3 = (byte) (b3 | 1);
            }
            hp(i2, iMin, (byte) 1, b3);
            this.jx.a_(this.f18748w, j2);
            if (jL > j2) {
                l(i2, jL - j2);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
