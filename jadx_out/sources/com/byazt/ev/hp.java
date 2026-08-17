package com.byazt.ev;

import android.os.SystemClock;
import com.byazt.aj.a;
import com.byazt.aj.s;
import com.byazt.hc.w;
import com.byazt.kw.e;
import com.byazt.kw.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME, 28})
/* loaded from: classes2.dex */
public class hp implements Thread.UncaughtExceptionHandler {
    public static hp hp;

    /* renamed from: j, reason: collision with root package name */
    public l f19505j;

    /* renamed from: l, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f19506l;
    public HashSet<Thread.UncaughtExceptionHandler> jx = new HashSet<>();

    /* renamed from: w, reason: collision with root package name */
    public long f19507w = -1;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f19504a = true;

    private hp() {
        jx();
    }

    public static hp hp() {
        if (hp == null) {
            hp = new hp();
        }
        return hp;
    }

    private void jx() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            Thread.setDefaultUncaughtExceptionHandler(this);
            if (this.f19506l == null) {
                this.f19506l = defaultUncaughtExceptionHandler;
            } else {
                this.jx.add(defaultUncaughtExceptionHandler);
            }
        }
    }

    public static void l() {
        try {
            hp hpVar = hp;
            if (hpVar == null) {
                e.hp("CrashCatchDispatcher id not init.");
                return;
            }
            hpVar.f19504a = false;
            l jxVar = hp.f19505j;
            hp = new hp();
            if (jxVar == null) {
                jxVar = new jx(s.j());
            }
            hp.hp(jxVar);
        } catch (Throwable th) {
            e.hp("CrashCatchDispatcher reRegister", th);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        l lVar;
        if (SystemClock.uptimeMillis() - this.f19507w < 20000) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            this.f19507w = SystemClock.uptimeMillis();
            if (!this.f19504a) {
                e.hp("This CrashCatchDispatcher is disable");
                return;
            }
            boolean zHp = hp(thread, th);
            if (zHp) {
                com.byazt.aj.jx jxVar = com.byazt.aj.jx.LAUNCH;
                l(thread, th);
                if (zHp && (lVar = this.f19505j) != null && lVar.hp(th)) {
                    this.f19505j.hp(jCurrentTimeMillis, thread, th);
                }
            }
        } catch (Throwable th2) {
            try {
                e.hp(th2);
            } finally {
                jx(thread, th);
            }
        }
    }

    public void hp(l lVar) {
        this.f19505j = lVar;
    }

    private boolean hp(Thread thread, Throwable th) {
        a aVarJ = s.l().j();
        if (aVarJ != null) {
            try {
                if (!aVarJ.hp(th, thread)) {
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    private void jx(Thread thread, Throwable th) {
        try {
            Iterator<Thread.UncaughtExceptionHandler> it = this.jx.iterator();
            while (it.hasNext()) {
                try {
                    it.next().uncaughtException(thread, th);
                } catch (Throwable unused) {
                }
            }
            this.f19506l.uncaughtException(thread, th);
        } catch (Throwable unused2) {
        }
    }

    public static void hp(final String str) {
        if (str == null) {
            return;
        }
        com.byazt.qj.hp.hp().hp(new com.byazt.qj.jx() { // from class: com.byazt.ev.hp.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.byazt.rw.hp hpVar = new com.byazt.rw.hp();
                    hpVar.hp("data", str);
                    hpVar.hp("userdefine", (Object) 1);
                    com.byazt.rw.hp hpVarHp = w.hp().hp(com.byazt.aj.jx.CUSTOM_JAVA, hpVar);
                    if (hpVarHp != null) {
                        com.byazt.ms.hp.hp().jx(hpVarHp.hp());
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void l(Thread thread, Throwable th) {
        List<Object> listL = s.l().l();
        com.byazt.aj.jx jxVar = com.byazt.aj.jx.LAUNCH;
        Iterator<Object> it = listL.iterator();
        while (it.hasNext()) {
            it.next();
            try {
                k.hp(th);
            } catch (Throwable th2) {
                e.l(th2);
            }
        }
    }
}
