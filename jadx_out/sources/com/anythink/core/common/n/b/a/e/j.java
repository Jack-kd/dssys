package com.anythink.core.common.n.b.a.e;

import com.anythink.core.common.n.b.a.e.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
final class j implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f6500b = Logger.getLogger(e.class.getName());

    /* renamed from: a, reason: collision with root package name */
    final d.b f6501a;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.c.d f6502c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f6503d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.n.c.c f6504e;

    /* renamed from: f, reason: collision with root package name */
    private int f6505f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f6506g;

    public j(com.anythink.core.common.n.c.d dVar, boolean z2) {
        this.f6502c = dVar;
        this.f6503d = z2;
        com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
        this.f6504e = cVar;
        this.f6501a = new d.b(cVar);
        this.f6505f = 16384;
    }

    public final synchronized void a() {
        try {
            if (this.f6506g) {
                throw new IOException("closed");
            }
            if (this.f6503d) {
                Logger logger = f6500b;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.anythink.core.common.n.b.a.c.a(">> CONNECTION %s", e.f6345a.g()));
                }
                this.f6502c.d(e.f6345a.k());
                this.f6502c.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        if (this.f6506g) {
            throw new IOException("closed");
        }
        this.f6502c.flush();
    }

    public final int c() {
        return this.f6505f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f6506g = true;
        this.f6502c.close();
    }

    public final synchronized void b(m mVar) {
        try {
            if (!this.f6506g) {
                int i2 = 0;
                a(0, mVar.b() * 6, (byte) 4, (byte) 0);
                while (i2 < 10) {
                    if (mVar.a(i2)) {
                        this.f6502c.k(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                        this.f6502c.i(mVar.b(i2));
                    }
                    i2++;
                }
                this.f6502c.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(m mVar) {
        try {
            if (!this.f6506g) {
                this.f6505f = mVar.c(this.f6505f);
                if (mVar.c() != -1) {
                    this.f6501a.a(mVar.c());
                }
                a(0, 0, (byte) 4, (byte) 1);
                this.f6502c.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void b(int i2, long j2) {
        while (j2 > 0) {
            int iMin = (int) Math.min(this.f6505f, j2);
            long j3 = iMin;
            j2 -= j3;
            a(i2, iMin, (byte) 9, j2 == 0 ? (byte) 4 : (byte) 0);
            this.f6502c.a(this.f6504e, j3);
        }
    }

    public final synchronized void a(int i2, int i3, List<c> list) {
        if (!this.f6506g) {
            this.f6501a.a(list);
            long jB = this.f6504e.b();
            int iMin = (int) Math.min(this.f6505f - 4, jB);
            long j2 = iMin;
            a(i2, iMin + 4, (byte) 5, jB == j2 ? (byte) 4 : (byte) 0);
            this.f6502c.i(i3 & Integer.MAX_VALUE);
            this.f6502c.a(this.f6504e, j2);
            if (jB > j2) {
                b(i2, jB - j2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i2, b bVar) {
        if (!this.f6506g) {
            if (bVar.f6304l != -1) {
                a(i2, 4, (byte) 3, (byte) 0);
                this.f6502c.i(bVar.f6304l);
                this.f6502c.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(boolean z2, int i2, com.anythink.core.common.n.c.c cVar, int i3) {
        if (!this.f6506g) {
            a(i2, i3, (byte) 0, z2 ? (byte) 1 : (byte) 0);
            if (i3 > 0) {
                this.f6502c.a(cVar, i3);
            }
        } else {
            throw new IOException("closed");
        }
    }

    private void a(int i2, byte b3, com.anythink.core.common.n.c.c cVar, int i3) {
        a(i2, i3, (byte) 0, b3);
        if (i3 > 0) {
            this.f6502c.a(cVar, i3);
        }
    }

    public final synchronized void a(boolean z2, int i2, int i3) {
        if (!this.f6506g) {
            a(0, 8, (byte) 6, z2 ? (byte) 1 : (byte) 0);
            this.f6502c.i(i2);
            this.f6502c.i(i3);
            this.f6502c.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i2, b bVar, byte[] bArr) {
        try {
            if (!this.f6506g) {
                if (bVar.f6304l != -1) {
                    a(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f6502c.i(i2);
                    this.f6502c.i(bVar.f6304l);
                    if (bArr.length > 0) {
                        this.f6502c.d(bArr);
                    }
                    this.f6502c.flush();
                } else {
                    throw e.a("errorCode.httpCode == -1", new Object[0]);
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(int i2, long j2) {
        if (this.f6506g) {
            throw new IOException("closed");
        }
        if (j2 != 0 && j2 <= 2147483647L) {
            a(i2, 4, (byte) 8, (byte) 0);
            this.f6502c.i((int) j2);
            this.f6502c.flush();
        } else {
            throw e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j2));
        }
    }

    private void a(int i2, int i3, byte b3, byte b4) {
        Logger logger = f6500b;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i2, i3, b3, b4));
        }
        int i4 = this.f6505f;
        if (i3 > i4) {
            throw e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i4), Integer.valueOf(i3));
        }
        if ((Integer.MIN_VALUE & i2) == 0) {
            a(this.f6502c, i3);
            this.f6502c.l(b3 & 255);
            this.f6502c.l(b4 & 255);
            this.f6502c.i(i2 & Integer.MAX_VALUE);
            return;
        }
        throw e.a("reserved bit set: %s", Integer.valueOf(i2));
    }

    private static void a(com.anythink.core.common.n.c.d dVar, int i2) {
        dVar.l((i2 >>> 16) & 255);
        dVar.l((i2 >>> 8) & 255);
        dVar.l(i2 & 255);
    }

    public final synchronized void a(boolean z2, int i2, List<c> list) {
        if (!this.f6506g) {
            this.f6501a.a(list);
            long jB = this.f6504e.b();
            int iMin = (int) Math.min(this.f6505f, jB);
            long j2 = iMin;
            byte b3 = jB == j2 ? (byte) 4 : (byte) 0;
            if (z2) {
                b3 = (byte) (b3 | 1);
            }
            a(i2, iMin, (byte) 1, b3);
            this.f6502c.a(this.f6504e, j2);
            if (jB > j2) {
                b(i2, jB - j2);
            }
        } else {
            throw new IOException("closed");
        }
    }
}
