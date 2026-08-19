package ms.bz.bd.c.Pgl;

import android.app.Application;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.Display;
import com.byazt.shx.jx;
import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class r1 {
    private static r1 hp;

    /* renamed from: a, reason: collision with root package name */
    private pbll f52013a;

    /* renamed from: j, reason: collision with root package name */
    private boolean f52014j = false;
    private Context jx;

    /* renamed from: l, reason: collision with root package name */
    private final HandlerThread f52015l;

    /* renamed from: w, reason: collision with root package name */
    private DisplayManager f52016w;

    public class pgla implements Runnable {
        public pgla() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (r1.this.jx != null) {
                    r1.this.f52015l.start();
                    Handler handler = new Handler(r1.this.f52015l.getLooper());
                    r1 r1Var = r1.this;
                    r1Var.f52016w = (DisplayManager) r1Var.jx.getApplicationContext().getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ae4545", new byte[]{116, 110, 84, 81, 7, 35, 123}));
                    if (r1.this.f52016w != null) {
                        Display[] displays = r1.this.f52016w.getDisplays();
                        int length = displays.length;
                        if (length > 1) {
                            q1 q1VarHp = q1.hp();
                            q1VarHp.getClass();
                            String strHp = q1.hp(displays);
                            String strL = q1.l(displays);
                            q1VarHp.hp(length);
                            q1VarHp.l();
                            if (!TextUtils.isEmpty(strHp)) {
                                q1VarHp.hp(strHp);
                            }
                            if (!TextUtils.isEmpty(strL)) {
                                q1VarHp.l(strL);
                            }
                        }
                        r1 r1Var2 = r1.this;
                        r1Var2.f52013a = new pbll(r1Var2.f52016w);
                        r1.this.f52016w.registerDisplayListener(r1.this.f52013a, handler);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private r1(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.jx = applicationContext;
        if (!(applicationContext instanceof Application)) {
            Context contextL = l();
            this.jx = contextL == null ? this.jx : contextL;
        }
        this.f52015l = new HandlerThread((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "469764", new byte[]{8, 7, 121, 113}));
    }

    private static Application l() {
        try {
            return (Application) Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "521ef1", new byte[]{37, 62, 70, 3, 86, 47, com.sigmob.sdk.archives.tar.e.f35444J, 93, 97, 37, com.sigmob.sdk.archives.tar.e.f35446L, 126, 99, 18, 77, 47, 32, 26, 116, 44, ek.f49296n, 56, 80, 20, com.sigmob.sdk.archives.tar.e.f35453S, 34})).getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c936ab", new byte[]{113, 46, 82, 80, 91, 123, 116, 57, 114, 118, 126, com.sigmob.sdk.archives.tar.e.f35444J, 67, 67, 74, 124, 111, 22}), null).invoke(null, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void finalize() throws Throwable {
        pbll pbllVar;
        synchronized (this) {
            try {
                DisplayManager displayManager = this.f52016w;
                if (displayManager != null && (pbllVar = this.f52013a) != null) {
                    displayManager.unregisterDisplayListener(pbllVar);
                }
            } catch (Throwable unused) {
            }
            HandlerThread handlerThread = this.f52015l;
            if (handlerThread != null) {
                try {
                    handlerThread.quitSafely();
                } catch (Throwable unused2) {
                }
            }
        }
        super.finalize();
    }

    public static r1 hp(Context context) {
        r1 r1Var;
        synchronized (r1.class) {
            try {
                if (hp == null) {
                    hp = new r1(context);
                }
                r1Var = hp;
            } catch (Throwable th) {
                throw th;
            }
        }
        return r1Var;
    }

    public final synchronized void hp() {
        if (this.f52014j) {
            return;
        }
        this.f52014j = true;
        new jx(new pgla(), "z/bd/c/Pgl/r1").start();
    }
}
