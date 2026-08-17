package com.byazt.fjm;

import com.byazt.fjm.RecyclerView;
import com.byazt.fjm.eb;
import com.byazt.kvo.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 28})
/* loaded from: classes2.dex */
public class hp implements eb.hp {

    /* renamed from: a, reason: collision with root package name */
    public final eb f19979a;
    public j.hp<l> eb;
    public final ArrayList<l> hp;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f19980j;
    public final InterfaceC0227hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList<l> f19981l;

    /* renamed from: s, reason: collision with root package name */
    public int f19982s;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f19983w;

    /* renamed from: com.byazt.fjm.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0227hp {
        RecyclerView.cx hp(int i2);

        void hp(int i2, int i3);

        void hp(int i2, int i3, Object obj);

        void j(int i2, int i3);

        void jx(int i2, int i3);

        void l(int i2, int i3);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 255})
    public static class l {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f19984j;
        public Object jx;

        /* renamed from: l, reason: collision with root package name */
        public int f19985l;

        public l(int i2, int i3, int i4, Object obj) {
            this.hp = i2;
            this.f19985l = i3;
            this.f19984j = i4;
            this.jx = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            l lVar = (l) obj;
            int i2 = this.hp;
            if (i2 != lVar.hp) {
                return false;
            }
            if (i2 == 8 && Math.abs(this.f19984j - this.f19985l) == 1 && this.f19984j == lVar.f19985l && this.f19985l == lVar.f19984j) {
                return true;
            }
            if (this.f19984j != lVar.f19984j || this.f19985l != lVar.f19985l) {
                return false;
            }
            Object obj2 = this.jx;
            if (obj2 != null) {
                if (!obj2.equals(lVar.jx)) {
                    return false;
                }
            } else if (lVar.jx != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.hp * 31) + this.f19985l) * 31) + this.f19984j;
        }

        public String hp() {
            int i2 = this.hp;
            return i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : t.f31281w : "add";
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + hp() + ",s:" + this.f19985l + "c:" + this.f19984j + ",p:" + this.jx + "]";
        }
    }

    public hp(InterfaceC0227hp interfaceC0227hp) {
        this(interfaceC0227hp, false);
    }

    private void a(l lVar) {
        eb(lVar);
    }

    private void eb(l lVar) {
        this.f19981l.add(lVar);
        int i2 = lVar.hp;
        if (i2 == 1) {
            this.jx.jx(lVar.f19985l, lVar.f19984j);
            return;
        }
        if (i2 == 2) {
            this.jx.l(lVar.f19985l, lVar.f19984j);
        } else if (i2 == 4) {
            this.jx.hp(lVar.f19985l, lVar.f19984j, lVar.jx);
        } else {
            if (i2 != 8) {
                throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(lVar)));
            }
            this.jx.j(lVar.f19985l, lVar.f19984j);
        }
    }

    private void j(l lVar) {
        int i2 = lVar.f19985l;
        int i3 = lVar.f19984j + i2;
        int i4 = 0;
        boolean z2 = -1;
        int i5 = i2;
        while (i2 < i3) {
            if (this.jx.hp(i2) != null || j(i2)) {
                if (!z2) {
                    w(hp(4, i5, i4, lVar.jx));
                    i5 = i2;
                    i4 = 0;
                }
                z2 = true;
            } else {
                if (z2) {
                    eb(hp(4, i5, i4, lVar.jx));
                    i5 = i2;
                    i4 = 0;
                }
                z2 = false;
            }
            i4++;
            i2++;
        }
        if (i4 != lVar.f19984j) {
            Object obj = lVar.jx;
            hp(lVar);
            lVar = hp(4, i5, i4, obj);
        }
        if (z2) {
            eb(lVar);
        } else {
            w(lVar);
        }
    }

    private void w(l lVar) {
        int i2;
        int i3 = lVar.hp;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iL = l(lVar.f19985l, i3);
        int i4 = lVar.f19985l;
        int i5 = lVar.hp;
        if (i5 == 2) {
            i2 = 0;
        } else {
            if (i5 != 4) {
                throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(lVar)));
            }
            i2 = 1;
        }
        int i6 = 1;
        for (int i7 = 1; i7 < lVar.f19984j; i7++) {
            int iL2 = l(lVar.f19985l + (i2 * i7), lVar.hp);
            int i8 = lVar.hp;
            if (i8 == 2 ? iL2 != iL : !(i8 == 4 && iL2 == iL + 1)) {
                l lVarHp = hp(i8, iL, i6, lVar.jx);
                hp(lVarHp, i4);
                hp(lVarHp);
                if (lVar.hp == 4) {
                    i4 += i6;
                }
                i6 = 1;
                iL = iL2;
            } else {
                i6++;
            }
        }
        Object obj = lVar.jx;
        hp(lVar);
        if (i6 > 0) {
            l lVarHp2 = hp(lVar.hp, iL, i6, obj);
            hp(lVarHp2, i4);
            hp(lVarHp2);
        }
    }

    public void hp() {
        hp(this.hp);
        hp(this.f19981l);
        this.f19982s = 0;
    }

    public void jx() {
        int size = this.f19981l.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f19981l.get(i2);
        }
        hp(this.f19981l);
        this.f19982s = 0;
    }

    public void l() {
        this.f19979a.hp(this.hp);
        int size = this.hp.size();
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.hp.get(i2);
            int i3 = lVar.hp;
            if (i3 == 1) {
                a(lVar);
            } else if (i3 == 2) {
                jx(lVar);
            } else if (i3 == 4) {
                j(lVar);
            } else if (i3 == 8) {
                l(lVar);
            }
            Runnable runnable = this.f19980j;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.hp.clear();
    }

    public hp(InterfaceC0227hp interfaceC0227hp, boolean z2) {
        this.eb = new j.l(30);
        this.hp = new ArrayList<>();
        this.f19981l = new ArrayList<>();
        this.f19982s = 0;
        this.jx = interfaceC0227hp;
        this.f19983w = z2;
        this.f19979a = new eb(this);
    }

    public boolean a() {
        return (this.f19981l.isEmpty() || this.hp.isEmpty()) ? false : true;
    }

    public void hp(l lVar, int i2) {
        int i3 = lVar.hp;
        if (i3 == 2) {
            this.jx.hp(i2, lVar.f19984j);
        } else {
            if (i3 == 4) {
                this.jx.hp(i2, lVar.f19984j, lVar.jx);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private void jx(l lVar) {
        boolean z2;
        char c2;
        int i2 = lVar.f19985l;
        int i3 = lVar.f19984j + i2;
        char c3 = 65535;
        int i4 = i2;
        int i5 = 0;
        while (i4 < i3) {
            if (this.jx.hp(i4) != null || j(i4)) {
                if (c3 == 0) {
                    w(hp(2, i2, i5, null));
                    z2 = true;
                } else {
                    z2 = false;
                }
                c2 = 1;
            } else {
                if (c3 == 1) {
                    eb(hp(2, i2, i5, null));
                    z2 = true;
                } else {
                    z2 = false;
                }
                c2 = 0;
            }
            if (z2) {
                i4 -= i5;
                i3 -= i5;
                i5 = 1;
            } else {
                i5++;
            }
            i4++;
            c3 = c2;
        }
        if (i5 != lVar.f19984j) {
            hp(lVar);
            lVar = hp(2, i2, i5, null);
        }
        if (c3 == 0) {
            w(lVar);
        } else {
            eb(lVar);
        }
    }

    public boolean hp(int i2) {
        return (i2 & this.f19982s) != 0;
    }

    public int hp(int i2, int i3) {
        int size = this.f19981l.size();
        while (i3 < size) {
            l lVar = this.f19981l.get(i3);
            int i4 = lVar.hp;
            if (i4 == 8) {
                int i5 = lVar.f19985l;
                if (i5 == i2) {
                    i2 = lVar.f19984j;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (lVar.f19984j <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = lVar.f19985l;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = lVar.f19984j;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += lVar.f19984j;
                }
            }
            i3++;
        }
        return i2;
    }

    private void l(l lVar) {
        eb(lVar);
    }

    private int l(int i2, int i3) {
        int i4;
        int i5;
        for (int size = this.f19981l.size() - 1; size >= 0; size--) {
            l lVar = this.f19981l.get(size);
            int i6 = lVar.hp;
            if (i6 == 8) {
                int i7 = lVar.f19985l;
                int i8 = lVar.f19984j;
                if (i7 < i8) {
                    i5 = i7;
                    i4 = i8;
                } else {
                    i4 = i7;
                    i5 = i8;
                }
                if (i2 < i5 || i2 > i4) {
                    if (i2 < i7) {
                        if (i3 == 1) {
                            lVar.f19985l = i7 + 1;
                            lVar.f19984j = i8 + 1;
                        } else if (i3 == 2) {
                            lVar.f19985l = i7 - 1;
                            lVar.f19984j = i8 - 1;
                        }
                    }
                } else if (i5 == i7) {
                    if (i3 == 1) {
                        lVar.f19984j = i8 + 1;
                    } else if (i3 == 2) {
                        lVar.f19984j = i8 - 1;
                    }
                    i2++;
                } else {
                    if (i3 == 1) {
                        lVar.f19985l = i7 + 1;
                    } else if (i3 == 2) {
                        lVar.f19985l = i7 - 1;
                    }
                    i2--;
                }
            } else {
                int i9 = lVar.f19985l;
                if (i9 <= i2) {
                    if (i6 == 1) {
                        i2 -= lVar.f19984j;
                    } else if (i6 == 2) {
                        i2 += lVar.f19984j;
                    }
                } else if (i3 == 1) {
                    lVar.f19985l = i9 + 1;
                } else if (i3 == 2) {
                    lVar.f19985l = i9 - 1;
                }
            }
        }
        for (int size2 = this.f19981l.size() - 1; size2 >= 0; size2--) {
            l lVar2 = this.f19981l.get(size2);
            if (lVar2.hp == 8) {
                int i10 = lVar2.f19984j;
                if (i10 == lVar2.f19985l || i10 < 0) {
                    this.f19981l.remove(size2);
                    hp(lVar2);
                }
            } else if (lVar2.f19984j <= 0) {
                this.f19981l.remove(size2);
                hp(lVar2);
            }
        }
        return i2;
    }

    private boolean j(int i2) {
        int size = this.f19981l.size();
        for (int i3 = 0; i3 < size; i3++) {
            l lVar = this.f19981l.get(i3);
            int i4 = lVar.hp;
            if (i4 == 8) {
                if (hp(lVar.f19984j, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = lVar.f19985l;
                int i6 = lVar.f19984j + i5;
                while (i5 < i6) {
                    if (hp(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean hp(int i2, int i3, Object obj) {
        if (i3 <= 0) {
            return false;
        }
        this.hp.add(hp(4, i2, i3, obj));
        this.f19982s |= 4;
        return this.hp.size() == 1;
    }

    public int jx(int i2) {
        int size = this.hp.size();
        for (int i3 = 0; i3 < size; i3++) {
            l lVar = this.hp.get(i3);
            int i4 = lVar.hp;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = lVar.f19985l;
                    if (i5 <= i2) {
                        int i6 = lVar.f19984j;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = lVar.f19985l;
                    if (i7 == i2) {
                        i2 = lVar.f19984j;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (lVar.f19984j <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (lVar.f19985l <= i2) {
                i2 += lVar.f19984j;
            }
        }
        return i2;
    }

    public void w() {
        jx();
        int size = this.hp.size();
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.hp.get(i2);
            int i3 = lVar.hp;
            if (i3 == 1) {
                this.jx.jx(lVar.f19985l, lVar.f19984j);
            } else if (i3 == 2) {
                this.jx.hp(lVar.f19985l, lVar.f19984j);
            } else if (i3 == 4) {
                this.jx.hp(lVar.f19985l, lVar.f19984j, lVar.jx);
            } else if (i3 == 8) {
                this.jx.j(lVar.f19985l, lVar.f19984j);
            }
            Runnable runnable = this.f19980j;
            if (runnable != null) {
                runnable.run();
            }
        }
        hp(this.hp);
        this.f19982s = 0;
    }

    @Override // com.byazt.fjm.eb.hp
    public l hp(int i2, int i3, int i4, Object obj) {
        l lVarHp = this.eb.hp();
        if (lVarHp == null) {
            return new l(i2, i3, i4, obj);
        }
        lVarHp.hp = i2;
        lVarHp.f19985l = i3;
        lVarHp.f19984j = i4;
        lVarHp.jx = obj;
        return lVarHp;
    }

    public boolean j() {
        return this.hp.size() > 0;
    }

    @Override // com.byazt.fjm.eb.hp
    public void hp(l lVar) {
        if (this.f19983w) {
            return;
        }
        lVar.jx = null;
        this.eb.hp(lVar);
    }

    public void hp(List<l> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            hp(list.get(i2));
        }
        list.clear();
    }

    public int l(int i2) {
        return hp(i2, 0);
    }
}
