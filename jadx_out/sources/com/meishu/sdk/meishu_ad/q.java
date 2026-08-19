package com.meishu.sdk.meishu_ad;

import android.os.Handler;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class q extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f32435a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32436b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32437c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ImageView f32438d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v f32439e;

    public q(v vVar, ImageView imageView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, ImageView imageView2) {
        this.f32439e = vVar;
        this.f32435a = imageView;
        this.f32436b = relativeLayout;
        this.f32437c = relativeLayout2;
        this.f32438d = imageView2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        v vVar = this.f32439e;
        int i2 = vVar.f32571c + 1;
        vVar.f32571c = i2;
        if (i2 % 2 == 0) {
            this.f32435a.setVisibility(8);
            this.f32436b.setVisibility(8);
            this.f32437c.setVisibility(0);
            this.f32438d.setVisibility(0);
            v vVar2 = this.f32439e;
            ImageView imageView = this.f32438d;
            vVar2.getClass();
            if (imageView != null) {
                imageView.post(new r(vVar2, imageView, 1));
            }
        } else {
            this.f32437c.setVisibility(8);
            this.f32438d.setVisibility(8);
            v vVar3 = this.f32439e;
            RelativeLayout relativeLayout = this.f32436b;
            ImageView imageView2 = this.f32435a;
            vVar3.getClass();
            if (imageView2 != null) {
                imageView2.post(new t(vVar3, relativeLayout, imageView2, 1));
            }
        }
        Handler handler = v.f32566C;
        this.f32439e.getClass();
        handler.postDelayed(this, 800L);
    }
}
