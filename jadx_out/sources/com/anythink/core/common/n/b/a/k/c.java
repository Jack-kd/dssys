package com.anythink.core.common.n.b.a.k;

import com.anythink.core.common.n.c.c;
import com.anythink.core.common.n.c.e;
import com.anythink.core.common.n.c.f;
import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes2.dex */
final class c {

    /* renamed from: a, reason: collision with root package name */
    final boolean f6631a;

    /* renamed from: b, reason: collision with root package name */
    final e f6632b;

    /* renamed from: c, reason: collision with root package name */
    final a f6633c;

    /* renamed from: d, reason: collision with root package name */
    boolean f6634d;

    /* renamed from: e, reason: collision with root package name */
    int f6635e;

    /* renamed from: f, reason: collision with root package name */
    long f6636f;

    /* renamed from: g, reason: collision with root package name */
    boolean f6637g;

    /* renamed from: h, reason: collision with root package name */
    boolean f6638h;

    /* renamed from: i, reason: collision with root package name */
    private final com.anythink.core.common.n.c.c f6639i = new com.anythink.core.common.n.c.c();

    /* renamed from: j, reason: collision with root package name */
    private final com.anythink.core.common.n.c.c f6640j = new com.anythink.core.common.n.c.c();

    /* renamed from: k, reason: collision with root package name */
    private final byte[] f6641k;

    /* renamed from: l, reason: collision with root package name */
    private final c.a f6642l;

    public interface a {
        void a(int i2, String str);

        void b(f fVar);

        void e();

        void f();

        void g();
    }

    public c(boolean z2, e eVar, a aVar) {
        if (eVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f6631a = z2;
        this.f6632b = eVar;
        this.f6633c = aVar;
        this.f6641k = z2 ? null : new byte[4];
        this.f6642l = z2 ? null : new c.a();
    }

    private void b() throws IOException {
        if (this.f6634d) {
            throw new IOException("closed");
        }
        long jE_ = this.f6632b.a().e_();
        this.f6632b.a().d_();
        try {
            byte bK = this.f6632b.k();
            this.f6632b.a().a(jE_, TimeUnit.NANOSECONDS);
            this.f6635e = bK & ek.f49295m;
            boolean z2 = (bK & com.anythink.core.common.s.a.c.f7560a) != 0;
            this.f6637g = z2;
            boolean z3 = (bK & 8) != 0;
            this.f6638h = z3;
            if (z3 && !z2) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z4 = (bK & com.anythink.core.common.s.a.c.f7561b) != 0;
            boolean z5 = (bK & 32) != 0;
            boolean z6 = (bK & ek.f49296n) != 0;
            if (z4 || z5 || z6) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            byte bK2 = this.f6632b.k();
            boolean z7 = (bK2 & com.anythink.core.common.s.a.c.f7560a) != 0;
            if (z7 == this.f6631a) {
                throw new ProtocolException(this.f6631a ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j2 = bK2 & 127;
            this.f6636f = j2;
            if (j2 == 126) {
                this.f6636f = this.f6632b.l() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            } else if (j2 == 127) {
                long jN = this.f6632b.n();
                this.f6636f = jN;
                if (jN < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.f6636f) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.f6638h && this.f6636f > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z7) {
                this.f6632b.b(this.f6641k);
            }
        } catch (Throwable th) {
            this.f6632b.a().a(jE_, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private void c() throws ProtocolException {
        short sL;
        String strU;
        long j2 = this.f6636f;
        if (j2 > 0) {
            this.f6632b.b(this.f6639i, j2);
            if (!this.f6631a) {
                this.f6639i.a(this.f6642l);
                this.f6642l.a(0L);
                b.a(this.f6642l, this.f6641k);
                this.f6642l.close();
            }
        }
        switch (this.f6635e) {
            case 8:
                long jB = this.f6639i.b();
                if (jB == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (jB != 0) {
                    sL = this.f6639i.l();
                    strU = this.f6639i.u();
                    String strA = b.a(sL);
                    if (strA != null) {
                        throw new ProtocolException(strA);
                    }
                } else {
                    sL = 1005;
                    strU = "";
                }
                this.f6633c.a(sL, strU);
                this.f6634d = true;
                return;
            case 9:
                this.f6633c.b(this.f6639i.t());
                return;
            case 10:
                a aVar = this.f6633c;
                this.f6639i.t();
                aVar.g();
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.f6635e));
        }
    }

    private void d() throws IOException {
        int i2 = this.f6635e;
        if (i2 != 1 && i2 != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i2));
        }
        f();
        if (i2 == 1) {
            this.f6640j.u();
        } else {
            this.f6640j.t();
        }
    }

    private void e() throws IOException {
        while (!this.f6634d) {
            b();
            if (!this.f6638h) {
                return;
            } else {
                c();
            }
        }
    }

    private void f() throws IOException {
        while (!this.f6634d) {
            long j2 = this.f6636f;
            if (j2 > 0) {
                this.f6632b.b(this.f6640j, j2);
                if (!this.f6631a) {
                    this.f6640j.a(this.f6642l);
                    this.f6642l.a(this.f6640j.b() - this.f6636f);
                    b.a(this.f6642l, this.f6641k);
                    this.f6642l.close();
                }
            }
            if (this.f6637g) {
                return;
            }
            e();
            if (this.f6635e != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.f6635e));
            }
        }
        throw new IOException("closed");
    }

    public final void a() throws IOException {
        b();
        if (this.f6638h) {
            c();
            return;
        }
        int i2 = this.f6635e;
        if (i2 != 1 && i2 != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i2));
        }
        f();
        if (i2 == 1) {
            this.f6640j.u();
        } else {
            this.f6640j.t();
        }
    }
}
