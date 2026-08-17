package com.byazt.fjm;

import com.byazt.fjm.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 94})
/* loaded from: classes2.dex */
public class eb {
    public final hp hp;

    public interface hp {
        hp.l hp(int i2, int i3, int i4, Object obj);

        void hp(hp.l lVar);
    }

    public eb(hp hpVar) {
        this.hp = hpVar;
    }

    private void jx(List<hp.l> list, int i2, hp.l lVar, int i3, hp.l lVar2) {
        int i4 = lVar.f19984j;
        int i5 = lVar2.f19985l;
        int i6 = i4 < i5 ? -1 : 0;
        int i7 = lVar.f19985l;
        if (i7 < i5) {
            i6++;
        }
        if (i5 <= i7) {
            lVar.f19985l = i7 + lVar2.f19984j;
        }
        int i8 = lVar2.f19985l;
        if (i8 <= i4) {
            lVar.f19984j = i4 + lVar2.f19984j;
        }
        lVar2.f19985l = i8 + i6;
        list.set(i2, lVar2);
        list.set(i3, lVar);
    }

    public void hp(List<hp.l> list) {
        while (true) {
            int iL = l(list);
            if (iL == -1) {
                return;
            } else {
                hp(list, iL, iL + 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(java.util.List<com.byazt.fjm.hp.l> r9, int r10, com.byazt.fjm.hp.l r11, int r12, com.byazt.fjm.hp.l r13) {
        /*
            r8 = this;
            int r0 = r11.f19984j
            int r1 = r13.f19985l
            r2 = 4
            r3 = 1
            r4 = 0
            if (r0 >= r1) goto Ld
            int r1 = r1 - r3
            r13.f19985l = r1
            goto L20
        Ld:
            int r5 = r13.f19984j
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r3
            r13.f19984j = r5
            com.byazt.fjm.eb$hp r0 = r8.hp
            int r1 = r11.f19985l
            java.lang.Object r5 = r13.jx
            com.byazt.fjm.hp$l r0 = r0.hp(r2, r1, r3, r5)
            goto L21
        L20:
            r0 = r4
        L21:
            int r1 = r11.f19985l
            int r5 = r13.f19985l
            if (r1 > r5) goto L2b
            int r5 = r5 + r3
            r13.f19985l = r5
            goto L41
        L2b:
            int r6 = r13.f19984j
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            com.byazt.fjm.eb$hp r4 = r8.hp
            int r1 = r1 + r3
            java.lang.Object r3 = r13.jx
            com.byazt.fjm.hp$l r4 = r4.hp(r2, r1, r5, r3)
            int r1 = r13.f19984j
            int r1 = r1 - r5
            r13.f19984j = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.f19984j
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            com.byazt.fjm.eb$hp r11 = r8.hp
            r11.hp(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r4 == 0) goto L5e
            r9.add(r10, r4)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fjm.eb.l(java.util.List, int, com.byazt.fjm.hp$l, int, com.byazt.fjm.hp$l):void");
    }

    private void hp(List<hp.l> list, int i2, int i3) {
        hp.l lVar = list.get(i2);
        hp.l lVar2 = list.get(i3);
        int i4 = lVar2.hp;
        if (i4 == 1) {
            jx(list, i2, lVar, i3, lVar2);
        } else if (i4 == 2) {
            hp(list, i2, lVar, i3, lVar2);
        } else {
            if (i4 != 4) {
                return;
            }
            l(list, i2, lVar, i3, lVar2);
        }
    }

    public void hp(List<hp.l> list, int i2, hp.l lVar, int i3, hp.l lVar2) {
        boolean z2;
        int i4 = lVar.f19985l;
        int i5 = lVar.f19984j;
        boolean z3 = false;
        if (i4 < i5) {
            if (lVar2.f19985l == i4 && lVar2.f19984j == i5 - i4) {
                z2 = false;
                z3 = true;
            } else {
                z2 = false;
            }
        } else if (lVar2.f19985l == i5 + 1 && lVar2.f19984j == i4 - i5) {
            z2 = true;
            z3 = true;
        } else {
            z2 = true;
        }
        int i6 = lVar2.f19985l;
        if (i5 < i6) {
            lVar2.f19985l = i6 - 1;
        } else {
            int i7 = lVar2.f19984j;
            if (i5 < i6 + i7) {
                lVar2.f19984j = i7 - 1;
                lVar.hp = 2;
                lVar.f19984j = 1;
                if (lVar2.f19984j == 0) {
                    list.remove(i3);
                    this.hp.hp(lVar2);
                    return;
                }
                return;
            }
        }
        int i8 = lVar.f19985l;
        int i9 = lVar2.f19985l;
        hp.l lVarHp = null;
        if (i8 <= i9) {
            lVar2.f19985l = i9 + 1;
        } else {
            int i10 = lVar2.f19984j;
            if (i8 < i9 + i10) {
                lVarHp = this.hp.hp(2, i8 + 1, (i9 + i10) - i8, null);
                lVar2.f19984j = lVar.f19985l - lVar2.f19985l;
            }
        }
        if (z3) {
            list.set(i2, lVar2);
            list.remove(i3);
            this.hp.hp(lVar);
            return;
        }
        if (z2) {
            if (lVarHp != null) {
                int i11 = lVar.f19985l;
                if (i11 > lVarHp.f19985l) {
                    lVar.f19985l = i11 - lVarHp.f19984j;
                }
                int i12 = lVar.f19984j;
                if (i12 > lVarHp.f19985l) {
                    lVar.f19984j = i12 - lVarHp.f19984j;
                }
            }
            int i13 = lVar.f19985l;
            if (i13 > lVar2.f19985l) {
                lVar.f19985l = i13 - lVar2.f19984j;
            }
            int i14 = lVar.f19984j;
            if (i14 > lVar2.f19985l) {
                lVar.f19984j = i14 - lVar2.f19984j;
            }
        } else {
            if (lVarHp != null) {
                int i15 = lVar.f19985l;
                if (i15 >= lVarHp.f19985l) {
                    lVar.f19985l = i15 - lVarHp.f19984j;
                }
                int i16 = lVar.f19984j;
                if (i16 >= lVarHp.f19985l) {
                    lVar.f19984j = i16 - lVarHp.f19984j;
                }
            }
            int i17 = lVar.f19985l;
            if (i17 >= lVar2.f19985l) {
                lVar.f19985l = i17 - lVar2.f19984j;
            }
            int i18 = lVar.f19984j;
            if (i18 >= lVar2.f19985l) {
                lVar.f19984j = i18 - lVar2.f19984j;
            }
        }
        list.set(i2, lVar2);
        if (lVar.f19985l != lVar.f19984j) {
            list.set(i3, lVar);
        } else {
            list.remove(i3);
        }
        if (lVarHp != null) {
            list.add(i2, lVarHp);
        }
    }

    private int l(List<hp.l> list) {
        boolean z2 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).hp != 8) {
                z2 = true;
            } else if (z2) {
                return size;
            }
        }
        return -1;
    }
}
