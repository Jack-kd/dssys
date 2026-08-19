package com.byazt.wx;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.oa.di;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.UiThread;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1484, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static int f27154a = 10;
    public static int eb = 10;

    /* renamed from: q, reason: collision with root package name */
    public static volatile w f27155q;

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f27156w = new byte[0];

    /* renamed from: s, reason: collision with root package name */
    public final AtomicBoolean f27159s = new AtomicBoolean(false);
    public final List<SSWebView> hp = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final List<SSWebView> f27158l = new ArrayList();
    public final WeakHashMap<com.byazt.ikh.j, jx> jx = new WeakHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public final WeakHashMap<com.byazt.ikh.j, j> f27157j = new WeakHashMap<>();

    private w() {
        com.byazt.ui.jx jxVarJx = com.byazt.ui.hp.hp().jx();
        if (jxVarJx != null) {
            f27154a = jxVarJx.s();
            eb = jxVarJx.q();
        }
    }

    public static w hp() {
        if (f27155q == null) {
            synchronized (w.class) {
                try {
                    if (f27155q == null) {
                        f27155q = new w();
                    }
                } finally {
                }
            }
        }
        return f27155q;
    }

    public void a(SSWebView sSWebView) {
        jx jxVar;
        if (sSWebView == null || (jxVar = this.jx.get(sSWebView)) == null) {
            return;
        }
        jxVar.hp(null);
    }

    public void j(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.hp.size() >= f27154a) {
            sSWebView.destroy();
        } else {
            if (this.hp.contains(sSWebView)) {
                return;
            }
            this.hp.add(sSWebView);
            jx();
        }
    }

    @UiThread
    public void jx(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        sSWebView.M_();
        a(sSWebView);
        j(sSWebView);
    }

    @UiThread
    public void l(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        sSWebView.M_();
        a(sSWebView);
        hp(sSWebView);
    }

    public boolean w(SSWebView sSWebView) {
        if (sSWebView == null) {
            return false;
        }
        sSWebView.destroy();
        return true;
    }

    public int w() {
        return this.hp.size() + j();
    }

    public int jx() {
        return this.hp.size();
    }

    public SSWebView l(Context context, String str) {
        SSWebView sSWebViewRemove;
        if (jx() <= 0 || (sSWebViewRemove = this.hp.remove(0)) == null) {
            return null;
        }
        jx();
        return sSWebViewRemove;
    }

    public int j() {
        return this.f27158l.size();
    }

    public SSWebView hp(Context context, String str) {
        SSWebView sSWebViewRemove;
        if (j() <= 0 || (sSWebViewRemove = this.f27158l.remove(0)) == null) {
            return null;
        }
        this.f27158l.size();
        return sSWebViewRemove;
    }

    public void l() {
        for (SSWebView sSWebView : this.hp) {
            if (sSWebView != null) {
                sSWebView.destroy();
            }
        }
        this.hp.clear();
        for (SSWebView sSWebView2 : this.f27158l) {
            if (sSWebView2 != null) {
                sSWebView2.destroy();
            }
        }
        this.f27158l.clear();
        synchronized (this.f27157j) {
            this.f27157j.clear();
        }
    }

    public void hp(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.f27158l.size() >= eb) {
            sSWebView.destroy();
        } else {
            if (this.f27158l.contains(sSWebView)) {
                return;
            }
            this.f27158l.add(sSWebView);
            this.f27158l.size();
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void hp(SSWebView sSWebView, l lVar) {
        if (sSWebView == null || lVar == null) {
            return;
        }
        jx jxVar = this.jx.get(sSWebView);
        if (jxVar != null) {
            jxVar.hp(lVar);
        } else {
            jxVar = new jx(lVar);
            this.jx.put(sSWebView, jxVar);
        }
        sSWebView.addJavascriptInterface(jxVar, "SDK_INJECT_GLOBAL");
    }

    private static void hp(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            e.l().post(runnable);
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void hp(final com.byazt.ikh.j jVar, di diVar, final String str) {
        final j jVar2;
        if (jVar == null || diVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f27157j) {
            try {
                jVar2 = this.f27157j.get(jVar);
                if (jVar2 != null) {
                    jVar2.hp(diVar);
                } else {
                    jVar2 = new j(diVar);
                    this.f27157j.put(jVar, jVar2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        hp(new Runnable() { // from class: com.byazt.wx.w.1
            @Override // java.lang.Runnable
            public void run() {
                jVar.addJavascriptInterface(jVar2, str);
            }
        });
    }

    public void hp(final com.byazt.ikh.j jVar, final String str) {
        if (jVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f27157j) {
            try {
                j jVar2 = this.f27157j.get(jVar);
                if (jVar2 != null) {
                    jVar2.hp(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        hp(new Runnable() { // from class: com.byazt.wx.w.2
            @Override // java.lang.Runnable
            public void run() {
                jVar.removeJavascriptInterface(str);
            }
        });
    }
}
