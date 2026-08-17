package com.meishu.sdk.meishu_ad;

import android.util.DisplayMetrics;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.meishu.sdk.core.view.DownloadView;

/* loaded from: classes4.dex */
public class n extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32303a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32304b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageView f32305c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ImageView f32306d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32307e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImageView f32308f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ TextView f32309g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TextView f32310h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TextView f32311i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ImageView f32312j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ v f32313k;

    public n(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, ImageView imageView3, TextView textView, TextView textView2, TextView textView3, ImageView imageView4) {
        this.f32313k = vVar;
        this.f32303a = cVar;
        this.f32304b = relativeLayout;
        this.f32305c = imageView;
        this.f32306d = imageView2;
        this.f32307e = relativeLayout2;
        this.f32308f = imageView3;
        this.f32309g = textView;
        this.f32310h = textView2;
        this.f32311i = textView3;
        this.f32312j = imageView4;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        int iA = com.meishu.sdk.core.utils.m.a(this.f32313k.f32569a);
        com.meishu.sdk.meishu_ad.splash.c cVar = this.f32303a;
        boolean z2 = cVar != null && DownloadView.isDownloadStyleAd(cVar.f32515b);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f32304b.getLayoutParams();
        double d2 = iA;
        double d3 = d2 * 13.7d;
        int i2 = ((int) d3) / 100;
        layoutParams.width = i2;
        layoutParams.height = i2;
        layoutParams.bottomMargin = ((int) (3.8d * d2)) / 100;
        this.f32304b.setLayoutParams(layoutParams);
        this.f32305c.setLayoutParams(layoutParams);
        int i3 = ((int) (d3 * 0.592d)) / 100;
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f32306d.getLayoutParams();
        layoutParams2.width = i3;
        layoutParams2.height = i3;
        layoutParams2.addRule(13);
        this.f32306d.setLayoutParams(layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f32307e.getLayoutParams();
        layoutParams3.bottomMargin = ((int) (2.8d * d2)) / 100;
        layoutParams3.topMargin = i2;
        layoutParams3.width = i2;
        layoutParams3.height = i2;
        this.f32307e.setLayoutParams(layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f32308f.getLayoutParams();
        layoutParams4.addRule(12);
        layoutParams4.addRule(14);
        this.f32308f.setLayoutParams(layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f32309g.getLayoutParams();
        layoutParams5.bottomMargin = ((int) (0.9d * d2)) / 100;
        this.f32309g.setLayoutParams(layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.f32310h.getLayoutParams();
        layoutParams6.bottomMargin = ((int) (4.9d * d2)) / 100;
        if (z2) {
            layoutParams6.bottomMargin = ((int) (6.9d * d2)) / 100;
        }
        this.f32310h.setLayoutParams(layoutParams6);
        DisplayMetrics displayMetrics = this.f32313k.f32569a.getResources().getDisplayMetrics();
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) this.f32311i.getLayoutParams();
        int i4 = ((int) (displayMetrics.widthPixels * 13.7d)) / 100;
        layoutParams7.leftMargin = i4;
        layoutParams7.rightMargin = i4;
        layoutParams7.bottomMargin = ((int) (5.7d * d2)) / 100;
        if (z2) {
            layoutParams7.bottomMargin = ((int) (6.7d * d2)) / 100;
        }
        layoutParams7.height = (iA * 6) / 100;
        this.f32311i.setLayoutParams(layoutParams7);
        FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) this.f32312j.getLayoutParams();
        layoutParams8.bottomMargin = ((int) (d2 * 1.8d)) / 100;
        layoutParams8.rightMargin = ((int) (displayMetrics.widthPixels * 3.6d)) / 100;
        this.f32312j.setLayoutParams(layoutParams8);
    }
}
