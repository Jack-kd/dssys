package com.meishu.sdk.meishu_ad.nativ;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.rx.BaseConstants;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.j0;
import com.meishu.sdk.meishu_ad.n0;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class d extends com.meishu.sdk.core.ad.a implements b {

    /* renamed from: a, reason: collision with root package name */
    public int f32371a;

    /* renamed from: b, reason: collision with root package name */
    public int f32372b;

    /* renamed from: c, reason: collision with root package name */
    public String f32373c;

    /* renamed from: d, reason: collision with root package name */
    public String[] f32374d;

    /* renamed from: e, reason: collision with root package name */
    public String f32375e;

    /* renamed from: f, reason: collision with root package name */
    public String f32376f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32377g;

    /* renamed from: h, reason: collision with root package name */
    public n0 f32378h;

    /* renamed from: i, reason: collision with root package name */
    public f f32379i;

    /* renamed from: j, reason: collision with root package name */
    public Context f32380j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f32381k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f32382l;

    public class a implements com.meishu.sdk.core.bquery.j<File> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ n0 f32383a;

        public a(n0 n0Var) {
            this.f32383a = n0Var;
        }

        @Override // com.meishu.sdk.core.bquery.j
        public void onFail(int i2, String str) {
        }

        @Override // com.meishu.sdk.core.bquery.j
        public void onSuccess(String str, File file) {
            File file2 = file;
            try {
                if (file2.length() >= j0.a()) {
                    return;
                }
                d.this.f32379i.f32388D = System.currentTimeMillis();
                f fVar = d.this.f32379i;
                String[] monitorUrl = fVar.getMonitorUrl();
                StringBuilder sb = new StringBuilder();
                sb.append(d.this.f32379i.f32387C);
                sb.append(com.anythink.core.common.d.i.f2495E);
                d.this.f32379i.getClass();
                sb.append(0L);
                sb.append(com.anythink.core.common.d.i.f2495E);
                sb.append(d.this.f32379i.f32388D);
                fVar.setMonitorUrl(i0.b(monitorUrl, sb.toString()));
                this.f32383a.setVideoPath(file2.getAbsolutePath());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public d(f fVar) {
        super(null, "MS");
        this.f32382l = false;
        this.f32379i = fVar;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public int getAdPatternType() {
        return this.f32372b;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public View getAdView() {
        return this.f32378h.getVideoView();
    }

    @Override // com.meishu.sdk.platform.ms.c
    public Context getContext() {
        Context context = this.f32380j;
        return context != null ? context : this.f32378h.getVideoView().getContext();
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public String getDesc() {
        return this.f32376f;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public String getIconUrl() {
        return this.f32373c;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public String[] getImgUrls() {
        return this.f32374d;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b, com.meishu.sdk.platform.ms.c
    public int getInteractionType() {
        return this.f32379i.getInteractionType();
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public n0 getMediaView() {
        return this.f32378h;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public String getTitle() {
        return this.f32375e;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public void a(Context context, ViewGroup viewGroup, List<View> list, com.meishu.sdk.platform.ms.recycler.d dVar) {
        if (context instanceof Activity) {
            this.f32380j = context;
        } else {
            this.f32380j = viewGroup.getContext();
        }
        if (list != null) {
            Iterator<View> it = list.iterator();
            while (it.hasNext()) {
                it.next().setOnClickListener(new c(this, viewGroup, dVar));
            }
        }
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdType b() {
        return AdType.FEED;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdSlot a() {
        return this.f32379i;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b, com.meishu.sdk.platform.ms.c
    public f a() {
        return this.f32379i;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.b
    public void a(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, e eVar) {
        n0 n0Var = this.f32378h;
        com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(viewGroup);
        iVar.a(this.f32379i.f32395g, BaseConstants.Time.DAY, true, new com.meishu.sdk.core.bquery.d(iVar, new a(n0Var)));
        if (n0Var != null) {
            n0Var.setNativeAdMediaListener(eVar);
            ViewGroup viewGroup2 = (ViewGroup) n0Var.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            if (viewGroup != null) {
                if (layoutParams != null) {
                    viewGroup.addView(this.f32378h.getVideoView(), layoutParams);
                } else {
                    viewGroup.addView(this.f32378h.getVideoView());
                }
            }
        }
    }
}
