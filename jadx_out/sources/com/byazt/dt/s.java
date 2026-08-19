package com.byazt.dt;

import android.graphics.Path;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public final List<hp<com.byazt.mo.k, Path>> hp;
    public final List<com.byazt.mo.s> jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<hp<Integer, Integer>> f19284l;

    public s(List<com.byazt.mo.s> list) {
        this.jx = list;
        this.hp = new ArrayList(list.size());
        this.f19284l = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.hp.add(list.get(i2).l().hp());
            this.f19284l.add(list.get(i2).jx().hp());
        }
    }

    public List<com.byazt.mo.s> hp() {
        return this.jx;
    }

    public List<hp<Integer, Integer>> jx() {
        return this.f19284l;
    }

    public List<hp<com.byazt.mo.k, Path>> l() {
        return this.hp;
    }
}
