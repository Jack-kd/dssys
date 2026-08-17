package com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.smartdigimkt.y1.l;
import com.smartdigimkt.z1.a;
import com.smartdigimkt.z1.b;
import java.util.List;

/* loaded from: classes5.dex */
public class RedPacketAnimatorView extends FrameLayout implements l, Handler.Callback {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f43733h = 0;

    /* renamed from: a, reason: collision with root package name */
    public final RedPacketView f43734a;

    /* renamed from: b, reason: collision with root package name */
    public ObjectAnimator f43735b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap f43736c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43737d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f43738e;

    /* renamed from: f, reason: collision with root package name */
    public int f43739f;

    /* renamed from: g, reason: collision with root package name */
    public final Handler f43740g;

    public RedPacketAnimatorView(Context context) {
        this(context, null);
    }

    private ViewGroup.LayoutParams getRedPacketViewLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    public final void a() {
        RedPacketView redPacketView = this.f43734a;
        if (redPacketView == null) {
            return;
        }
        redPacketView.setTranslationY(-this.f43739f);
        if (this.f43735b == null) {
            this.f43734a.setVisibility(0);
            this.f43734a.initRedPacketList(this.f43736c);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43734a, "translationY", -r3, this.f43739f);
            this.f43735b = objectAnimatorOfFloat;
            objectAnimatorOfFloat.addListener(new a(this));
            this.f43735b.setRepeatCount(0);
            this.f43735b.setDuration(4000L);
            this.f43735b.setInterpolator(new LinearInterpolator());
        }
        ObjectAnimator objectAnimator = this.f43735b;
        if (objectAnimator != null && !objectAnimator.isStarted()) {
            this.f43735b.start();
        }
        this.f43737d = true;
        this.f43738e = false;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 100) {
            return false;
        }
        a();
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f43739f = getMeasuredHeight();
    }

    @Override // com.smartdigimkt.y1.l
    public void pause() {
        Handler handler = this.f43740g;
        if (handler != null) {
            handler.removeMessages(100);
        }
        ObjectAnimator objectAnimator = this.f43735b;
        if (objectAnimator != null) {
            objectAnimator.pause();
        }
    }

    public void release() {
        if (this.f43738e) {
            return;
        }
        stop();
        RedPacketView redPacketView = this.f43734a;
        if (redPacketView != null) {
            redPacketView.release();
        }
        this.f43738e = true;
    }

    public void resume() {
        ObjectAnimator objectAnimator = this.f43735b;
        if (objectAnimator != null) {
            if (objectAnimator.isPaused()) {
                this.f43735b.resume();
            } else {
                a();
            }
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f43736c = list.get(0);
    }

    @Override // com.smartdigimkt.y1.l
    public void start() {
        if (this.f43737d) {
            resume();
            return;
        }
        Handler handler = this.f43740g;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(100, 500L);
        }
    }

    public void startWithBitmapNow(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f43736c = bitmap;
        Handler handler = this.f43740g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        post(new b(this));
    }

    @Override // com.smartdigimkt.y1.l
    public void stop() {
        RedPacketView redPacketView = this.f43734a;
        if (redPacketView != null) {
            redPacketView.setTranslationY(-this.f43739f);
        }
        ObjectAnimator objectAnimator = this.f43735b;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.f43735b.cancel();
            this.f43735b = null;
        }
        Handler handler = this.f43740g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f43737d = false;
    }

    public RedPacketAnimatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketAnimatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43737d = false;
        this.f43738e = false;
        this.f43740g = new Handler(Looper.getMainLooper(), this);
        setClipChildren(false);
        RedPacketView redPacketView = new RedPacketView(getContext());
        this.f43734a = redPacketView;
        addView(redPacketView, getRedPacketViewLayoutParams());
        redPacketView.setVisibility(4);
    }
}
