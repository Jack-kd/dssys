package com.byazt.xgv;

import android.os.Handler;
import android.util.Log;
import com.byazt.jz.s;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.concurrent.Callable;
import javax.net.ssl.SSLException;

@com.byazt.kj.hp(hp = {0, 1, 1189, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w<T> {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f27651a;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f27652e;
    public final l<T> eb;
    public volatile boolean gu;
    public final Handler hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f27653j;
    public final Runnable jl;
    public final Callable<T> jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27654l;

    /* renamed from: q, reason: collision with root package name */
    public long f27655q;

    /* renamed from: s, reason: collision with root package name */
    public volatile Thread f27656s;

    /* renamed from: w, reason: collision with root package name */
    public final long f27657w;

    @com.byazt.kj.hp(hp = {0, 1, 1189, 8})
    public static class hp<T> {
        public final Callable<T> hp;

        /* renamed from: l, reason: collision with root package name */
        public l<T> f27659l;
        public int jx = 5;

        /* renamed from: j, reason: collision with root package name */
        public long f27658j = 0;

        /* renamed from: w, reason: collision with root package name */
        public long f27660w = 1000;

        public hp(Callable<T> callable) {
            this.hp = callable;
        }

        public hp<T> hp(int i2) {
            this.jx = i2;
            return this;
        }

        public hp<T> hp(long j2) {
            this.f27658j = j2;
            return this;
        }

        public w<T> hp() {
            return new w<>(this);
        }

        public hp(Callable<T> callable, l<T> lVar) {
            this.hp = callable;
            this.f27659l = lVar;
        }
    }

    public interface l<T> {
        boolean hp(Exception exc);

        boolean hp(T t2);
    }

    public static boolean hp(int i2) {
        return i2 >= 500 || i2 == 429;
    }

    public static /* synthetic */ int w(w wVar) {
        int i2 = wVar.f27654l;
        wVar.f27654l = i2 + 1;
        return i2;
    }

    private w(hp<T> hpVar) {
        this.hp = e.jx();
        this.f27654l = 0;
        this.f27651a = false;
        this.f27655q = 0L;
        this.f27652e = false;
        this.gu = false;
        this.jl = new Runnable() { // from class: com.byazt.xgv.w.1
            @Override // java.lang.Runnable
            public void run() throws Exception {
                try {
                    if (w.this.f27654l < w.this.f27653j && !w.this.gu) {
                        if (s.u().nu()) {
                            w.this.jx();
                            return;
                        }
                        long jA = w.this.a();
                        w.w(w.this);
                        w.this.jx.call();
                        w.this.hp.postDelayed(w.this.jl, jA);
                    }
                } catch (Exception unused) {
                }
            }
        };
        this.jx = hpVar.hp;
        this.eb = hpVar.f27659l;
        this.f27653j = hpVar.jx;
        this.f27657w = hpVar.f27658j;
        this.f27655q = hpVar.f27660w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a() {
        return (long) ((this.f27655q * Math.pow(2.0d, this.f27654l)) + this.f27657w);
    }

    private void j() throws InterruptedException {
        if (this.f27651a) {
            return;
        }
        this.f27654l++;
        w();
    }

    private void w() throws InterruptedException {
        try {
            Thread.sleep(a());
        } catch (InterruptedException unused) {
            this.f27651a = true;
        }
    }

    public void jx() {
        this.hp.removeCallbacks(this.jl);
        this.f27654l = 0;
        this.f27652e = false;
        this.gu = true;
    }

    public void l() {
        this.hp.removeCallbacks(this.jl);
        if (this.f27654l >= this.f27653j || this.f27652e) {
            return;
        }
        if (s.u().nu()) {
            jx();
            return;
        }
        long jA = a();
        this.f27652e = true;
        this.hp.postDelayed(this.jl, jA);
    }

    public T hp() throws Exception {
        this.f27656s = Thread.currentThread();
        this.f27654l = 0;
        T tCall = null;
        while (this.f27654l < this.f27653j && !this.f27651a) {
            try {
            } catch (Exception e2) {
                l<T> lVar = this.eb;
                if (lVar != null && lVar.hp(e2)) {
                    j();
                } else {
                    Log.getStackTraceString(e2);
                    throw e2;
                }
            }
            if (s.u().nu()) {
                this.f27651a = true;
                break;
            }
            tCall = this.jx.call();
            l<T> lVar2 = this.eb;
            if (lVar2 == null || !lVar2.hp((l<T>) tCall)) {
                break;
            }
            j();
        }
        return tCall;
    }

    public static boolean hp(Throwable th) {
        String message;
        if ((th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof InterruptedIOException) || (th instanceof EOFException) || (th instanceof SocketException)) {
            return true;
        }
        if (!(th instanceof IOException) || (message = th.getMessage()) == null) {
            return false;
        }
        String lowerCase = message.toLowerCase();
        return lowerCase.contains("canceled") || lowerCase.contains("timeout") || lowerCase.contains("etimedout") || lowerCase.contains("enetunreach") || lowerCase.contains("econnreset") || lowerCase.contains("connection abort") || lowerCase.contains("software caused connection abort");
    }
}
