package com.byazt.ih;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.byazt.qt.a;
import com.byazt.qt.eb;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 863, 34})
/* loaded from: classes.dex */
public class l extends eb {
    public static final String AD_TAG_BANNER = "banner_ad";
    public static final String AD_TAG_DISLIKE = "dislike";
    public static final String AD_TAG_EXPRESS_BANNER = "slide_banner_ad";
    public static final String AD_TAG_FEED = "embeded_ad";

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21098a;

    /* renamed from: e, reason: collision with root package name */
    public hp f21099e;
    public boolean eb;
    public final List<com.byazt.jlt.hp> gu;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public jx f21100j;
    public j jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.bl.l f21101l;

    /* renamed from: q, reason: collision with root package name */
    public HandlerC0271l f21102q;

    /* renamed from: s, reason: collision with root package name */
    public SoftReference<View> f21103s;

    /* renamed from: w, reason: collision with root package name */
    public TTDislikeToast f21104w;

    public interface hp {
        void hp();

        void hp(int i2, String str, boolean z2);

        void l();
    }

    @com.byazt.kj.hp(hp = {0, 1, 863, 1376})
    /* renamed from: com.byazt.ih.l$l, reason: collision with other inner class name */
    public static class HandlerC0271l extends Handler {
        public WeakReference<Context> hp;

        public HandlerC0271l(Context context) {
            this.hp = new WeakReference<>(context);
        }
    }

