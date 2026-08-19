package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.o0;
import com.smartdigimkt.h2.q0;
import com.smartdigimkt.h2.r0;
import com.smartdigimkt.h2.s0;
import com.smartdigimkt.h2.t0;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify.PictureVerifyView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify.TextSeekbar;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;

/* loaded from: classes5.dex */
public class PicVerifyG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public PictureVerifyView f43909h;

    /* renamed from: i, reason: collision with root package name */
    public TextSeekbar f43910i;

    /* renamed from: j, reason: collision with root package name */
    public String f43911j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f43912k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f43913l;

    /* renamed from: m, reason: collision with root package name */
    public ValueAnimator f43914m;

    /* renamed from: n, reason: collision with root package name */
    public ValueAnimator f43915n;

    /* renamed from: o, reason: collision with root package name */
    public int f43916o;

    public PicVerifyG2CV2View(Context context) {
        super(context);
        this.f43916o = -1;
    }

    public static void a(PicVerifyG2CV2View picVerifyG2CV2View) {
        if (picVerifyG2CV2View.f43914m == null) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 15);
            picVerifyG2CV2View.f43914m = valueAnimatorOfInt;
            valueAnimatorOfInt.addUpdateListener(new s0(picVerifyG2CV2View));
            picVerifyG2CV2View.f43914m.setRepeatMode(2);
            picVerifyG2CV2View.f43914m.setRepeatCount(-1);
            picVerifyG2CV2View.f43914m.setDuration(500L);
        }
        if (picVerifyG2CV2View.f43914m.isStarted() || picVerifyG2CV2View.f43915n != null) {
            return;
        }
        picVerifyG2CV2View.f43914m.start();
    }

    public static void b(PicVerifyG2CV2View picVerifyG2CV2View) {
        ValueAnimator valueAnimator = picVerifyG2CV2View.f43914m;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public boolean canStartNextAnim() {
        return this.f43915n == null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_pic_vertify", "layout"), this);
        this.f43909h = (PictureVerifyView) findViewById(k.a(getContext(), "myoffer_g2c_picvertify", "id"));
        this.f43910i = (TextSeekbar) findViewById(k.a(getContext(), "myoffer_g2c_picvertify_seekbar", "id"));
        int iA = k.a(getContext(), 48.0f);
        this.f43909h.setBlockSize(iA);
        this.f43909h.callback(new o0(this));
        if (!TextUtils.isEmpty(this.f43911j)) {
            m.a(getContext()).a(new o(1, this.f43911j), -1, -1, new q0(this, iA));
        }
        this.f43910i.setProgressDrawable(getResources().getDrawable(k.a(getContext(), "myoffer_g2c_seek_bar_bg", "drawable")));
        TextSeekbar textSeekbar = this.f43910i;
        Context context = getContext();
        int iA2 = k.a(getContext(), "myoffer_seek_bar_icon", "drawable");
        textSeekbar.setThumb(new BitmapDrawable(getResources(), Bitmap.createScaledBitmap(BitmapFactory.decodeResource(context.getResources(), iA2), k.a(getContext(), 60.0f), k.a(getContext(), 24.0f), false)));
        this.f43910i.setThumbOffset(0);
        this.f43910i.setOnSeekBarChangeListener(new r0(this));
    }

    public void loadImage(String str) {
        this.f43911j = str;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        ValueAnimator valueAnimator = this.f43914m;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f43915n;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    public static void a(PicVerifyG2CV2View picVerifyG2CV2View, int i2) {
        picVerifyG2CV2View.f43910i.setClickable(false);
        picVerifyG2CV2View.f43910i.setEnabled(false);
        picVerifyG2CV2View.f43910i.getProgressDrawable().setAlpha(255);
        if (picVerifyG2CV2View.f43915n == null) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, 100);
            picVerifyG2CV2View.f43915n = valueAnimatorOfInt;
            valueAnimatorOfInt.addUpdateListener(new t0(picVerifyG2CV2View));
            picVerifyG2CV2View.f43915n.setDuration(300L);
            picVerifyG2CV2View.f43915n.start();
        }
    }
}
