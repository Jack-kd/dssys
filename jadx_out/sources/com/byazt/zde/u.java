package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u extends j {
    public u(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationX", 0.0f, com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), 20.0f), 0.0f, -com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), 20.0f), 0.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
