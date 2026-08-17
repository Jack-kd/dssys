package com.byazt.fjm;

import android.view.View;
import android.view.ViewGroup;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 34})
/* loaded from: classes2.dex */
public class l {
    public final InterfaceC0228l hp;

    /* renamed from: l, reason: collision with root package name */
    public final hp f20029l = new hp();
    public final List<View> jx = new ArrayList();

    /* renamed from: com.byazt.fjm.l$l, reason: collision with other inner class name */
    public interface InterfaceC0228l {
        int hp();

        int hp(View view);

        void hp(int i2);

        void hp(View view, int i2);

        void hp(View view, int i2, ViewGroup.LayoutParams layoutParams);

        void j(View view);

        void jx(int i2);

        void jx(View view);

        View l(int i2);

        RecyclerView.cx l(View view);

        void l();
    }

    public l(InterfaceC0228l interfaceC0228l) {
        this.hp = interfaceC0228l;
    }

    private int a(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int iHp = this.hp.hp();
        int i3 = i2;
        while (i3 < iHp) {
            int iW = i2 - (i3 - this.f20029l.w(i3));
            if (iW == 0) {
                while (this.f20029l.jx(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += iW;
        }
        return -1;
    }

    private void eb(View view) {
        this.jx.add(view);
        this.hp.jx(view);
    }

    private boolean s(View view) {
        if (!this.jx.remove(view)) {
            return false;
        }
        this.hp.j(view);
        return true;
    }

    public void hp(View view, boolean z2) {
        hp(view, -1, z2);
    }

    public View j(int i2) {
        return this.hp.l(i2);
    }

    public View jx(int i2) {
        int size = this.jx.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.jx.get(i3);
            RecyclerView.cx cxVarL = this.hp.l(view);
            if (cxVarL.j() == i2 && !cxVarL.k() && !cxVarL.xs()) {
                return view;
            }
        }
        return null;
    }

    public View l(int i2) {
        return this.hp.l(a(i2));
    }

    public String toString() {
        return this.f20029l.toString() + ", hidden list:" + this.jx.size();
    }

    public void w(int i2) {
        int iA = a(i2);
        this.f20029l.j(iA);
        this.hp.jx(iA);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 123})
    public static class hp {
        public long hp = 0;

        /* renamed from: l, reason: collision with root package name */
        public hp f20030l;

        private void l() {
            if (this.f20030l == null) {
                this.f20030l = new hp();
            }
        }

        public void hp(int i2) {
            if (i2 < 64) {
                this.hp |= 1 << i2;
            } else {
                l();
                this.f20030l.hp(i2 - 64);
            }
        }

        public void insert(int i2, boolean z2) {
            if (i2 >= 64) {
                l();
                this.f20030l.insert(i2 - 64, z2);
                return;
            }
            long j2 = this.hp;
            boolean z3 = (Long.MIN_VALUE & j2) != 0;
            long j3 = (1 << i2) - 1;
            this.hp = ((j2 & (~j3)) << 1) | (j2 & j3);
            if (z2) {
                hp(i2);
            } else {
                l(i2);
            }
            if (z3 || this.f20030l != null) {
                l();
                this.f20030l.insert(0, z3);
            }
        }

        public boolean j(int i2) {
            if (i2 >= 64) {
                l();
                return this.f20030l.j(i2 - 64);
            }
            long j2 = 1 << i2;
            long j3 = this.hp;
            boolean z2 = (j3 & j2) != 0;
            long j4 = j3 & (~j2);
            this.hp = j4;
            long j5 = j2 - 1;
            this.hp = (j4 & j5) | Long.rotateRight((~j5) & j4, 1);
            hp hpVar = this.f20030l;
            if (hpVar != null) {
                if (hpVar.jx(0)) {
                    hp(63);
                }
                this.f20030l.j(0);
            }
            return z2;
        }

        public boolean jx(int i2) {
            if (i2 < 64) {
                return (this.hp & (1 << i2)) != 0;
            }
            l();
            return this.f20030l.jx(i2 - 64);
        }

        public String toString() {
            if (this.f20030l == null) {
                return Long.toBinaryString(this.hp);
            }
            return this.f20030l.toString() + "xx" + Long.toBinaryString(this.hp);
        }

        public int w(int i2) {
            hp hpVar = this.f20030l;
            return hpVar == null ? i2 >= 64 ? Long.bitCount(this.hp) : Long.bitCount(this.hp & ((1 << i2) - 1)) : i2 < 64 ? Long.bitCount(this.hp & ((1 << i2) - 1)) : hpVar.w(i2 - 64) + Long.bitCount(this.hp);
        }

        public void l(int i2) {
            if (i2 >= 64) {
                hp hpVar = this.f20030l;
                if (hpVar != null) {
                    hpVar.l(i2 - 64);
                    return;
                }
                return;
            }
            this.hp &= ~(1 << i2);
        }

        public void hp() {
            this.hp = 0L;
            hp hpVar = this.f20030l;
            if (hpVar != null) {
                hpVar.hp();
            }
        }
    }

    public void hp(View view, int i2, boolean z2) {
        int iHp = i2 < 0 ? this.hp.hp() : a(i2);
        this.f20029l.insert(iHp, z2);
        if (z2) {
            eb(view);
        }
        this.hp.hp(view, iHp);
    }

    public void j(View view) {
        int iHp = this.hp.hp(view);
        if (iHp < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
        this.f20029l.hp(iHp);
        eb(view);
    }

    public int l() {
        return this.hp.hp() - this.jx.size();
    }

    public boolean a(View view) {
        int iHp = this.hp.hp(view);
        if (iHp == -1) {
            s(view);
            return true;
        }
        if (!this.f20029l.jx(iHp)) {
            return false;
        }
        this.f20029l.j(iHp);
        s(view);
        this.hp.hp(iHp);
        return true;
    }

    public int l(View view) {
        int iHp = this.hp.hp(view);
        if (iHp == -1 || this.f20029l.jx(iHp)) {
            return -1;
        }
        return iHp - this.f20029l.w(iHp);
    }

    public void w(View view) {
        int iHp = this.hp.hp(view);
        if (iHp >= 0) {
            if (this.f20029l.jx(iHp)) {
                this.f20029l.l(iHp);
                s(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
        }
        throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
    }

    public int jx() {
        return this.hp.hp();
    }

    public boolean jx(View view) {
        return this.jx.contains(view);
    }

    public void hp(View view) {
        int iHp = this.hp.hp(view);
        if (iHp >= 0) {
            if (this.f20029l.j(iHp)) {
                s(view);
            }
            this.hp.hp(iHp);
        }
    }

    public void hp(int i2) {
        int iA = a(i2);
        View viewL = this.hp.l(iA);
        if (viewL != null) {
            if (this.f20029l.j(iA)) {
                s(viewL);
            }
            this.hp.hp(iA);
        }
    }

    public void hp() {
        this.f20029l.hp();
        for (int size = this.jx.size() - 1; size >= 0; size--) {
            this.hp.j(this.jx.get(size));
            this.jx.remove(size);
        }
        this.hp.l();
    }

    public void hp(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z2) {
        int iA;
        if (i2 < 0) {
            iA = this.hp.hp();
        } else {
            iA = a(i2);
        }
        this.f20029l.insert(iA, z2);
        if (z2) {
            eb(view);
        }
        this.hp.hp(view, iA, layoutParams);
    }
}
