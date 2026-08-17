package com.byazt.toc;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.wkz.RefreshableBannerView;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public RefreshableBannerView f25914a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.qre.j f25915e;
    public final Handler eb;

    /* renamed from: j, reason: collision with root package name */
    public a f25916j;
    public com.byazt.iqm.l jx;

    /* renamed from: k, reason: collision with root package name */
    public final View.OnAttachStateChangeListener f25917k;

    /* renamed from: l, reason: collision with root package name */
    public final SoftReference<Context> f25918l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.qre.hp f25919q;

    /* renamed from: s, reason: collision with root package name */
    public final Handler f25920s;

    /* renamed from: u, reason: collision with root package name */
    public final Runnable f25921u;

    /* renamed from: v, reason: collision with root package name */
    public final com.byazt.qre.hp f25922v;

    /* renamed from: w, reason: collision with root package name */
    public a f25923w;
    public int hp = 0;
    public SoftReference<Activity> gu = new SoftReference<>(null);
    public SoftReference<com.byazt.cg.hp> jl = new SoftReference<>(null);
    public SoftReference<Map<String, Object>> zy = new SoftReference<>(null);

    @com.byazt.kj.hp(hp = {0, 1, 225, 1396})
    /* renamed from: com.byazt.toc.gu$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gu.this.f25920s.post(new Runnable() { // from class: com.byazt.toc.gu.3.1
                @Override // java.lang.Runnable
                public void run() throws NumberFormatException {
                    if (gu.this.hp == 0 || gu.this.f25923w == null) {
                        return;
                    }
                    View viewHp = gu.this.f25923w.hp((Context) gu.this.f25918l.get());
                    if (viewHp != null) {
                        gu guVar = gu.this;
                        guVar.hp(guVar.f25923w);
                        if (gu.this.f25914a != null) {
                            gu.this.f25914a.hp(viewHp);
                        }
                        gu.this.f25920s.postDelayed(new Runnable() { // from class: com.byazt.toc.gu.3.1.1
                            @Override // java.lang.Runnable
                            public void run() throws NumberFormatException {
                                if (gu.this.f25916j != null) {
                                    gu.this.f25916j.jx();
                                }
                                gu guVar2 = gu.this;
                                guVar2.f25916j = guVar2.f25923w;
                                gu.this.xs();
                            }
                        }, 250L);
                    } else {
                        if (gu.this.f25923w != null) {
                            gu.this.f25923w.jx();
                        }
                        gu.this.xs();
                    }
                    gu.this.v();
                }
            });
        }
    }

    public gu(Context context) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.byazt.toc.gu.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (gu.this.hp == 0) {
                    return;
                }
                gu.this.xs();
                gu.this.v();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                gu.this.u();
            }
        };
        this.f25917k = onAttachStateChangeListener;
        this.f25922v = new com.byazt.qre.hp() { // from class: com.byazt.toc.gu.2
            @Override // com.byazt.qre.hp
            public void hp() {
                gu.this.u();
                if (gu.this.f25919q != null) {
                    gu.this.f25919q.hp();
                }
            }

            @Override // com.byazt.qre.hp
            public void l(View view) {
                if (gu.this.f25919q != null) {
                    gu.this.f25919q.l(view);
                }
            }

            @Override // com.byazt.qre.hp
            public void hp(View view) {
                if (gu.this.f25919q != null) {
                    gu.this.f25919q.hp(view);
                }
            }

            @Override // com.byazt.qre.hp
            public void hp(com.byazt.dq.hp hpVar) {
                if (gu.this.f25919q != null) {
                    gu.this.f25919q.hp(hpVar);
                }
            }
        };
        this.f25921u = new AnonymousClass3();
        this.f25918l = new SoftReference<>(context);
        this.f25916j = new a(context);
        if (context != null) {
            RefreshableBannerView refreshableBannerView = new RefreshableBannerView(context);
            this.f25914a = refreshableBannerView;
            refreshableBannerView.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f25914a.setVisibilityChangeListener(new RefreshableBannerView.hp() { // from class: com.byazt.toc.gu.4
                @Override // com.byazt.wkz.RefreshableBannerView.hp
                public void hp(boolean z2) {
                    if (!z2) {
                        gu.this.u();
                    } else {
                        if (gu.this.hp == 0) {
                            return;
                        }
                        gu.this.v();
                    }
                }
            });
        }
        this.eb = new Handler(com.byazt.aw.w.l());
        this.f25920s = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.eb.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.eb.removeCallbacksAndMessages(null);
        this.eb.postDelayed(this.f25921u, this.hp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        Context context;
        SoftReference<Context> softReference = this.f25918l;
        if (softReference == null || (context = softReference.get()) == null) {
            return;
        }
        a aVar = new a(context);
        this.f25923w = aVar;
        aVar.hp(this.f25922v);
        this.f25923w.hp(this.f25915e);
        hp(this.jx);
        this.f25923w.hp(new com.byazt.iqm.l(this.jx), (com.byazt.qre.l) null);
    }

    public List<com.byazt.dq.jx> gu() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.jl();
        }
        return null;
    }

    public com.byazt.dq.jx jl() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.f_();
        }
        return null;
    }

    public com.byazt.qt.j k() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.ns();
        }
        return null;
    }

    public int zy() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.u();
        }
        return -1;
    }

    public int a() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.w();
        }
        return 0;
    }

    public com.byazt.dq.jx e() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.v();
        }
        return null;
    }

    public Map<String, Object> eb() {
        a aVar = this.f25916j;
        return aVar != null ? aVar.xs() : new HashMap();
    }

    public boolean j() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.j();
        }
        return false;
    }

    public void jx() throws NumberFormatException {
        this.f25920s.removeCallbacksAndMessages(null);
        u();
        RefreshableBannerView refreshableBannerView = this.f25914a;
        if (refreshableBannerView != null) {
            refreshableBannerView.removeOnAttachStateChangeListener(this.f25917k);
        }
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.jx();
        }
        a aVar2 = this.f25923w;
        if (aVar2 != null) {
            aVar2.jx();
        }
    }

    public List<com.byazt.dq.jx> q() {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.gu();
        }
        return null;
    }

    public List<com.byazt.dq.l> s() {
        a aVar = this.f25916j;
        return aVar != null ? aVar.e() : new ArrayList();
    }

    @Nullable
    public View w() {
        a aVar = this.f25916j;
        if (aVar == null) {
            return null;
        }
        View viewHp = aVar.hp(this.f25918l.get());
        a aVar2 = this.f25916j;
        aVar2.hp(aVar2.f25950j);
        if (viewHp == null || this.f25914a == null) {
            return null;
        }
        viewHp.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.byazt.toc.gu.5
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                if (view.getVisibility() == 0) {
                    gu guVar = gu.this;
                    guVar.hp(guVar.f25916j);
                    view.removeOnLayoutChangeListener(this);
                }
            }
        });
        this.f25914a.removeAllViews();
        ViewParent parent = viewHp.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(viewHp);
        }
        this.f25914a.addView(viewHp);
        return this.f25914a;
    }

    private void hp(com.byazt.iqm.l lVar) {
        com.byazt.tgw.l lVarHp;
        if (lVar == null || (lVarHp = com.byazt.di.l.l().hp(lVar.sz(), 1, 100)) == null) {
            return;
        }
        int iGu = lVarHp.gu(1);
        if (iGu >= 10000 && iGu <= 180000) {
            this.hp = iGu;
            com.byazt.aw.l.hp("TMe", "---==-----banner轮播时间：" + this.hp);
            return;
        }
        com.byazt.aw.l.hp("TMe", "---==-----banner轮播时间下发不在10*1000～180*1000范围内：" + iGu + "，禁止banner轮播");
    }

    public void l() {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.n();
        }
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.qre.l lVar2) {
        SoftReference<Context> softReference;
        if (this.f25916j == null || (softReference = this.f25918l) == null || softReference.get() == null) {
            return;
        }
        this.jx = lVar;
        hp(lVar);
        if (!com.byazt.di.l.l().hp(lVar.sz(), 1) && lVar2 != null) {
            lVar2.hp(new com.byazt.dq.hp(840031, com.byazt.dq.hp.hp(840031)));
        } else if (com.byazt.di.l.l().b()) {
            this.f25916j.hp(this.jx, lVar2);
        } else if (lVar2 != null) {
            lVar2.hp(new com.byazt.dq.hp(840032, com.byazt.dq.hp.hp(840032)));
        }
    }

    public void hp(com.byazt.qre.hp hpVar) {
        this.f25919q = hpVar;
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.hp(this.f25922v);
        }
    }

    public void hp(com.byazt.qre.j jVar) {
        this.f25915e = jVar;
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.hp(jVar);
        }
    }

    public void hp() {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void hp(com.byazt.gu.jx jxVar) {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.hp(jxVar);
        }
    }

    public void hp(com.byazt.gu.l lVar) {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.l(lVar);
        }
    }

    public void hp(com.byazt.qrd.jx jxVar) {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.hp(jxVar);
        }
    }

    public void hp(Activity activity, com.byazt.cg.hp hpVar) {
        this.gu = new SoftReference<>(activity);
        this.jl = new SoftReference<>(hpVar);
    }

    public void hp(Dialog dialog, Integer[] numArr) {
        HashMap map = new HashMap();
        map.put("dislike_dialog", dialog);
        map.put("dislike_ids", numArr);
        this.zy = new SoftReference<>(map);
    }

    public com.byazt.qt.eb hp(Activity activity) {
        a aVar = this.f25916j;
        if (aVar != null) {
            return aVar.hp(activity);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(@NonNull a aVar) {
        Map<String, Object> map = this.zy.get();
        if (map != null) {
            Dialog dialog = (Dialog) map.get("dislike_dialog");
            Integer[] numArr = (Integer[]) map.get("dislike_ids");
            if (dialog != null && numArr != null) {
                aVar.hp(dialog, numArr);
            }
        }
        Activity activity = this.gu.get();
        com.byazt.cg.hp hpVar = this.jl.get();
        if (activity == null || hpVar == null) {
            return;
        }
        aVar.hp(activity, hpVar);
    }

    public void hp(String str) {
        a aVar = this.f25916j;
        if (aVar != null) {
            aVar.j(str);
        }
    }
}
