package com.byazt.jy;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 235, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LLASH_FAST_OPEN})
/* loaded from: classes.dex */
public class PlayableEndcardFrameLayout extends FrameLayout {
    public hp hp;

    /* renamed from: l, reason: collision with root package name */
    public int f21764l;

    public interface hp {
        void hp();
    }

    public PlayableEndcardFrameLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int y2 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f21764l = y2;
        } else if (action == 2 && Math.abs(this.f21764l - y2) > 100) {
            hp();
            this.f21764l = y2;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void hp(hp hpVar) {
        this.hp = hpVar;
    }

    private void hp() {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp();
        }
    }
}
