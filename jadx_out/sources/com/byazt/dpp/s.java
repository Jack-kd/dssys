package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1102, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public float f19227a;
    public float eb;
    public final com.byazt.qo.s hp;

    /* renamed from: j, reason: collision with root package name */
    public float f19228j;
    public final int jx = 10;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f19229l;

    /* renamed from: w, reason: collision with root package name */
    public float f19230w;

    public s(com.byazt.qo.s sVar, boolean z2) {
        this.hp = sVar;
        this.f19229l = z2;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.qo.s sVar;
        com.byazt.qo.s sVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f19228j = motionEvent.getX();
            this.f19230w = motionEvent.getY();
            new StringBuilder(", mStartY: ").append(this.f19230w);
        } else if (action == 1) {
            this.f19227a = motionEvent.getX();
            this.eb = motionEvent.getY();
            new StringBuilder(", mEndY: ").append(this.eb);
            if (this.f19229l || (sVar2 = this.hp) == null) {
                float f2 = this.f19227a - this.f19228j;
                float f3 = this.eb - this.f19230w;
                if (com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs((float) Math.sqrt((f2 * f2) + (f3 * f3)))) > 10.0f && (sVar = this.hp) != null) {
                    sVar.hp();
                }
            } else {
                sVar2.hp();
            }
        }
        return true;
    }
}
