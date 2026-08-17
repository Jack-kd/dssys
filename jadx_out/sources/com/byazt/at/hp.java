package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.sz;
import com.byazt.ze.jx;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 28})
/* loaded from: classes2.dex */
public class hp extends eb {

    /* renamed from: e, reason: collision with root package name */
    public ImageView f18194e;
    public Drawable gu;
    public LottieAnimationView jl;

    /* renamed from: k, reason: collision with root package name */
    public final Runnable f18195k;

    /* renamed from: q, reason: collision with root package name */
    public float f18196q;

    /* renamed from: s, reason: collision with root package name */
    public float f18197s;
    public final Handler zy;

    public hp(com.byazt.na.s sVar, s sVar2, Context context) {
        super(sVar, sVar2);
        this.f18197s = -1.0f;
        this.f18196q = -1.0f;
        this.zy = new Handler(Looper.getMainLooper());
        this.f18195k = new Runnable() { // from class: com.byazt.at.hp.5
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.jl != null && hp.this.jl.w()) {
                    hp.this.jl.invalidate();
                }
                hp.this.zy.postDelayed(hp.this.f18195k, 40L);
            }
        };
        if (((eb) this).eb == null || sVar == null) {
            return;
        }
        LottieAnimationView lottieAnimationViewL = sVar.l();
        this.jl = lottieAnimationViewL;
        if (lottieAnimationViewL == null) {
            return;
        }
        float fHp = com.byazt.ze.e.hp();
        this.f18197s = (int) (((eb) this).eb.hp() * fHp);
        this.f18196q = (int) (((eb) this).eb.l() * fHp);
        sz szVarDi = sVar.di();
        String strHp = szVarDi != null ? szVarDi.hp(((eb) this).eb.zy()) : null;
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        ImageView imageView = new ImageView(context);
        this.f18194e = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f18194e.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.at.hp.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (hp.this.f18194e == view) {
                    hp.this.xs();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (hp.this.f18194e == view) {
                    hp.this.v();
                    if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(hp.this.gu)) {
                        return;
                    }
                    AbstractC1797b.a(hp.this.gu).stop();
                }
            }
        });
        this.jl.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.at.hp.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (hp.this.jl == view) {
                    if (hp.this.l()) {
                        hp.this.jl.removeOnAttachStateChangeListener(this);
                    } else {
                        hp.this.hp(new Runnable() { // from class: com.byazt.at.hp.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                hp.this.vv();
                            }
                        });
                    }
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (hp.this.jl == view) {
                    hp.this.hp(new Runnable() { // from class: com.byazt.at.hp.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewParent parent = hp.this.f18194e.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(hp.this.f18194e);
                            }
                        }
                    });
                }
            }
        });
        hp(strHp, context);
    }

    private void u() {
        v();
        if (this.jl != null) {
            this.zy.postDelayed(this.f18195k, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.zy.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vv() {
        if (this.gu != null) {
            ViewParent parent = this.f18194e.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f18194e);
            }
            ViewParent parent2 = this.jl.getParent();
            if (parent2 instanceof ViewGroup) {
                this.f18194e.setTranslationX(2.1474836E9f);
                this.f18194e.setImageDrawable(this.gu);
                ((ViewGroup) parent2).addView(this.f18194e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        if (Build.VERSION.SDK_INT < 28 || !AbstractC1796a.a(this.gu) || AbstractC1797b.a(this.gu).isRunning()) {
            return;
        }
        AbstractC1797b.a(this.gu).setRepeatCount(-1);
        AbstractC1797b.a(this.gu).start();
        u();
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        if (this.f18197s <= 0.0f || this.f18194e == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(i2);
        float fS = s();
        hp(this.f18194e, (int) this.f18197s, (int) this.f18196q);
        this.f18194e.setAlpha(fS);
        canvas.clipRect(0.0f, 0.0f, this.f18197s, this.f18196q);
        this.f18194e.draw(canvas);
        canvas.restore();
    }

    private void hp(String str, Context context) {
        File file = new File(com.byazt.ze.jx.hp(context), com.byazt.ymw.a.l(str));
        if (file.exists()) {
            hp(file);
        } else {
            com.byazt.ze.jx.hp(str, context, new jx.hp<File>() { // from class: com.byazt.at.hp.3
                @Override // com.byazt.ze.jx.hp
                public void hp(File file2) {
                    hp.this.hp(file2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(File file) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                if (AbstractC1796a.a(this.gu)) {
                    AbstractC1797b.a(this.gu).stop();
                }
                this.gu = ImageDecoder.decodeDrawable(ImageDecoder.createSource(file));
                this.zy.post(new Runnable() { // from class: com.byazt.at.hp.4
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.vv();
                    }
                });
            } catch (IOException unused) {
            }
        }
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
