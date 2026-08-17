package com.byazt.ei;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.byazt.pu.TTDownloadField;
import com.byazt.xq.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPADE, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public volatile int f19407a;
    public volatile boolean eb;
    public Application hp;

    /* renamed from: j, reason: collision with root package name */
    public int f19408j;
    public final List<InterfaceC0218hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public jx f19409l;

    /* renamed from: s, reason: collision with root package name */
    public final Application.ActivityLifecycleCallbacks f19410s;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference<Activity> f19411w;

    /* renamed from: com.byazt.ei.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0218hp {
        @MainThread
        void jx();

        @MainThread
        void l();
    }

    public interface jx {
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPADE, 255})
    public static class l {
        public static final hp hp = new hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f19407a = 0;
        Object[] objArrJ = j();
        if (objArrJ != null) {
            for (Object obj : objArrJ) {
                ((InterfaceC0218hp) obj).jx();
            }
        }
    }

    private boolean eb() {
        try {
            Application application = this.hp;
            if (application == null) {
                return false;
            }
            application.getSystemService(TTDownloadField.TT_ACTIVITY);
            return TextUtils.equals(application.getPackageName(), a.j(application));
        } catch (Throwable unused) {
            return false;
        }
    }

    private Object[] j() {
        Object[] array;
        synchronized (this.jx) {
            try {
                array = this.jx.size() > 0 ? this.jx.toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        this.f19407a = 1;
        Object[] objArrJ = j();
        if (objArrJ != null) {
            for (Object obj : objArrJ) {
                ((InterfaceC0218hp) obj).l();
            }
        }
    }

    private hp() {
        this.jx = new ArrayList();
        this.f19407a = -1;
        this.eb = false;
        this.f19410s = new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.ei.hp.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                hp.this.eb = true;
                if (hp.this.f19408j != 0 || activity == null) {
                    return;
                }
                hp.this.f19408j = activity.hashCode();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                int i2 = hp.this.f19408j;
                hp.this.eb = false;
                hp.this.f19408j = activity != null ? activity.hashCode() : i2;
                if (i2 == 0) {
                    hp.this.w();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                hp.this.f19411w = new WeakReference(activity);
                int i2 = hp.this.f19408j;
                hp.this.f19408j = activity != null ? activity.hashCode() : i2;
                hp.this.eb = false;
                if (i2 == 0) {
                    hp.this.w();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (activity != null && activity.hashCode() == hp.this.f19408j) {
                    hp.this.f19408j = 0;
                    hp.this.a();
                }
                hp.this.eb = false;
            }
        };
    }

    public boolean jx() {
        return l() && !this.eb;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    public boolean l() {
        int i2 = this.f19407a;
        int i3 = i2;
        if (i2 == -1) {
            ?? Eb = eb();
            this.f19407a = Eb;
            i3 = Eb;
        }
        return i3 == 1;
    }

    public static hp hp() {
        return l.hp;
    }

    public void l(InterfaceC0218hp interfaceC0218hp) {
        synchronized (this.jx) {
            this.jx.remove(interfaceC0218hp);
        }
    }

    public void hp(Context context) {
        if (this.hp == null && (context instanceof Application)) {
            synchronized (this) {
                try {
                    if (this.hp == null) {
                        Application application = (Application) context;
                        this.hp = application;
                        application.registerActivityLifecycleCallbacks(this.f19410s);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void hp(jx jxVar) {
        this.f19409l = jxVar;
    }

    public void hp(InterfaceC0218hp interfaceC0218hp) {
        if (interfaceC0218hp == null) {
            return;
        }
        synchronized (this.jx) {
            try {
                if (!this.jx.contains(interfaceC0218hp)) {
                    this.jx.add(interfaceC0218hp);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
