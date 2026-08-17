package com.byazt.op;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nke.b;
import com.byazt.sq.s;
import com.byazt.tm.l;
import com.byazt.xci.df;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 1399, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public LinearLayout f24172a;

    /* renamed from: e, reason: collision with root package name */
    public final l f24173e;
    public TextView eb;
    public final TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public ViewGroup f24174j;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public final mp f24175l;

    /* renamed from: q, reason: collision with root package name */
    public ObjectAnimator f24176q;

    /* renamed from: s, reason: collision with root package name */
    public ObjectAnimator f24177s;

    /* renamed from: w, reason: collision with root package name */
    public View f24178w;

    public hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, l lVar) {
        this.hp = tTBaseVideoActivity;
        this.f24175l = mpVar;
        this.f24173e = lVar;
    }

    public void hp(ViewGroup viewGroup, View view) {
        this.f24174j = viewGroup;
        this.f24178w = view;
        this.jx = new ImageView(this.hp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, xh.jx(this.hp, 76.0f));
        layoutParams.gravity = 80;
        this.jx.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f24174j.addView(this.jx, layoutParams);
    }

    public void j() {
        ObjectAnimator objectAnimator = this.f24177s;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f24177s.cancel();
            this.f24177s = null;
        }
        ObjectAnimator objectAnimator2 = this.f24176q;
        if (objectAnimator2 != null && objectAnimator2.isRunning()) {
            this.f24176q.cancel();
            this.f24176q = null;
        }
        LinearLayout linearLayout = this.f24172a;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        View view = this.f24178w;
        if (view != null) {
            view.setTranslationY(0.0f);
        }
        ImageView imageView = this.jx;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.f24173e.s();
    }

    public void jx() {
        j();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f24178w, "alpha", 1.0f, 0.3f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.op.hp.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                hp.this.f24178w.setAlpha(1.0f);
                hp.this.f24173e.q();
            }
        });
        objectAnimatorOfFloat.start();
    }

    public int l() {
        int identifier = this.hp.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return this.hp.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void hp() {
        int iV;
        LinearLayout linearLayout = new LinearLayout(this.hp);
        this.f24172a = linearLayout;
        linearLayout.setGravity(1);
        this.f24172a.setPadding(0, xh.jx(this.hp, 16.0f), 0, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, xh.jx(this.hp, 76.0f));
        TextView textView = new TextView(this.hp);
        this.eb = textView;
        textView.setTextSize(12.0f);
        this.eb.setTextColor(-1);
        this.eb.setSingleLine();
        this.eb.setEllipsize(TextUtils.TruncateAt.START);
        this.eb.setGravity(5);
        this.eb.setMaxWidth(xh.jx(this.hp, 260.0f));
        this.f24172a.addView(this.eb);
        TextView textView2 = new TextView(this.hp);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(-1);
        textView2.setTypeface(Typeface.DEFAULT_BOLD);
        textView2.setGravity(17);
        textView2.setSingleLine();
        textView2.setText("取消");
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.op.hp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp.this.j();
            }
        });
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = xh.jx(this.hp, 10.0f);
        this.f24172a.addView(textView2, layoutParams2);
        hp(25, df.l(this.f24175l));
        int iJx = xh.jx(this.hp, 76.0f);
        this.f24174j.addView(this.f24172a, layoutParams);
        try {
            int iL = s.l(this.hp);
            if (xh.j((Activity) this.hp)) {
                iV = (s.jx(this.hp) - iL) - l();
            } else {
                iV = xh.v(this.hp);
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f24172a, "translationY", iL, (iL - iJx) + iV);
            this.f24177s = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(300L);
            this.f24177s.start();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f24178w, "translationY", 0.0f, -iJx);
            this.f24176q = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(300L);
            this.f24176q.start();
        } catch (Throwable th) {
            u.l("layout", th.getMessage());
        }
    }

    public void hp(final int i2, String str) {
        com.byazt.ws.l.hp(str).type(2).config(Bitmap.Config.ARGB_8888).to(new b<Bitmap>() { // from class: com.byazt.op.hp.2
            @Override // com.byazt.nke.b
            public void onFailed(int i3, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u<Bitmap> uVar) {
                try {
                    Bitmap result = uVar.getResult();
                    if (result == null) {
                        return;
                    }
                    if (result.getConfig() == Bitmap.Config.RGB_565) {
                        result = result.copy(Bitmap.Config.ARGB_8888, true);
                    }
                    Bitmap bitmapHp = com.byazt.sq.l.hp(hp.this.hp, result, i2);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(hp.this.hp.getResources(), bitmapHp);
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.op.hp.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (hp.this.f24172a != null) {
                                hp.this.f24172a.setBackgroundColor(Color.parseColor("#66000000"));
                            }
                            if (hp.this.jx != null) {
                                hp.this.jx.setImageDrawable(bitmapDrawable);
                            }
                        }
                    });
                } catch (Throwable th) {
                    u.l("layout", th.getMessage());
                }
            }
        }, 4);
    }

    public void hp(com.byazt.go.l lVar) {
        e eVar = new e();
        eVar.jx(true);
        if (lVar != null) {
            lVar.hp(eVar);
            lVar.hp(null, eVar);
        }
    }

    public void hp(long j2) {
        TextView textView = this.eb;
        if (textView != null) {
            textView.setText("已为您加载更多详情，" + j2 + "秒后拉起展示");
        }
    }
}
