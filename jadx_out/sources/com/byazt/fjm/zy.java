package com.byazt.fjm;

import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 302})
/* loaded from: classes2.dex */
public class zy {
    public final l hp;

    /* renamed from: l, reason: collision with root package name */
    public hp f20053l = new hp();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 312})
    public static class hp {
        public int hp = 0;

        /* renamed from: j, reason: collision with root package name */
        public int f20054j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20055l;

        /* renamed from: w, reason: collision with root package name */
        public int f20056w;

        public int hp(int i2, int i3) {
            if (i2 > i3) {
                return 1;
            }
            return i2 == i3 ? 2 : 4;
        }

        public boolean l() {
            int i2 = this.hp;
            if ((i2 & 7) != 0 && (i2 & hp(this.f20054j, this.f20055l)) == 0) {
                return false;
            }
            int i3 = this.hp;
            if ((i3 & 112) != 0 && (i3 & (hp(this.f20054j, this.jx) << 4)) == 0) {
                return false;
            }
            int i4 = this.hp;
            if ((i4 & 1792) != 0 && (i4 & (hp(this.f20056w, this.f20055l) << 8)) == 0) {
                return false;
            }
            int i5 = this.hp;
            return (i5 & 28672) == 0 || (i5 & (hp(this.f20056w, this.jx) << 12)) != 0;
        }

        public void hp(int i2, int i3, int i4, int i5) {
            this.f20055l = i2;
            this.jx = i3;
            this.f20054j = i4;
            this.f20056w = i5;
        }

        public void hp(int i2) {
            this.hp = i2 | this.hp;
        }

        public void hp() {
            this.hp = 0;
        }
    }

    public interface l {
        int hp();

        int hp(View view);

        View hp(int i2);

        int l();

        int l(View view);
    }

    public zy(l lVar) {
        this.hp = lVar;
    }

    public View hp(int i2, int i3, int i4, int i5) {
        int iHp = this.hp.hp();
        int iL = this.hp.l();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View viewHp = this.hp.hp(i2);
            this.f20053l.hp(iHp, iL, this.hp.hp(viewHp), this.hp.l(viewHp));
            if (i4 != 0) {
                this.f20053l.hp();
                this.f20053l.hp(i4);
                if (this.f20053l.l()) {
                    return viewHp;
                }
            }
            if (i5 != 0) {
                this.f20053l.hp();
                this.f20053l.hp(i5);
                if (this.f20053l.l()) {
                    view = viewHp;
                }
            }
            i2 += i6;
        }
        return view;
    }
}
