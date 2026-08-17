package com.byazt.cd;

import com.byazt.raq.ec;
import com.byazt.raq.sz;
import com.byazt.raq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 150})
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ boolean f18806q = true;

    /* renamed from: e, reason: collision with root package name */
    public final List<com.byazt.cd.jx> f18808e;
    public List<com.byazt.cd.jx> gu;

    /* renamed from: j, reason: collision with root package name */
    public final eb f18809j;
    public boolean jl;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f18810l;

    /* renamed from: w, reason: collision with root package name */
    public final hp f18812w;
    public final l zy;
    public long hp = 0;

    /* renamed from: a, reason: collision with root package name */
    public final jx f18807a = new jx();
    public final jx eb = new jx();

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.cd.l f18811s = null;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR})
    public class jx extends com.byazt.raq.hp {
        public jx() {
        }

        @Override // com.byazt.raq.hp
        public IOException l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.byazt.raq.hp
        public void m_() {
            q.this.l(com.byazt.cd.l.CANCEL);
        }

        public void s() throws IOException {
            if (l()) {
                throw l((IOException) null);
            }
        }
    }

    public q(int i2, eb ebVar, boolean z2, boolean z3, List<com.byazt.cd.jx> list) {
        if (ebVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.jx = i2;
        this.f18809j = ebVar;
        this.f18810l = ebVar.zy.j();
        l lVar = new l(ebVar.jl.j());
        this.zy = lVar;
        hp hpVar = new hp();
        this.f18812w = hpVar;
        lVar.f18819l = z3;
        hpVar.f18814l = z2;
        this.f18808e = list;
    }

    public sz a() {
        return this.eb;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e() throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = com.byazt.cd.q.f18806q
            if (r0 != 0) goto L11
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto Lb
            goto L11
        Lb:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L11:
            monitor-enter(r2)
            com.byazt.cd.q$l r0 = r2.zy     // Catch: java.lang.Throwable -> L27
            boolean r1 = r0.f18819l     // Catch: java.lang.Throwable -> L27
            if (r1 != 0) goto L2b
            boolean r0 = r0.hp     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L2b
            com.byazt.cd.q$hp r0 = r2.f18812w     // Catch: java.lang.Throwable -> L27
            boolean r1 = r0.f18814l     // Catch: java.lang.Throwable -> L27
            if (r1 != 0) goto L29
            boolean r0 = r0.hp     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L2b
            goto L29
        L27:
            r0 = move-exception
            goto L43
        L29:
            r0 = 1
            goto L2c
        L2b:
            r0 = 0
        L2c:
            boolean r1 = r2.l()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L39
            com.byazt.cd.l r0 = com.byazt.cd.l.CANCEL
            r2.hp(r0)
            return
        L39:
            if (r1 != 0) goto L42
            com.byazt.cd.eb r0 = r2.f18809j
            int r1 = r2.jx
            r0.l(r1)
        L42:
            return
        L43:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L27
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cd.q.e():void");
    }

    public ec eb() {
        return this.zy;
    }

    public void gu() throws IOException {
        hp hpVar = this.f18812w;
        if (hpVar.hp) {
            throw new IOException("stream closed");
        }
        if (hpVar.f18814l) {
            throw new IOException("stream finished");
        }
        if (this.f18811s != null) {
            throw new v(this.f18811s);
        }
    }

    public int hp() {
        return this.jx;
    }

    public synchronized List<com.byazt.cd.jx> j() throws IOException {
        List<com.byazt.cd.jx> list;
        if (!jx()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f18807a.hp();
        while (this.gu == null && this.f18811s == null) {
            try {
                jl();
            } catch (Throwable th) {
                this.f18807a.s();
                throw th;
            }
        }
        this.f18807a.s();
        list = this.gu;
        if (list == null) {
            throw new v(this.f18811s);
        }
        this.gu = null;
        return list;
    }

    public void jl() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public boolean jx() {
        return this.f18809j.f18753l == ((this.jx & 1) == 1);
    }

    public synchronized boolean l() {
        try {
            if (this.f18811s != null) {
                return false;
            }
            l lVar = this.zy;
            if (lVar.f18819l || lVar.hp) {
                hp hpVar = this.f18812w;
                if (hpVar.f18814l || hpVar.hp) {
                    if (this.jl) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void q() {
        boolean zL;
        if (!f18806q && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.zy.f18819l = true;
            zL = l();
            notifyAll();
        }
        if (zL) {
            return;
        }
        this.f18809j.l(this.jx);
    }

    public vv s() {
        synchronized (this) {
            try {
                if (!this.jl && !jx()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f18812w;
    }

    public sz w() {
        return this.f18807a;
    }

    public void hp(com.byazt.cd.l lVar) throws IOException {
        if (j(lVar)) {
            this.f18809j.l(this.jx, lVar);
        }
    }

    public synchronized void jx(com.byazt.cd.l lVar) {
        if (this.f18811s == null) {
            this.f18811s = lVar;
            notifyAll();
        }
    }

    public void hp(List<com.byazt.cd.jx> list) {
        boolean zL;
        if (!f18806q && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            zL = true;
            try {
                this.jl = true;
                if (this.gu == null) {
                    this.gu = list;
                    zL = l();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.gu);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.gu = arrayList;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zL) {
            return;
        }
        this.f18809j.l(this.jx);
    }

    public void l(com.byazt.cd.l lVar) {
        if (j(lVar)) {
            this.f18809j.hp(this.jx, lVar);
        }
    }

    private boolean j(com.byazt.cd.l lVar) {
        if (!f18806q && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.f18811s != null) {
                    return false;
                }
                if (this.zy.f18819l && this.f18812w.f18814l) {
                    return false;
                }
                this.f18811s = lVar;
                notifyAll();
                this.f18809j.l(this.jx);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 3})
    public final class hp implements vv {
        public static final /* synthetic */ boolean jx = true;
        public boolean hp;

        /* renamed from: l, reason: collision with root package name */
        public boolean f18814l;

        /* renamed from: w, reason: collision with root package name */
        public final com.byazt.raq.jx f18815w = new com.byazt.raq.jx();

        public hp() {
        }

        private void hp(boolean z2) throws IOException {
            q qVar;
            long jMin;
            q qVar2;
            synchronized (q.this) {
                q.this.eb.hp();
                while (true) {
                    try {
                        qVar = q.this;
                        if (qVar.f18810l > 0 || this.f18814l || this.hp || qVar.f18811s != null) {
                            break;
                        } else {
                            qVar.jl();
                        }
                    } finally {
                        q.this.eb.s();
                    }
                }
                qVar.eb.s();
                q.this.gu();
                jMin = Math.min(q.this.f18810l, this.f18815w.l());
                qVar2 = q.this;
                qVar2.f18810l -= jMin;
            }
            qVar2.eb.hp();
            try {
                q qVar3 = q.this;
                qVar3.f18809j.hp(qVar3.jx, z2 && jMin == this.f18815w.l(), this.f18815w, jMin);
                q.this.eb.s();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // com.byazt.raq.vv
        public void a_(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (!jx && Thread.holdsLock(q.this)) {
                throw new AssertionError();
            }
            this.f18815w.a_(jxVar, j2);
            while (this.f18815w.l() >= 16384) {
                hp(false);
            }
        }

        @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!jx && Thread.holdsLock(q.this)) {
                throw new AssertionError();
            }
            synchronized (q.this) {
                try {
                    if (this.hp) {
                        return;
                    }
                    if (!q.this.f18812w.f18814l) {
                        if (this.f18815w.l() > 0) {
                            while (this.f18815w.l() > 0) {
                                hp(true);
                            }
                        } else {
                            q qVar = q.this;
                            qVar.f18809j.hp(qVar.jx, true, (com.byazt.raq.jx) null, 0L);
                        }
                    }
                    synchronized (q.this) {
                        this.hp = true;
                    }
                    q.this.f18809j.l();
                    q.this.e();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.byazt.raq.vv, java.io.Flushable
        public void flush() throws IOException {
            if (!jx && Thread.holdsLock(q.this)) {
                throw new AssertionError();
            }
            synchronized (q.this) {
                q.this.gu();
            }
            while (this.f18815w.l() > 0) {
                hp(false);
                q.this.f18809j.l();
            }
        }

        @Override // com.byazt.raq.vv
        public sz hp() {
            return q.this.eb;
        }
    }

    public void hp(com.byazt.raq.w wVar, int i2) throws IOException {
        if (!f18806q && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.zy.hp(wVar, i2);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 731})
    public final class l implements ec {
        public static final /* synthetic */ boolean jx = true;
        public final long eb;
        public boolean hp;

        /* renamed from: l, reason: collision with root package name */
        public boolean f18819l;

        /* renamed from: w, reason: collision with root package name */
        public final com.byazt.raq.jx f18820w = new com.byazt.raq.jx();

        /* renamed from: a, reason: collision with root package name */
        public final com.byazt.raq.jx f18817a = new com.byazt.raq.jx();

        public l(long j2) {
            this.eb = j2;
        }

        private void jx() throws IOException {
            if (this.hp) {
                throw new IOException("stream closed");
            }
            if (q.this.f18811s != null) {
                throw new v(q.this.f18811s);
            }
        }

        private void l() throws IOException {
            q.this.f18807a.hp();
            while (this.f18817a.l() == 0 && !this.f18819l && !this.hp) {
                try {
                    q qVar = q.this;
                    if (qVar.f18811s != null) {
                        break;
                    } else {
                        qVar.jl();
                    }
                } finally {
                    q.this.f18807a.s();
                }
            }
        }

        @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (q.this) {
                this.hp = true;
                this.f18817a.vv();
                q.this.notifyAll();
            }
            q.this.e();
        }

        @Override // com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            synchronized (q.this) {
                try {
                    l();
                    jx();
                    if (this.f18817a.l() == 0) {
                        return -1L;
                    }
                    com.byazt.raq.jx jxVar2 = this.f18817a;
                    long jHp = jxVar2.hp(jxVar, Math.min(j2, jxVar2.l()));
                    q qVar = q.this;
                    long j3 = qVar.hp + jHp;
                    qVar.hp = j3;
                    if (j3 >= qVar.f18809j.jl.j() / 2) {
                        q qVar2 = q.this;
                        qVar2.f18809j.hp(qVar2.jx, qVar2.hp);
                        q.this.hp = 0L;
                    }
                    synchronized (q.this.f18809j) {
                        try {
                            eb ebVar = q.this.f18809j;
                            long j4 = ebVar.f18750e + jHp;
                            ebVar.f18750e = j4;
                            if (j4 >= ebVar.jl.j() / 2) {
                                eb ebVar2 = q.this.f18809j;
                                ebVar2.hp(0, ebVar2.f18750e);
                                q.this.f18809j.f18750e = 0L;
                            }
                        } finally {
                        }
                    }
                    return jHp;
                } finally {
                }
            }
        }

        public void hp(com.byazt.raq.w wVar, long j2) throws IOException {
            boolean z2;
            boolean z3;
            if (!jx && Thread.holdsLock(q.this)) {
                throw new AssertionError();
            }
            while (j2 > 0) {
                synchronized (q.this) {
                    z2 = this.f18819l;
                    z3 = this.f18817a.l() + j2 > this.eb;
                }
                if (z3) {
                    wVar.s(j2);
                    q.this.l(com.byazt.cd.l.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z2) {
                    wVar.s(j2);
                    return;
                }
                long jHp = wVar.hp(this.f18820w, j2);
                if (jHp != -1) {
                    j2 -= jHp;
                    synchronized (q.this) {
                        try {
                            boolean z4 = this.f18817a.l() == 0;
                            this.f18817a.hp(this.f18820w);
                            if (z4) {
                                q.this.notifyAll();
                            }
                        } finally {
                        }
                    }
                } else {
                    throw new EOFException();
                }
            }
        }

        @Override // com.byazt.raq.ec
        public sz hp() {
            return q.this.f18807a;
        }
    }

    public void hp(long j2) {
        this.f18810l += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }
}
