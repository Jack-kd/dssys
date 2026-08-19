package com.meishu.sdk.meishu_ad;

import android.os.Handler;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class p extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f32431a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f32432b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32433c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f32434d;

    public p(v vVar, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout) {
        this.f32434d = vVar;
        this.f32431a = imageView;
        this.f32432b = imageView2;
        this.f32433c = relativeLayout;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        v vVar = this.f32434d;
        int i2 = vVar.f32571c + 1;
        vVar.f32571c = i2;
        if (i2 % 2 == 0) {
            this.f32431a.setVisibility(8);
            this.f32432b.setVisibility(0);
            this.f32433c.setVisibility(0);
            v vVar2 = this.f32434d;
            ImageView imageView = this.f32432b;
            vVar2.getClass();
            if (imageView != null) {
                imageView.post(new r(vVar2, imageView, 1));
            }
        } else {
            this.f32432b.setVisibility(8);
            this.f32433c.setVisibility(8);
            this.f32431a.setVisibility(0);
            v vVar3 = this.f32434d;
            ImageView imageView2 = this.f32431a;
            vVar3.getClass();
            if (imageView2 != null) {
                imageView2.post(new s(vVar3, imageView2, 1));
            }
        }
        Handler handler = v.f32566C;
        this.f32434d.getClass();
        handler.postDelayed(this, 800L);
    }
}
