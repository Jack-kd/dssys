package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class ad extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final int f36746a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f36747b = 2;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f36748c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f36749d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f36750e;

    /* renamed from: f, reason: collision with root package name */
    private AnimatorSet f36751f;

    /* renamed from: g, reason: collision with root package name */
    private ObjectAnimator f36752g;

    /* renamed from: h, reason: collision with root package name */
    private ObjectAnimator f36753h;

    /* renamed from: i, reason: collision with root package name */
    private View f36754i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f36755j;

    /* renamed from: com.sigmob.sdk.base.views.ad$1, reason: invalid class name */
    public class AnonymousClass1 implements Animator.AnimatorListener {
        public AnonymousClass1() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.D
                @Override // java.lang.Runnable
                public final void run() {
                    this.f36670b.a();
                }
            }, 300L);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (ad.this.f36755j) {
                return;
            }
            ad.this.f36752g.start();
        }
    }

    public ad(Context context) {
        super(context);
        a(context);
    }

    private int b(Context context) {
        return ResourceUtil.getLayoutId(context, "sig_shake_view_layout");
    }

    private void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f36754i, "translationY", 0.0f, 30.0f, 0.0f, -30.0f, 0.0f);
        this.f36753h = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f36753h.setRepeatCount(2);
        this.f36753h.setDuration(400L);
    }

    public void a() {
        this.f36753h.start();
    }

    public ad(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public void a(int i2) {
        ObjectAnimator objectAnimator;
        if (i2 != 1) {
            this.f36755j = true;
            this.f36752g.cancel();
            objectAnimator = this.f36753h;
        } else {
            objectAnimator = this.f36752g;
        }
        objectAnimator.start();
    }

    public ad(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }

    private void a(Context context) {
        View.inflate(context, b(context), this);
        this.f36748c = (ImageView) findViewById(ResourceUtil.getId(context, "sig_shakeImageView"));
        this.f36749d = (TextView) findViewById(ResourceUtil.getId(context, "sig_shakeTitleView"));
        this.f36750e = (TextView) findViewById(ResourceUtil.getId(context, "sig_shakeDescView"));
        this.f36754i = findViewById(ResourceUtil.getId(context, "sig_shake_view"));
        c();
        b();
    }

    private void b() {
        int i2 = this.f36748c.getLayoutParams().height;
        this.f36748c.setPivotX(this.f36748c.getLayoutParams().width);
        this.f36748c.setPivotY(i2 * 0.8f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f36748c, C1244a.f35650B, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
        this.f36752g = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f36752g.addListener(new AnonymousClass1());
        this.f36752g.setDuration(1500L);
    }
}
