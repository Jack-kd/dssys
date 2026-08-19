package com.anythink.core.common.n.b.a.e;

import com.anythink.core.common.n.b.a.e.d;
import com.anythink.core.common.n.c.w;
import com.anythink.core.common.n.c.x;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
final class h implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    static final Logger f6460a = Logger.getLogger(e.class.getName());

    /* renamed from: b, reason: collision with root package name */
    final d.a f6461b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.c.e f6462c;

    /* renamed from: d, reason: collision with root package name */
    private final a f6463d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f6464e;

    public static final class a implements w {

        /* renamed from: a, reason: collision with root package name */
        int f6465a;

        /* renamed from: b, reason: collision with root package name */
        byte f6466b;

        /* renamed from: c, reason: collision with root package name */
        int f6467c;

        /* renamed from: d, reason: collision with root package name */
        int f6468d;

        /* renamed from: e, reason: collision with root package name */
        short f6469e;

        /* renamed from: f, reason: collision with root package name */
        private final com.anythink.core.common.n.c.e f6470f;

        public a(com.anythink.core.common.n.c.e eVar) {
            this.f6470f = eVar;
        }

        private void b() throws IOException {
            int i2 = this.f6467c;
            int iA = h.a(this.f6470f);
            this.f6468d = iA;
            this.f6465a = iA;
            byte bK = (byte) (this.f6470f.k() & 255);
            this.f6466b = (byte) (this.f6470f.k() & 255);
            Logger logger = h.f6460a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, this.f6467c, this.f6465a, bK, this.f6466b));
            }
            int iM = this.f6470f.m() & Integer.MAX_VALUE;
            this.f6467c = iM;
            if (bK != 9) {
                throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(bK));
            }
            if (iM != i2) {
                throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.anythink.core.common.n.c.w
        public final x a() {
            return this.f6470f.a();
        }

        @Override // com.anythink.core.common.n.c.w
        public final long a_(com.anythink.core.common.n.c.c cVar, long j2) throws IOException {
            int i2;
            int iM;
            do {
                int i3 = this.f6468d;
                if (i3 != 0) {
                    long jA_ = this.f6470f.a_(cVar, Math.min(j2, i3));
                    if (jA_ == -1) {
                        return -1L;
                    }
                    this.f6468d = (int) (this.f6468d - jA_);
                    return jA_;
                }
                this.f6470f.i(this.f6469e);
                this.f6469e = (short) 0;
                if ((this.f6466b & 4) != 0) {
                    return -1L;
                }
                i2 = this.f6467c;
                int iA = h.a(this.f6470f);
                this.f6468d = iA;
                this.f6465a = iA;
                byte bK = (byte) (this.f6470f.k() & 255);
                this.f6466b = (byte) (this.f6470f.k() & 255);
                Logger logger = h.f6460a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.a(true, this.f6467c, this.f6465a, bK, this.f6466b));
                }
                iM = this.f6470f.m() & Integer.MAX_VALUE;
                this.f6467c = iM;
                if (bK != 9) {
                    throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(bK));
                }
            } while (iM == i2);
            throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
        }

        @Override // com.anythink.core.common.n.c.w, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }

    public interface b {
        void a();

        void a(int i2, long j2);

        void a(int i2, com.anythink.core.common.n.b.a.e.b bVar);

        void a(int i2, com.anythink.core.common.n.c.f fVar);

        void a(int i2, List<c> list);

        void a(m mVar);

        void a(boolean z2, int i2, int i3);

        void a(boolean z2, int i2, com.anythink.core.common.n.c.e eVar, int i3);

        void a(boolean z2, int i2, List<c> list);

        void b();

        void d();
    }

    public h(com.anythink.core.common.n.c.e eVar, boolean z2) {
        this.f6462c = eVar;
        this.f6464e = z2;
        a aVar = new a(eVar);
        this.f6463d = aVar;
        this.f6461b = new d.a(aVar, (byte) 0);
    }

    private void b(b bVar, int i2, byte b3, int i3) throws IOException {
        if (i3 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z2 = (b3 & 1) != 0;
        if ((b3 & 32) != 0) {
            throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short sK = (b3 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
        bVar.a(z2, i3, this.f6462c, a(i2, b3, sK));
        this.f6462c.i(sK);
    }

    private void c(b bVar, int i2, byte b3, int i3) throws IOException {
        if (i3 != 0) {
            throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b3 & 1) != 0) {
            if (i2 != 0) {
                throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            return;
        }
        if (i2 % 6 != 0) {
            throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i2));
        }
        m mVar = new m();
        for (int i4 = 0; i4 < i2; i4 += 6) {
            int iL = this.f6462c.l() & 65535;
            int iM = this.f6462c.m();
            if (iL == 2) {
                if (iM != 0 && iM != 1) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (iL == 3) {
                iL = 4;
            } else if (iL != 4) {
                if (iL == 5 && (iM < 16384 || iM > 16777215)) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iM));
                }
            } else {
                if (iM < 0) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                iL = 7;
            }
            mVar.a(iL, iM);
        }
        bVar.a(mVar);
    }

    private void d(b bVar, int i2, byte b3, int i3) throws IOException {
        if (i3 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short sK = (b3 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
        bVar.a(this.f6462c.m() & Integer.MAX_VALUE, a(a(i2 - 4, b3, sK), sK, b3, i3));
    }

    private void e(b bVar, int i2, byte b3, int i3) throws IOException {
        if (i2 != 8) {
            throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            throw e.b("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.a((b3 & 1) != 0, this.f6462c.m(), this.f6462c.m());
    }

    public final void a(b bVar) throws IOException {
        if (this.f6464e) {
            if (!a(true, bVar)) {
                throw e.b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.anythink.core.common.n.c.e eVar = this.f6462c;
        com.anythink.core.common.n.c.f fVar = e.f6345a;
        com.anythink.core.common.n.c.f fVarD = eVar.d(fVar.j());
        Logger logger = f6460a;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.anythink.core.common.n.b.a.c.a("<< CONNECTION %s", fVarD.g()));
        }
        if (!fVar.equals(fVarD)) {
            throw e.b("Expected a connection header but was %s", fVarD.a());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6462c.close();
    }

    private void b(b bVar, int i2, int i3) throws IOException {
        if (i2 < 8) {
            throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i2));
        }
        if (i3 == 0) {
            int iM = this.f6462c.m();
            int iM2 = this.f6462c.m();
            int i4 = i2 - 8;
            if (com.anythink.core.common.n.b.a.e.b.a(iM2) != null) {
                com.anythink.core.common.n.c.f fVarD = com.anythink.core.common.n.c.f.f7071b;
                if (i4 > 0) {
                    fVarD = this.f6462c.d(i4);
                }
                bVar.a(iM, fVarD);
                return;
            }
            throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iM2));
        }
        throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(boolean z2, b bVar) throws IOException {
        try {
            this.f6462c.a(9L);
            int iA = a(this.f6462c);
            if (iA >= 0 && iA <= 16384) {
                byte bK = (byte) (this.f6462c.k() & 255);
                if (z2 && bK != 4) {
                    throw e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(bK));
                }
                byte bK2 = (byte) (this.f6462c.k() & 255);
                int iM = this.f6462c.m() & Integer.MAX_VALUE;
                Logger logger = f6460a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.a(true, iM, iA, bK, bK2));
                }
                switch (bK) {
                    case 0:
                        if (iM == 0) {
                            throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
                        }
                        boolean z3 = (bK2 & 1) != 0;
                        if ((bK2 & 32) == 0) {
                            short sK = (bK2 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
                            bVar.a(z3, iM, this.f6462c, a(iA, bK2, sK));
                            this.f6462c.i(sK);
                            return true;
                        }
                        throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                    case 1:
                        if (iM != 0) {
                            boolean z4 = (bK2 & 1) != 0;
                            short sK2 = (bK2 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
                            if ((bK2 & 32) != 0) {
                                a();
                                iA -= 5;
                            }
                            bVar.a(z4, iM, a(a(iA, bK2, sK2), sK2, bK2, iM));
                            return true;
                        }
                        throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                    case 2:
                        if (iA != 5) {
                            throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iA));
                        }
                        if (iM != 0) {
                            a();
                            return true;
                        }
                        throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
                    case 3:
                        if (iA != 4) {
                            throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(iA));
                        }
                        if (iM != 0) {
                            int iM2 = this.f6462c.m();
                            com.anythink.core.common.n.b.a.e.b bVarA = com.anythink.core.common.n.b.a.e.b.a(iM2);
                            if (bVarA != null) {
                                bVar.a(iM, bVarA);
                                return true;
                            }
                            throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iM2));
                        }
                        throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
                    case 4:
                        if (iM != 0) {
                            throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
                        }
                        if ((bK2 & 1) != 0) {
                            if (iA != 0) {
                                throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                            }
                        } else if (iA % 6 == 0) {
                            m mVar = new m();
                            for (int i2 = 0; i2 < iA; i2 += 6) {
                                int iL = this.f6462c.l() & 65535;
                                int iM3 = this.f6462c.m();
                                if (iL == 2) {
                                    if (iM3 != 0 && iM3 != 1) {
                                        throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                    }
                                } else if (iL == 3) {
                                    iL = 4;
                                } else if (iL != 4) {
                                    if (iL == 5 && (iM3 < 16384 || iM3 > 16777215)) {
                                        throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iM3));
                                    }
                                } else {
                                    if (iM3 < 0) {
                                        throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                    }
                                    iL = 7;
                                }
                                mVar.a(iL, iM3);
                            }
                            bVar.a(mVar);
                        } else {
                            throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(iA));
                        }
                        return true;
                    case 5:
                        if (iM != 0) {
                            short sK3 = (bK2 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
                            bVar.a(this.f6462c.m() & Integer.MAX_VALUE, a(a(iA - 4, bK2, sK3), sK3, bK2, iM));
                            return true;
                        }
                        throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                    case 6:
                        if (iA != 8) {
                            throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(iA));
                        }
                        if (iM == 0) {
                            bVar.a((bK2 & 1) != 0, this.f6462c.m(), this.f6462c.m());
                            return true;
                        }
                        throw e.b("TYPE_PING streamId != 0", new Object[0]);
                    case 7:
                        if (iA < 8) {
                            throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(iA));
                        }
                        if (iM == 0) {
                            int iM4 = this.f6462c.m();
                            int iM5 = this.f6462c.m();
                            int i3 = iA - 8;
                            if (com.anythink.core.common.n.b.a.e.b.a(iM5) != null) {
                                com.anythink.core.common.n.c.f fVarD = com.anythink.core.common.n.c.f.f7071b;
                                if (i3 > 0) {
                                    fVarD = this.f6462c.d(i3);
                                }
                                bVar.a(iM4, fVarD);
                                return true;
                            }
                            throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iM5));
                        }
                        throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
                    case 8:
                        if (iA == 4) {
                            long jM = this.f6462c.m() & 2147483647L;
                            if (jM != 0) {
                                bVar.a(iM, jM);
                                return true;
                            }
                            throw e.b("windowSizeIncrement was 0", Long.valueOf(jM));
                        }
                        throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(iA));
                    default:
                        this.f6462c.i(iA);
                        return true;
                }
            }
            throw e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
        } catch (EOFException unused) {
            return false;
        }
    }

    private void c(b bVar, int i2, int i3) throws IOException {
        if (i2 == 4) {
            long jM = this.f6462c.m() & 2147483647L;
            if (jM != 0) {
                bVar.a(i3, jM);
                return;
            }
            throw e.b("windowSizeIncrement was 0", Long.valueOf(jM));
        }
        throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i2));
    }

    private void a(b bVar, int i2, byte b3, int i3) throws IOException {
        if (i3 != 0) {
            boolean z2 = (b3 & 1) != 0;
            short sK = (b3 & 8) != 0 ? (short) (this.f6462c.k() & 255) : (short) 0;
            if ((b3 & 32) != 0) {
                a();
                i2 -= 5;
            }
            bVar.a(z2, i3, a(a(i2, b3, sK), sK, b3, i3));
            return;
        }
        throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    private List<c> a(int i2, short s2, byte b3, int i3) throws IOException {
        a aVar = this.f6463d;
        aVar.f6468d = i2;
        aVar.f6465a = i2;
        aVar.f6469e = s2;
        aVar.f6466b = b3;
        aVar.f6467c = i3;
        this.f6461b.a();
        return this.f6461b.b();
    }

    private void a(int i2, int i3) throws IOException {
        if (i2 != 5) {
            throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            a();
            return;
        }
        throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
    }

    private void a() {
        this.f6462c.m();
        this.f6462c.k();
    }

    private void a(b bVar, int i2, int i3) throws IOException {
        if (i2 != 4) {
            throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i2));
        }
        if (i3 != 0) {
            int iM = this.f6462c.m();
            com.anythink.core.common.n.b.a.e.b bVarA = com.anythink.core.common.n.b.a.e.b.a(iM);
            if (bVarA != null) {
                bVar.a(i3, bVarA);
                return;
            }
            throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iM));
        }
        throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
    }

    public static int a(com.anythink.core.common.n.c.e eVar) {
        return (eVar.k() & 255) | ((eVar.k() & 255) << 16) | ((eVar.k() & 255) << 8);
    }

    private static int a(int i2, byte b3, short s2) throws IOException {
        if ((b3 & 8) != 0) {
            i2--;
        }
        if (s2 <= i2) {
            return (short) (i2 - s2);
        }
        throw e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s2), Integer.valueOf(i2));
    }
}
