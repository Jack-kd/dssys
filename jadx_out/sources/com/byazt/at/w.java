package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.n;
import com.byazt.na.q;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends eb {

    /* renamed from: e, reason: collision with root package name */
    public VideoFrame f18259e;
    public LottieAnimationView gu;
    public q.hp.C0316hp jl;

    /* renamed from: q, reason: collision with root package name */
    public float f18260q;

    /* renamed from: s, reason: collision with root package name */
    public float f18261s;

    public w(com.byazt.na.s sVar, s sVar2, Context context, q.hp.C0316hp c0316hp) {
        super(sVar, sVar2);
        this.f18261s = -1.0f;
        this.f18260q = -1.0f;
        this.jl = c0316hp;
        if (((eb) this).eb == null || sVar == null) {
            return;
        }
        LottieAnimationView lottieAnimationViewL = sVar.l();
        this.gu = lottieAnimationViewL;
        if (lottieAnimationViewL == null) {
            return;
        }
        float fHp = com.byazt.ze.e.hp();
        this.f18261s = (int) (((eb) this).eb.hp() * fHp);
        this.f18260q = (int) (((eb) this).eb.l() * fHp);
        n nVarHp = sVar.hp();
        View viewHp = nVarHp != null ? nVarHp.hp("videoview:", null) : null;
        if (viewHp instanceof TextureView) {
            this.f18259e = new VideoFrame(context, (TextureView) viewHp, c0316hp);
        }
        this.gu.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.at.w.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (w.this.gu == view) {
                    w.this.v();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }
        });
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        VideoFrame videoFrame = this.f18259e;
        if (videoFrame != null) {
            ViewParent parent = videoFrame.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f18259e);
            }
            ViewParent parent2 = this.gu.getParent();
            if (parent2 instanceof ViewGroup) {
                this.f18259e.setTranslationX(2.1474836E9f);
                ((ViewGroup) parent2).addView(this.f18259e);
            }
        }
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        if (this.f18261s <= 0.0f || this.f18259e == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(i2);
        float fS = s();
        hp(this.f18259e, (int) this.f18261s, (int) this.f18260q);
        this.f18259e.setAlpha(fS);
        this.f18259e.draw(canvas);
        canvas.restore();
    }
}
