package com.byazt.nk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.ScrollView;
import com.byazt.kj.hp;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1699})
/* loaded from: classes3.dex */
public class SSWebViewVideoPage extends SSWebView {

    /* renamed from: a, reason: collision with root package name */
    public float f23649a;
    public boolean eb;

    /* renamed from: s, reason: collision with root package name */
    public ViewParent f23650s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f23651w;

    public SSWebViewVideoPage(Context context) {
        super(context);
        this.f23651w = true;
        this.f23649a = -1.0f;
        this.eb = false;
    }

    public void a() {
        if (this.eb) {
            return;
        }
        this.f23650s.requestDisallowInterceptTouchEvent(true);
        this.eb = true;
    }

    public void eb() {
        if (this.eb) {
            return;
        }
        this.f23650s.requestDisallowInterceptTouchEvent(false);
        this.eb = true;
    }

    public void hp(boolean z2) {
        if (((ScrollView) this.f23650s).getScrollY() == 0) {
            if (z2) {
                a();
                return;
            } else {
                eb();
                return;
            }
        }
        if (!this.f23651w) {
            a();
        } else if (z2) {
            eb();
        } else {
            a();
        }
    }

    @Override // android.view.View
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        super.onOverScrolled(i2, i3, z2, z3);
        if (i3 == 0 && z3) {
            this.f23651w = true;
        } else {
            this.f23651w = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f23650s == null) {
            this.f23650s = hp((View) this);
        }
        if (motionEvent.getAction() == 0) {
            this.f23649a = motionEvent.getY();
        } else if (motionEvent.getAction() == 2) {
            float y2 = motionEvent.getY() - this.f23649a;
            if (y2 > 0.0f) {
                hp(true);
            } else if (y2 != 0.0f && y2 < 0.0f) {
                hp(false);
            }
            this.f23649a = motionEvent.getY();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            a();
            this.eb = false;
        }
        return super.onTouchEvent(motionEvent);
    }
}
