package com.byazt.mb;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.location.LocationRequestCompat;
import com.byazt.jz.sz;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.zn.di;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static String f22903a;
    public static AtomicBoolean eb = new AtomicBoolean();

    /* renamed from: s, reason: collision with root package name */
    public static AtomicInteger f22904s = new AtomicInteger();

    /* renamed from: w, reason: collision with root package name */
    public static volatile String f22905w;
    public GLSurfaceView hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f22906j = new AtomicBoolean();

    /* renamed from: l, reason: collision with root package name */
    public Handler f22907l = e.hp();
    public Handler jx = e.l();

    public interface hp {
        void hp(GLSurfaceView gLSurfaceView);
    }

    public static String hp() {
        if (!TextUtils.isEmpty(f22905w)) {
            return f22905w;
        }
        String strJx = com.byazt.lca.j.hp().jx("dev20", LocationRequestCompat.PASSIVE_INTERVAL);
        f22905w = strJx;
        if (!TextUtils.isEmpty(strJx)) {
            return f22905w;
        }
        if (!TextUtils.isEmpty(f22903a)) {
            return f22903a;
        }
        String strJx2 = com.byazt.lca.j.hp().jx("dev21", LocationRequestCompat.PASSIVE_INTERVAL);
        f22903a = strJx2;
        if (!TextUtils.isEmpty(strJx2)) {
            return f22903a;
        }
        if (f22904s.addAndGet(1) >= 3) {
            return f22903a;
        }
        String strHp = di.hp("ro.board.gpu");
        f22903a = strHp;
        if (TextUtils.isEmpty(strHp)) {
            f22903a = di.hp("ro.hardware.egl");
        }
        if (!TextUtils.isEmpty(f22903a)) {
            com.byazt.lca.j.hp().jx("dev21", f22903a);
        }
        return f22903a;
    }

    public static void hp(View view) {
        if (TextUtils.isEmpty(f22905w) && (view instanceof ViewGroup) && sz.l().nd() && eb.compareAndSet(false, true)) {
            String strJx = com.byazt.lca.j.hp().jx("dev20", LocationRequestCompat.PASSIVE_INTERVAL);
            if (!TextUtils.isEmpty(strJx)) {
                f22905w = strJx;
            } else {
                new s().hp((ViewGroup) view, new eb() { // from class: com.byazt.mb.s.1
                    @Override // com.byazt.mb.eb
                    public void hp(String str) {
                        String unused = s.f22905w = str;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        com.byazt.lca.j.hp().jx("dev20", s.f22905w);
                    }
                });
            }
        }
    }

    public void hp(final ViewGroup viewGroup, final eb ebVar) {
        Handler handler = this.jx;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.mb.s.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Context context = viewGroup.getContext();
                        s.this.hp = new GLSurfaceView(context);
                        s.this.hp.setAlpha(0.0f);
                        s.this.hp.setLayoutParams(new FrameLayout.LayoutParams(1, 1));
                        viewGroup.addView(s.this.hp);
                        s sVar = s.this;
                        sVar.hp(viewGroup, sVar.hp, ebVar, new hp() { // from class: com.byazt.mb.s.2.1
                            @Override // com.byazt.mb.s.hp
                            public void hp(GLSurfaceView gLSurfaceView) {
                                s.this.hp(gLSurfaceView);
                            }
                        });
                    } catch (Throwable th) {
                        u.l("gpuInfo", th.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final GLSurfaceView gLSurfaceView) {
        Handler handler = this.jx;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.mb.s.3
                @Override // java.lang.Runnable
                public void run() {
                    ViewParent parent = gLSurfaceView.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(gLSurfaceView);
                    }
                    s.this.hp = null;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(ViewGroup viewGroup, final GLSurfaceView gLSurfaceView, final eb ebVar, final hp hpVar) {
        final String[] strArr = new String[1];
        final Runnable runnable = new Runnable() { // from class: com.byazt.mb.s.4
            @Override // java.lang.Runnable
            public void run() {
                eb ebVar2;
                s.this.f22906j.set(true);
                try {
                    gLSurfaceView.onPause();
                    String str = strArr[0];
                    if (str != null && (ebVar2 = ebVar) != null) {
                        ebVar2.hp(str);
                    }
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(gLSurfaceView);
                    }
                } catch (Throwable th) {
                    u.l("gpuInfo2", th.getMessage());
                }
            }
        };
        try {
            gLSurfaceView.setEGLContextClientVersion(2);
            gLSurfaceView.setRenderer(new GLSurfaceView.Renderer() { // from class: com.byazt.mb.s.5
                @Override // android.opengl.GLSurfaceView.Renderer
                public void onDrawFrame(GL10 gl10) {
                    gLSurfaceView.setRenderMode(0);
                }

                @Override // android.opengl.GLSurfaceView.Renderer
                public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
                }

                @Override // android.opengl.GLSurfaceView.Renderer
                public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                    strArr[0] = GLES20.glGetString(7937);
                    Handler handler = s.this.f22907l;
                    if (handler == null || s.this.f22906j.get()) {
                        return;
                    }
                    handler.removeCallbacks(runnable);
                    handler.post(runnable);
                }
            });
            gLSurfaceView.setRenderMode(0);
            Handler handler = this.f22907l;
            if (handler != null) {
                handler.postDelayed(runnable, 2000L);
            }
        } catch (Throwable th) {
            u.l("gpuInfo1", th.getMessage());
        }
    }
}
