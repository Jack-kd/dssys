package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 54})
/* loaded from: classes3.dex */
public class a<V> extends FutureTask<V> implements Comparable<a<V>> {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public int f26235l;

    public a(Callable<V> callable, int i2, int i3) {
        super(callable);
        this.hp = i2 == -1 ? 5 : i2;
        this.f26235l = i3;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        if (hp() < aVar.hp()) {
            return 1;
        }
        return hp() > aVar.hp() ? -1 : 0;
    }

    public int hp() {
        return this.hp;
    }
}