    public l(Context context, com.byazt.bl.l lVar, String str, boolean z2, final com.byazt.ih.hp hpVar) {
        this.f21098a = new AtomicBoolean(false);
        this.gu = new ArrayList();
        lVar.l(str);
        lVar.hp("other");
        this.hp = context;
        if (context == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            u.hp("Dislike 初始化必须使用activity,请在TTAdManager.createAdNative(activity)中传入");
            return;
        }
        this.f21101l = lVar;
        this.eb = z2;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            hp(hpVar);
        } else {
            e.l().post(new Runnable() { // from class: com.byazt.ih.l.1
                @Override // java.lang.Runnable
                public void run() {
                    l.this.hp(hpVar);
                }
            });
        }
    }

    public void addInterceptor(com.byazt.jlt.hp hpVar) {
        this.gu.add(hpVar);
        jx jxVar = this.f21100j;
        if (jxVar != null) {
            jxVar.hp(hpVar);
        }
    }

    @Override // com.byazt.qt.eb
    public boolean isShow() {
        if (!(this.hp instanceof Activity)) {
            return false;
        }
        j jVar = this.jx;
        boolean zIsShowing = jVar != null ? jVar.isShowing() : false;
        jx jxVar = this.f21100j;
        return jxVar != null ? jxVar.isShowing() | zIsShowing : zIsShowing;
    }

    public void resetData(com.byazt.bl.l lVar) {
        if ((this.hp instanceof Activity) && lVar != null) {
            this.jx.hp(lVar);
            this.f21100j.hp(lVar);
        }
    }

    @Override // com.byazt.qt.eb
    public void resetDislikeStatus() {
        if (this.hp instanceof Activity) {
            j jVar = this.jx;
            if (jVar != null) {
                jVar.hide();
            }
            jx jxVar = this.f21100j;
            if (jxVar != null) {
                jxVar.hp();
            }
            TTDislikeToast tTDislikeToast = this.f21104w;
            if (tTDislikeToast != null) {
                tTDislikeToast.hp();
            }
            this.f21098a.set(false);
        }
    }

    @Override // com.byazt.qt.eb
    public void setDislikeInteractionCallback(final com.byazt.cg.hp hpVar) {
        this.f21099e = new hp() { // from class: com.byazt.ih.l.4
            @Override // com.byazt.ih.l.hp
            public void hp() {
                com.byazt.cg.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
            }

            @Override // com.byazt.ih.l.hp
            public void l() {
                com.byazt.cg.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.l();
                }
            }

            @Override // com.byazt.ih.l.hp
            public void hp(int i2, String str, boolean z2) {
                com.byazt.cg.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(i2, str, z2);
                }
            }
        };
    }

    @Override // com.byazt.qt.eb
    public void setDislikeSource(String str) {
        com.byazt.bl.l lVar = this.f21101l;
        if (lVar != null) {
            lVar.hp(str);
        }
    }

    public void setMonitorView(View view) {
        this.f21103s = new SoftReference<>(view);
    }

    @Override // com.byazt.qt.eb
    public void showDislikeDialog() {
        TTDislikeToast tTDislikeToast;
        Context context = this.hp;
        boolean z2 = (context instanceof Activity) && !((Activity) context).isFinishing();
        if (this.f21098a.get() && this.eb && (tTDislikeToast = this.f21104w) != null) {
            try {
                tTDislikeToast.hp("您已成功提交反馈，请勿重复提交哦！");
            } catch (Throwable unused) {
            }
        } else {
            if (!z2 || isShow()) {
                return;
            }
            this.jx.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.byazt.bl.l lVar = this.f21101l;
        if (lVar == null) {
            return;
        }
        final String strS = lVar.s();
        if (AD_TAG_EXPRESS_BANNER.equals(strS) || AD_TAG_BANNER.equals(strS) || AD_TAG_FEED.equals(strS)) {
            if (this.f21103s.get() != null && this.f21101l.q()) {
                this.f21103s.get().setVisibility(8);
            }
            if (this.f21102q == null) {
                this.f21102q = new HandlerC0271l(this.hp);
            }
            this.f21102q.postDelayed(new Runnable() { // from class: com.byazt.ih.l.5
                @Override // java.lang.Runnable
                public void run() {
                    l.this.f21101l.l("dislike");
                    if (l.this.f21103s == null || l.this.f21103s.get() == null || !((View) l.this.f21103s.get()).isShown()) {
                        com.byazt.ruu.hp.hp().hp(l.this.hp, l.this.f21101l, "close_success");
                    } else {
                        com.byazt.ruu.hp.hp().hp(l.this.hp, l.this.f21101l, "close_fail");
                    }
                    l.this.f21101l.l(strS);
                }
            }, 500L);
        }
    }

    public void setDislikeInteractionCallback(hp hpVar) {
        this.f21099e = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ih.hp hpVar) {
        ViewGroup viewGroup;
        j jVar = new j(this.hp, this.f21101l, hpVar);
        this.jx = jVar;
        jVar.hp(new com.byazt.jlt.jx() { // from class: com.byazt.ih.l.2
            @Override // com.byazt.jlt.jx
            public void hp() {
                l.this.hp();
            }

            @Override // com.byazt.jlt.jx
            public void jx() {
                u.l("TTAdDislikeImpl", "onDislikeHide: ");
                try {
                    if (l.this.f21099e == null || l.this.isShow()) {
                        return;
                    }
                    l.this.f21099e.l();
                } catch (Throwable th) {
                    u.hp("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.byazt.jlt.jx
            public void l() {
                if (l.this.f21099e != null) {
                    l.this.f21099e.hp();
                }
            }

            @Override // com.byazt.jlt.jx
            public void hp(int i2, a aVar) {
                try {
                    if (!l.this.gu.isEmpty()) {
                        String strJ = l.this.f21100j != null ? l.this.f21100j.j() : "";
                        Iterator it = l.this.gu.iterator();
                        while (it.hasNext()) {
                            ((com.byazt.jlt.hp) it.next()).hp(aVar, strJ, l.this.f21100j);
                        }
                    }
                    if (!aVar.hasSecondOptions()) {
                        if (l.this.f21099e != null) {
                            l.this.f21099e.hp(i2, aVar.getName(), l.this.f21101l != null ? l.this.f21101l.q() : false);
                        }
                        l.this.f21098a.set(true);
                        if ("99:1".equals(aVar.getId())) {
                            return;
                        }
                        if (l.this.f21104w != null) {
                            l.this.f21104w.hp("感谢您的反馈！\n我们将为您带来更优质的广告体验");
                        }
                        l.this.l();
                    }
                    u.l("TTAdDislikeImpl", "onDislikeSelected: " + i2 + ", " + aVar.getName());
                } catch (Throwable th) {
                    u.hp("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }
        });
        jx jxVar = new jx(this.hp, this.f21101l);
        this.f21100j = jxVar;
        jxVar.hp(new com.byazt.jlt.l() { // from class: com.byazt.ih.l.3
            @Override // com.byazt.jlt.l
            public void hp() {
                try {
                    if (l.this.f21098a.get()) {
                        return;
                    }
                    l.this.jx.show();
                    if (l.this.f21100j != null) {
                        String strJ = l.this.f21100j.j();
                        if (TextUtils.isEmpty(strJ)) {
                            return;
                        }
                        l.this.jx.hp(strJ);
                    }
                } catch (Throwable th) {
                    u.hp("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.byazt.jlt.l
            public void hp(int i2, a aVar) {
                try {
                    if (aVar.hasSecondOptions()) {
                        return;
                    }
                    if (l.this.f21099e != null) {
                        l.this.f21099e.hp(i2, aVar.getName(), l.this.f21101l != null ? l.this.f21101l.q() : false);
                    }
                    l.this.f21098a.set(true);
                    if (l.this.f21104w != null) {
                        l.this.f21104w.hp("感谢您的反馈！\n我们将为您带来更优质的广告体验");
                    }
                    l.this.l();
                } catch (Throwable th) {
                    u.hp("TTAdDislikeImpl", "comment callback selected error: ", th);
                }
            }
        });
        if ((this.hp instanceof Activity) && this.eb) {
            this.f21104w = new TTDislikeToast(this.hp);
            Window window = ((Activity) this.hp).getWindow();
            if (window == null || (viewGroup = (ViewGroup) window.getDecorView()) == null) {
                return;
            }
            viewGroup.addView(this.f21104w);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        Context context = this.hp;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.f21100j.isShowing()) {
            return;
        }
        this.f21100j.show();
    }

    public l(Context context, com.byazt.bl.l lVar, boolean z2, com.byazt.ih.hp hpVar) {
        this(context, lVar, null, z2, hpVar);
    }
}
