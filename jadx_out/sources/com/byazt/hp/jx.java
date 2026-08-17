package com.byazt.hp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.dnb.s;
import com.byazt.dth.LazeLayout;
import com.byazt.jz.ec;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.oh.NativeDrawVideoTsView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.qa.w;
import com.byazt.qt.zy;
import com.byazt.xci.mp;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.lang.ref.WeakReference;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 28, 30})
/* loaded from: classes2.dex */
public class jx extends com.byazt.kd.hp implements LazeLayout.hp<NativeVideoTsView>, com.byazt.dth.hp<NativeVideoTsView> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20770a;

    /* renamed from: e, reason: collision with root package name */
    public volatile WeakReference<NativeVideoTsView> f20771e;
    public final mp eb;
    public CreativeContainer gu;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.dc.hp f20772j;
    public com.byazt.pt.hp jl;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public Bitmap f20773l;

    /* renamed from: q, reason: collision with root package name */
    public LazeLayout f20774q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.jt.l f20775s;

    /* renamed from: w, reason: collision with root package name */
    public j f20776w;

    public jx(Context context, mp mpVar, int i2, com.byazt.jt.l lVar) {
        super(new j(context, mpVar, i2, lVar));
        this.f20774q = null;
        this.f20771e = null;
        this.jl = new com.byazt.pt.hp(null) { // from class: com.byazt.hp.jx.3
            @Override // com.byazt.pt.hp
            public void hp(View view, zy zyVar) {
                NativeVideoTsView nativeVideoTsView = jx.this.f20776w.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.gu();
                }
            }

            @Override // com.byazt.pt.hp
            public void l(View view, zy zyVar) {
                NativeVideoTsView nativeVideoTsView = jx.this.f20776w.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.gu();
                }
            }

            @Override // com.byazt.pt.hp
            public void hp(zy zyVar) {
                NativeVideoTsView nativeVideoTsView = jx.this.f20776w.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.sz();
                }
            }
        };
        this.f20775s = lVar;
        j jVar = (j) getFeedAd();
        this.f20776w = jVar;
        this.eb = mpVar;
        this.f20770a = context;
        ((com.byazt.db.jx) jVar.getNativeAd()).setPluginAdInteractionListener(this.jl);
        if (context == null || mp.jx(mpVar) || !CreativeContainer.hp(mpVar)) {
            return;
        }
        this.gu = new CreativeContainer(context, mpVar, ((com.byazt.db.jx) this.f20776w.getNativeAd()).getInteractionManager());
    }

    @Override // com.byazt.kd.hp, com.byazt.qt.zy
    public void destroy() {
        NativeVideoTsView nativeVideoTsView;
        super.destroy();
        if (this.f20771e != null && (nativeVideoTsView = this.f20771e.get()) != null) {
            nativeVideoTsView.sz();
        }
        LazeLayout lazeLayout = this.f20774q;
        if (lazeLayout != null) {
            lazeLayout.hp();
        }
        CreativeContainer creativeContainer = this.gu;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
    }

    @Override // com.byazt.kd.hp, com.byazt.qt.zy
    public View getAdView() {
        mp mpVar = this.eb;
        NativeVideoTsView nativeVideoTsViewInflate = null;
        if (mpVar == null || this.f20770a == null) {
            return null;
        }
        com.byazt.ktd.l.hp(mpVar.hp());
        if (mp.l(this.eb)) {
            k.hp().hp(this.eb, 3, "valid invoke");
        }
        if (mp.jx(this.eb)) {
            if (!s.hp()) {
                try {
                    nativeVideoTsViewInflate = inflate(this.f20770a);
                } catch (Throwable unused) {
                }
                if (nativeVideoTsViewInflate != null) {
                    onFill(nativeVideoTsViewInflate);
                }
                return nativeVideoTsViewInflate;
            }
            this.f20774q = new LazeLayout(this.f20770a, this, this);
        } else if (this.gu != null) {
            com.byazt.db.jx jxVar = (com.byazt.db.jx) this.f20776w.getNativeAd();
            if (jxVar != null && jxVar.getInteractionManager() != null) {
                jxVar.getInteractionManager().hp(this.gu);
            }
            return this.gu;
        }
        com.byazt.kl.j.hp().hp(this.eb).hp(this.f20776w.getAdType()).l(this.f20776w.getCodeId());
        return this.f20774q;
    }

    @Override // com.byazt.qt.zy
    public String getLifecycleId() {
        mp mpVar = this.eb;
        if (mpVar != null) {
            return mpVar.di();
        }
        return null;
    }

    @Override // com.byazt.qt.zy
    public w getMediationManager() {
        return new com.byazt.pi.jx();
    }

    @Override // com.byazt.qt.zy
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.pt.hp hpVar, com.byazt.tl.j jVar) {
        View adView;
        try {
            registerViewForInteraction(viewGroup, (List<View>) null, list, list2, list3, (View) null, hpVar);
            if (jVar != null) {
                View viewFindViewById = viewGroup.findViewById(jVar.jl());
                if (viewFindViewById != null && getAdLogo() != null) {
                    viewFindViewById.setVisibility(0);
                    if (viewFindViewById instanceof ViewGroup) {
                        ((ViewGroup) viewFindViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(getAdLogo());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                        layoutParams.width = xh.jx(viewGroup.getContext(), 38.0f);
                        layoutParams.height = xh.jx(viewGroup.getContext(), 38.0f);
                        viewFindViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) viewFindViewById).addView(imageView, -1, -1);
                    } else if (viewFindViewById instanceof ImageView) {
                        ((ImageView) viewFindViewById).setImageBitmap(getAdLogo());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(jVar.eb());
                if (frameLayout != null && (adView = getAdView()) != null) {
                    xh.s(adView);
                    frameLayout.removeAllViews();
                    frameLayout.addView(adView, -1, -1);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qt.q
    public void setCanInterruptVideoPlay(boolean z2) {
        this.hp = z2;
    }

    @Override // com.byazt.qt.q
    public void setDrawVideoListener(com.byazt.dc.hp hpVar) {
        this.f20772j = hpVar;
    }

    @Override // com.byazt.qt.zy
    public void setEasyPlayWidgetListener(com.byazt.pt.l lVar) {
        j jVar = this.f20776w;
        if (jVar != null) {
            jVar.setEasyPlayWidgetListener(lVar);
        }
    }

    @Override // com.byazt.qt.q
    public void setPauseIcon(Bitmap bitmap, int i2) {
        this.f20773l = bitmap;
        this.jx = i2;
        hp();
    }

    private boolean hp(int i2) {
        int iA = sz.l().a(i2);
        if (3 == iA) {
            return false;
        }
        if (1 != iA || !vv.j(this.f20770a)) {
            if (2 == iA) {
                if (!vv.w(this.f20770a) && !vv.j(this.f20770a)) {
                    vv.a(this.f20770a);
                }
                return true;
            }
            if (5 == iA && !vv.j(this.f20770a)) {
                vv.a(this.f20770a);
            }
        }
        return true;
    }

    @Override // com.byazt.dth.hp
    public NativeVideoTsView inflate(Context context) {
        NativeVideoTsView nativeVideoTsViewCreateNativeVideoTsView = this.f20776w.createNativeVideoTsView(true);
        nativeVideoTsViewCreateNativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.j() { // from class: com.byazt.hp.jx.1
            @Override // com.byazt.oh.NativeVideoTsView.j
            public void hp(boolean z2, long j2, long j3, long j4, boolean z3, boolean z4) {
                jx.this.f20776w.hp.hp = z2;
                jx.this.f20776w.hp.f23534w = j2;
                jx.this.f20776w.hp.f23530a = j3;
                jx.this.f20776w.hp.eb = j4;
                jx.this.f20776w.hp.f23531j = z3;
                jx.this.f20776w.hp.f23533s = z4;
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.hp() { // from class: com.byazt.hp.jx.2
            @Override // com.byazt.oh.NativeVideoTsView.hp
            public void hp(View view, int i2) {
                ec interactionManager = ((com.byazt.db.jx) jx.this.f20776w.getNativeAd()).getInteractionManager();
                if (interactionManager != null) {
                    interactionManager.hp(view, i2);
                }
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdLoadListener(this.f20776w);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdInteractionListener(this.f20776w);
        nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(hp(ky.zy(this.eb)));
        nativeVideoTsViewCreateNativeVideoTsView.setIsQuiet(this.eb.dh() == 1);
        NativeDrawVideoTsView nativeDrawVideoTsView = (NativeDrawVideoTsView) nativeVideoTsViewCreateNativeVideoTsView;
        nativeDrawVideoTsView.setCanInterruptVideoPlay(this.hp);
        Bitmap bitmap = this.f20773l;
        if (bitmap != null) {
            nativeDrawVideoTsView.hp(bitmap, this.jx);
        }
        nativeVideoTsViewCreateNativeVideoTsView.setDrawVideoListener(this.f20772j);
        this.f20771e = new WeakReference<>(nativeVideoTsViewCreateNativeVideoTsView);
        return nativeVideoTsViewCreateNativeVideoTsView;
    }

    @Override // com.byazt.dth.LazeLayout.hp
    public void onFill(NativeVideoTsView nativeVideoTsView) {
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setNativeRenderAd(true);
            nativeVideoTsView.hp(0L, true, false);
        }
    }

    private void hp() {
        int i2 = this.jx;
        if (i2 >= 200) {
            this.jx = 200;
        } else if (i2 <= 20) {
            this.jx = 20;
        }
    }
}
