package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.u0;
import com.smartdigimkt.h2.v0;
import com.smartdigimkt.h2.w0;
import com.smartdigimkt.h2.x0;
import com.smartdigimkt.h2.y0;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify.TextSeekbar;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class PuzzleV2G2CV2View extends BaseLifecycleG2CV2View {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f43917t = 0;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43918i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43919j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43920k;

    /* renamed from: l, reason: collision with root package name */
    public int f43921l;

    /* renamed from: m, reason: collision with root package name */
    public TranslateAnimation f43922m;

    /* renamed from: n, reason: collision with root package name */
    public TextSeekbar f43923n;

    /* renamed from: o, reason: collision with root package name */
    public int f43924o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f43925p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f43926q;

    /* renamed from: r, reason: collision with root package name */
    public ValueAnimator f43927r;

    /* renamed from: s, reason: collision with root package name */
    public int f43928s;

    public PuzzleV2G2CV2View(Context context) {
        super(context);
        this.f43928s = -1;
    }

    public static void a(PuzzleV2G2CV2View puzzleV2G2CV2View, int i2) {
        TextSeekbar textSeekbar = puzzleV2G2CV2View.f43923n;
        if (textSeekbar != null) {
            textSeekbar.setClickable(false);
            puzzleV2G2CV2View.f43923n.setEnabled(false);
            if (puzzleV2G2CV2View.f43927r == null) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, 100);
                puzzleV2G2CV2View.f43927r = valueAnimatorOfInt;
                valueAnimatorOfInt.addUpdateListener(new y0(puzzleV2G2CV2View));
                puzzleV2G2CV2View.f43927r.setDuration(300L);
                puzzleV2G2CV2View.f43927r.start();
            }
        }
    }

    public static void b(PuzzleV2G2CV2View puzzleV2G2CV2View, int i2) {
        ImageView imageView = puzzleV2G2CV2View.f43919j;
        if (imageView != null) {
            imageView.setTranslationX((i2 * puzzleV2G2CV2View.f43924o) / 100);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public boolean canStartNextAnim() {
        ValueAnimator valueAnimator = this.f43927r;
        return valueAnimator == null || !valueAnimator.isRunning();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View
    public int getClickArea() {
        return 45;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_puzzle_v2", "layout"), this);
        setBackgroundColor(Color.parseColor("#80000000"));
        this.f43918i = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_close_iv", "id"));
        this.f43919j = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_lucky_bag_iv", "id"));
        this.f43920k = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_g2c_finger", "id"));
        if (this.f43919j != null) {
            String strB = d.a().b(b.d.f2198l);
            if (!TextUtils.isEmpty(strB)) {
                a0.a().a(new o(3, strB), -1, -1, new u0(this));
            }
        }
        if (this.f43920k != null) {
            String strB2 = d.a().b(b.d.f2197k);
            if (!TextUtils.isEmpty(strB2)) {
                a0.a().a(new o(3, strB2), -1, -1, new v0(this));
            }
        }
        this.f43921l = k.a(getContext(), 20.0f);
        this.f43924o = k.a(getContext(), 176.0f);
        TextSeekbar textSeekbar = (TextSeekbar) findViewById(k.a(getContext(), "myoffer_g2c_picvertify_seekbar", "id"));
        this.f43923n = textSeekbar;
        if (textSeekbar != null) {
            textSeekbar.hideAll();
            this.f43923n.setProgressDrawable(null);
            this.f43923n.setThumb(null);
            this.f43923n.setThumbOffset(0);
            this.f43923n.setOnSeekBarChangeListener(new w0(this));
        }
        ImageView imageView = this.f43918i;
        if (imageView != null) {
            imageView.setOnClickListener(new x0(this));
        }
        if (this.f43922m != null || this.f43920k == null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, this.f43921l, 0.0f, 0.0f);
        this.f43922m = translateAnimation;
        translateAnimation.setDuration(1000L);
        this.f43922m.setRepeatCount(-1);
        this.f43920k.startAnimation(this.f43922m);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void pauseAnim() {
        super.pauseAnim();
        TranslateAnimation translateAnimation = this.f43922m;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        TranslateAnimation translateAnimation = this.f43922m;
        if (translateAnimation != null) {
            translateAnimation.cancel();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View, com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void resumeAnim() {
        super.resumeAnim();
        TranslateAnimation translateAnimation = this.f43922m;
        if (translateAnimation != null) {
            translateAnimation.start();
        }
    }

    public PuzzleV2G2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43928s = -1;
    }

    public PuzzleV2G2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43928s = -1;
    }
}
