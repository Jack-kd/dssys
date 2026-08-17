package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.e;
import com.smartdigimkt.h2.f;
import com.smartdigimkt.h2.g;
import com.smartdigimkt.h2.h;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class ChopOnceG2CV2View extends BaseLifecycleG2CV2View {

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43844i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43845j;

    /* renamed from: k, reason: collision with root package name */
    public RotateAnimation f43846k;

    /* renamed from: l, reason: collision with root package name */
    public TranslateAnimation f43847l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f43848m;

    public ChopOnceG2CV2View(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View
    public int getClickArea() {
        return 44;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_chop_once", "layout"), this);
        setBackgroundColor(Color.parseColor("#80000000"));
        this.f43844i = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_gift_group", "id"));
        this.f43845j = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_gift_chop", "id"));
        this.f43848m = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_close_iv", "id"));
        String strB = d.a().b(b.d.f2192f);
        if (!TextUtils.isEmpty(strB)) {
            a0.a().a(new o(3, strB), -1, -1, new com.smartdigimkt.h2.d(this));
        }
        ImageView imageView = this.f43844i;
        if (imageView != null) {
            imageView.setOnClickListener(new e(this));
        }
        ImageView imageView2 = this.f43845j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f(this));
        }
        setOnClickListener(new g());
        ImageView imageView3 = this.f43848m;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new h(this));
        }
        setClipChildren(false);
        if (this.f43846k == null && this.f43844i != null) {
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
            this.f43846k = rotateAnimation;
            rotateAnimation.setDuration(2000L);
            this.f43846k.setInterpolator(new LinearInterpolator());
            this.f43846k.setRepeatCount(-1);
            this.f43844i.startAnimation(this.f43846k);
        }
        if (this.f43847l != null || this.f43845j == null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, k.a(getContext(), 10.0f));
        this.f43847l = translateAnimation;
        translateAnimation.setDuration(500L);
        this.f43847l.setRepeatCount(-1);
        this.f43847l.setRepeatMode(2);
        this.f43845j.startAnimation(this.f43847l);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        super.pauseAnim();
        RotateAnimation rotateAnimation = this.f43846k;
        if (rotateAnimation != null) {
            rotateAnimation.cancel();
        }
        TranslateAnimation translateAnimation = this.f43847l;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        RotateAnimation rotateAnimation = this.f43846k;
        if (rotateAnimation != null) {
            rotateAnimation.cancel();
            this.f43846k = null;
        }
        TranslateAnimation translateAnimation = this.f43847l;
        if (translateAnimation != null) {
            translateAnimation.cancel();
            this.f43847l = null;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        super.resumeAnim();
        RotateAnimation rotateAnimation = this.f43846k;
        if (rotateAnimation != null) {
            rotateAnimation.start();
        }
        TranslateAnimation translateAnimation = this.f43847l;
        if (translateAnimation != null) {
            translateAnimation.start();
        }
    }

    public ChopOnceG2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChopOnceG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
