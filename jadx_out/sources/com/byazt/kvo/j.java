package com.byazt.kvo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1099, 38})
/* loaded from: classes.dex */
public final class j {

    public interface hp<T> {
        T hp();

        boolean hp(T t2);
    }

    @com.byazt.kj.hp(hp = {0, 1, 1099, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l<T> implements hp<T> {
        public final Object[] hp;

        /* renamed from: l, reason: collision with root package name */
        public int f22221l;

        public l(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.hp = new Object[i2];
        }

        private boolean l(T t2) {
            for (int i2 = 0; i2 < this.f22221l; i2++) {
                if (this.hp[i2] == t2) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.byazt.kvo.j.hp
        public T hp() {
            int i2 = this.f22221l;
            if (i2 <= 0) {
                return null;
            }
            int i3 = i2 - 1;
            Object[] objArr = this.hp;
            T t2 = (T) objArr[i3];
            objArr[i3] = null;
            this.f22221l = i2 - 1;
            return t2;
        }

        @Override // com.byazt.kvo.j.hp
        public boolean hp(T t2) {
            if (!l(t2)) {
                int i2 = this.f22221l;
                Object[] objArr = this.hp;
                if (i2 >= objArr.length) {
                    return false;
                }
                objArr[i2] = t2;
                this.f22221l = i2 + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }
}
