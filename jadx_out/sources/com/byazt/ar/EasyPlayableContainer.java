package com.byazt.ar;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.xci.mp;
import com.byazt.xci.u;
import com.byazt.xci.zy;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 1725})
/* loaded from: classes2.dex */
public class EasyPlayableContainer extends FrameLayout {
    public final eb hp;

    /* renamed from: j, reason: collision with root package name */
    public int f18094j;
    public final mp jx;

    /* renamed from: l, reason: collision with root package name */
    public final u f18095l;

    /* renamed from: w, reason: collision with root package name */
    public zy f18096w;

    public EasyPlayableContainer(@NonNull Context context, eb ebVar, u uVar, mp mpVar, zy zyVar) {
        super(context);
        this.f18094j = 0;
        this.hp = ebVar;
        this.f18095l = uVar;
        this.jx = mpVar;
        this.f18096w = zyVar;
    }

    public boolean hp() {
        return this.f18094j == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        eb ebVar = this.hp;
        if (ebVar != null) {
            ebVar.l();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eb ebVar = this.hp;
        if (ebVar != null) {
            ebVar.jx();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws JSONException {
        if (this.f18095l == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        float fJ = xh.j(getContext(), motionEvent.getX());
        float fJ2 = xh.j(getContext(), motionEvent.getY());
        if (this.f18095l.hp(fJ, fJ2)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            new com.byazt.db.hp(this.jx, this.f18096w).hp(this.jx, fJ, fJ2, 1);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f18095l == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.f18095l.hp(xh.j(getContext(), motionEvent.getX()), xh.j(getContext(), motionEvent.getY()))) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setIfStayTop(int i2) {
        this.f18094j = i2;
    }

    public static void hp(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof EasyPlayableContainer) {
                EasyPlayableContainer easyPlayableContainer = (EasyPlayableContainer) childAt;
                if (easyPlayableContainer.hp()) {
                    easyPlayableContainer.bringToFront();
                    z2 = true;
                }
            }
        }
        if (z2) {
            viewGroup.invalidate();
        }
    }
}
