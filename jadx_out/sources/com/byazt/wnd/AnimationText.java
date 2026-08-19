package com.byazt.wnd;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.byazt.pg.r;
import com.byazt.yj.gu;
import com.byazt.ymw.ud;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2041})
/* loaded from: classes3.dex */
public class AnimationText extends TextSwitcher implements ViewSwitcher.ViewFactory, r.hp {

    /* renamed from: a, reason: collision with root package name */
    public TextView f26929a;

    /* renamed from: e, reason: collision with root package name */
    public int f26930e;
    public int eb;
    public int gu;
    public Animation.AnimationListener hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f26931j;
    public int jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public Handler f26932k;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f26933l;

    /* renamed from: q, reason: collision with root package name */
    public float f26934q;

    /* renamed from: s, reason: collision with root package name */
    public int f26935s;

    /* renamed from: w, reason: collision with root package name */
    public Context f26936w;
    public int zy;

    public AnimationText(Context context, int i2, float f2, int i3, int i4) {
        super(context);
        this.f26933l = new ArrayList();
        this.jx = 0;
        this.f26931j = 1;
        this.f26932k = new ud(Looper.getMainLooper(), this);
        this.hp = new Animation.AnimationListener() { // from class: com.byazt.wnd.AnimationText.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AnimationText.this.f26929a != null) {
                    AnimationText.this.f26929a.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.f26936w = context;
        this.f26935s = i2;
        this.f26934q = f2;
        this.f26930e = i3;
        this.zy = i4;
        jx();
    }

    private void jx() {
        setFactory(this);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what != 1) {
            return;
        }
        l();
        this.f26932k.sendEmptyMessageDelayed(1, this.eb);
    }

    public void l() {
        List<String> list = this.f26933l;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i2 = this.jx;
        this.jx = i2 + 1;
        this.gu = i2;
        setText(this.f26933l.get(i2));
        if (this.jx > this.f26933l.size() - 1) {
            this.jx = 0;
        }
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.f26929a = textView;
        textView.setTextColor(this.f26935s);
        this.f26929a.setTextSize(this.f26934q);
        this.f26929a.setMaxLines(this.f26930e);
        this.f26929a.setTextAlignment(this.zy);
        return this.f26929a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f26932k.sendEmptyMessageDelayed(1, this.eb);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f26932k.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(gu.l(this.f26933l.get(this.gu), this.f26934q, false)[0], C.ENCODING_PCM_32BIT), i2);
        } catch (Exception unused) {
            super.onMeasure(i2, i3);
        }
    }

    public void setAnimationDuration(int i2) {
        this.eb = i2;
    }

    public void setAnimationText(List<String> list) {
        this.f26933l = list;
    }

    public void setAnimationType(int i2) {
        this.jl = i2;
    }

    public void setMaxLines(int i2) {
        this.f26930e = i2;
    }

    public void setTextColor(int i2) {
        this.f26935s = i2;
    }

    public void setTextSize(float f2) {
        this.f26934q = f2;
    }

    public void hp() {
        int i2 = this.jl;
        if (i2 == 1) {
            setInAnimation(com.byazt.eh.hp.l());
            setOutAnimation(com.byazt.eh.hp.jx());
        } else if (i2 == 0) {
            setInAnimation(com.byazt.eh.hp.hp());
            setOutAnimation(com.byazt.eh.hp.hp());
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.hp);
            getOutAnimation().setAnimationListener(this.hp);
        }
        this.f26932k.sendEmptyMessage(1);
    }
}
