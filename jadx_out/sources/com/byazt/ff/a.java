package com.byazt.ff;

import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 54})
/* loaded from: classes2.dex */
public class a implements j {
    public List<j> hp = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public jx f19718l;

    public a() {
        jx jxVar = new jx(sz.l().pg());
        this.f19718l = jxVar;
        this.hp.add(new w(jxVar));
        this.hp.add(new eb(this.f19718l));
    }

    @Override // com.byazt.ff.j
    public boolean hp(com.byazt.hy.hp hpVar) {
        Iterator<j> it = this.hp.iterator();
        while (it.hasNext()) {
            if (it.next().hp(hpVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.ff.j
    public boolean l(com.byazt.hy.hp hpVar) {
        Iterator<j> it = this.hp.iterator();
        while (it.hasNext()) {
            if (it.next().l(hpVar)) {
                return true;
            }
        }
        return false;
    }
}
