package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends j {
    public s(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> hp() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "rippleValue", 0.0f, 1.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ((ViewGroup) this.jx.getParent()).setClipChildren(false);
        ((ViewGroup) this.jx.getParent().getParent()).setClipChildren(false);
        ((ViewGroup) this.jx.getParent().getParent().getParent()).setClipChildren(false);
        this.jx.setTag(2097610712, this.f28382l.s());
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
