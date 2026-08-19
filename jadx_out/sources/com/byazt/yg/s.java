package com.byazt.yg;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1463, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s<T> {
    public T hp;

    /* renamed from: l, reason: collision with root package name */
    public T f27928l;

    private static boolean l(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return l(pair.first, this.hp) && l(pair.second, this.f27928l);
    }

    public int hashCode() {
        T t2 = this.hp;
        int iHashCode = t2 == null ? 0 : t2.hashCode();
        T t3 = this.f27928l;
        return iHashCode ^ (t3 != null ? t3.hashCode() : 0);
    }

    public void hp(T t2, T t3) {
        this.hp = t2;
        this.f27928l = t3;
    }

    public String toString() {
        return "Pair{" + this.hp + " " + this.f27928l + "}";
    }
}
