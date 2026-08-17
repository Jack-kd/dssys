package com.meishu.sdk.platform.ms.paster;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.paster.PasterAdLoader;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.m;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.nativ.f;
import com.meishu.sdk.meishu_ad.v;
import com.meishu.sdk.platform.ms.g;
import java.util.List;

/* loaded from: classes4.dex */
public class d extends g<f, PasterAdLoader, com.meishu.sdk.core.ad.paster.b> {

    /* renamed from: b, reason: collision with root package name */
    public v f32897b;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f32898c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32899d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f32900e;

    /* renamed from: f, reason: collision with root package name */
    public com.meishu.sdk.core.ad.paster.a f32901f;

    /* renamed from: g, reason: collision with root package name */
    public int f32902g;

    /* renamed from: h, reason: collision with root package name */
    public int f32903h;

    /* renamed from: i, reason: collision with root package name */
    public int f32904i;

    /* renamed from: j, reason: collision with root package name */
    public int f32905j;

    /* renamed from: k, reason: collision with root package name */
    public long f32906k;

    /* renamed from: l, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.a f32907l;

    public class a implements com.meishu.sdk.meishu_ad.nativ.a {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerAdMediaListener f32908a = new C0703a();

        /* renamed from: com.meishu.sdk.platform.ms.paster.d$a$a, reason: collision with other inner class name */
        public class C0703a implements RecyclerAdMediaListener {
            public C0703a() {
            }

            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onProgressUpdate(long j2, long j3) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoCompleted() {
                d.this.f32898c.setOnClickListener(null);
                if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                    ((PasterAdLoader) d.this.getAdLoader()).getLoaderListener().onVideoComplete();
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoError() {
                d.this.f32898c.setOnClickListener(null);
                if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                    ((PasterAdLoader) d.this.getAdLoader()).getLoaderListener().onVideoError();
                }
            }

            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoLoaded() {
                d dVar = d.this;
                if (dVar.f32900e) {
                    return;
                }
                dVar.f32900e = true;
                if (d.this.getLoaderListener() != 0) {
                    ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onVideoLoaded();
                }
            }

            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoPause() {
            }

            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoResume() {
            }

            @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
            public void onVideoStart() {
            }
        }

        public a() {
        }

        @Override // com.meishu.sdk.meishu_ad.m0
        public void onADExposure() {
            d dVar = d.this;
            if (dVar.f32899d) {
                return;
            }
            v0.a(((f) dVar.f32888a).getPosId(), 3);
            String[] monitorUrl = ((f) d.this.f32888a).getMonitorUrl();
            i0.a(monitorUrl, d.this.f32901f.getAdView(), (View) null);
            if (monitorUrl != null) {
                LogUtil.d("MeishuPasterAdWrapper", "send onADExposure");
                for (String str : monitorUrl) {
                    if (!TextUtils.isEmpty(str)) {
                        com.meishu.sdk.core.loader.a.a(d.this.getContext(), i0.a(i0.a(str, ((f) d.this.f32888a).getAct_type(), AdType.PASTER)));
                    }
                }
            }
            if (d.this.getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onAdExposure();
            }
            com.meishu.sdk.core.ad.paster.a aVar = d.this.f32901f;
            if (aVar != null && aVar.getInteractionListener() != null) {
                d.this.f32901f.getInteractionListener().onAdExposure();
            }
            d.this.f32899d = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.meishu_ad.m0
        public void onADLoaded(List<com.meishu.sdk.meishu_ad.nativ.b> list) {
            List<com.meishu.sdk.meishu_ad.nativ.b> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                    ((PasterAdLoader) d.this.getAdLoader()).getLoaderListener().onAdError();
                    return;
                }
                return;
            }
            com.meishu.sdk.meishu_ad.nativ.b bVar = list2.get(0);
            if (!(bVar.getMediaView() instanceof NormalMediaView)) {
                if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                    ((PasterAdLoader) d.this.getAdLoader()).getLoaderListener().onAdError();
                    return;
                }
                return;
            }
            T t2 = d.this.f32888a;
            if (t2 == 0 || TextUtils.isEmpty(((f) t2).f32395g)) {
                if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                    ((PasterAdLoader) d.this.getAdLoader()).getLoaderListener().onAdError();
                    return;
                }
                return;
            }
            ((NormalMediaView) bVar.getMediaView()).setAutoStart(false);
            d dVar = d.this;
            dVar.f32901f = new com.meishu.sdk.core.ad.paster.a((f) dVar.f32888a);
            d.this.f32901f.getClass();
            d.this.f32901f.setAdView(bVar.getAdView());
            d.this.f32898c.setOnClickListener(new com.meishu.sdk.platform.ms.paster.a(this, bVar));
            TouchAdContainer touchAdContainer = new TouchAdContainer(d.this.getContext());
            touchAdContainer.setTouchPositionListener(new TouchPositionListener(bVar));
            touchAdContainer.setOnTouchListener(new b(this));
            d.this.getContext();
            bVar.a(touchAdContainer, null, new com.meishu.sdk.platform.ms.recycler.b((f) d.this.f32888a, this.f32908a));
            touchAdContainer.setOnClickListener(new c(this, bVar));
            d.this.f32898c.removeAllViews();
            d.this.f32898c.addView(touchAdContainer);
            if (d.this.getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onAdLoaded(d.this.f32901f);
                ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onAdReady(d.this.f32901f);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.meishu_ad.m0
        public void onAdRenderFail(String str, int i2) {
            if (((f) d.this.f32888a).getErrorUrl() != null) {
                a0.a(((f) d.this.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
            }
            if (((PasterAdLoader) d.this.getAdLoader()).getLoaderListener() != null) {
                ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onAdPlatformError(new com.meishu.sdk.platform.ms.d(str, Integer.valueOf(i2)));
                ((com.meishu.sdk.core.ad.paster.b) d.this.getLoaderListener()).onAdRenderFail(str, i2);
            }
        }
    }

    public d(PasterAdLoader pasterAdLoader, f fVar, ViewGroup viewGroup) {
        super(pasterAdLoader, fVar);
        this.f32899d = false;
        this.f32900e = false;
        this.f32907l = new a();
        this.f32897b = new v(pasterAdLoader.getContext());
        this.f32898c = viewGroup;
    }

    @Override // com.meishu.sdk.platform.ms.g, com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        LogUtil.e("MeishuPasterAdWrapper", "MeishuPasterAdWrapper.destroy");
        this.f32898c.setOnClickListener(null);
        this.f32898c.removeAllViews();
        this.f32898c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        this.f32897b.a((f) this.f32888a, this.f32907l, false, false, false, m.b(getContext(), ((PasterAdLoader) getAdLoader()).getAccept_ad_width().intValue()), m.b(getContext(), ((PasterAdLoader) getAdLoader()).getAccept_ad_height().intValue()));
    }
}
