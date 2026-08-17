package com.byazt.zh;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.byazt.xa.a;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.embedding.android.KeyboardMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 754, 38})
/* loaded from: classes3.dex */
public class j {
    public static final /* synthetic */ boolean jx = true;

    /* renamed from: a, reason: collision with root package name */
    public long[] f28449a;
    public int[] hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.zh.hp f28450j;

    /* renamed from: l, reason: collision with root package name */
    public long[] f28451l;

    /* renamed from: w, reason: collision with root package name */
    public boolean[] f28452w;

    @com.byazt.kj.hp(hp = {0, 1, 754, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public List<jx> hp;

        /* renamed from: l, reason: collision with root package name */
        public int f28453l;

        public void hp() {
            this.hp = null;
            this.f28453l = 0;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 754, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l implements Comparable<l> {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public int f28454l;

        private l() {
        }

        @Override // java.lang.Comparable
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compareTo(l lVar) {
            int i2 = this.f28454l;
            int i3 = lVar.f28454l;
            return i2 != i3 ? i2 - i3 : this.hp - lVar.hp;
        }

        public String toString() {
            return "Order{order=" + this.f28454l + ", index=" + this.hp + '}';
        }
    }

    public j(com.byazt.zh.hp hpVar) {
        this.f28450j = hpVar;
    }

    private int a(com.byazt.zh.l lVar, boolean z2) {
        return z2 ? lVar.u() : lVar.v();
    }

    private int j(boolean z2) {
        return z2 ? this.f28450j.getPaddingBottom() : this.f28450j.getPaddingEnd();
    }

    private int jx(boolean z2) {
        return z2 ? this.f28450j.getPaddingTop() : this.f28450j.getPaddingStart();
    }

    private int w(com.byazt.zh.l lVar, boolean z2) {
        return z2 ? lVar.k() : lVar.zy();
    }

    public int hp(long j2) {
        return (int) j2;
    }

    public int l(long j2) {
        return (int) (j2 >> 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] hp(View view, int i2, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28450j.getFlexItemCount();
        List<l> listL = l(flexItemCount);
        l lVar = new l();
        if (view == null || !(layoutParams instanceof com.byazt.zh.l)) {
            lVar.f28454l = 1;
        } else {
            lVar.f28454l = ((com.byazt.zh.l) layoutParams).jx();
        }
        if (i2 == -1 || i2 == flexItemCount || i2 >= this.f28450j.getFlexItemCount()) {
            lVar.hp = flexItemCount;
        } else {
            lVar.hp = i2;
            while (i2 < flexItemCount) {
                listL.get(i2).hp++;
                i2++;
            }
        }
        listL.add(lVar);
        return hp(flexItemCount + 1, listL, sparseIntArray);
    }

    public long l(int i2, int i3) {
        return (i2 & KeyboardMap.kValueMask) | (i3 << 32);
    }

    private int j(com.byazt.zh.l lVar, boolean z2) {
        if (z2) {
            return lVar.v();
        }
        return lVar.u();
    }

    private int jx(com.byazt.zh.l lVar, boolean z2) {
        if (z2) {
            return lVar.zy();
        }
        return lVar.k();
    }

    private List<l> l(int i2) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            com.byazt.zh.l lVar = (com.byazt.zh.l) this.f28450j.hp(i3).getLayoutParams();
            l lVar2 = new l();
            lVar2.f28454l = lVar.jx();
            lVar2.hp = i3;
            arrayList.add(lVar2);
        }
        return arrayList;
    }

    private void jx(int i2) {
        boolean[] zArr = this.f28452w;
        if (zArr == null) {
            this.f28452w = new boolean[Math.max(i2, 10)];
        } else if (zArr.length < i2) {
            this.f28452w = new boolean[Math.max(zArr.length * 2, i2)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    public boolean l(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28450j.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i2 = 0; i2 < flexItemCount; i2++) {
            View viewHp = this.f28450j.hp(i2);
            if (viewHp != null && ((com.byazt.zh.l) viewHp.getLayoutParams()).jx() != sparseIntArray.get(i2)) {
                return true;
            }
        }
        return false;
    }

    public void l(hp hpVar, int i2, int i3) {
        hp(hpVar, i3, i2, Integer.MAX_VALUE, 0, -1, (List<jx>) null);
    }

    private int l(boolean z2) {
        if (z2) {
            return this.f28450j.getPaddingEnd();
        }
        return this.f28450j.getPaddingBottom();
    }

    public int[] hp(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28450j.getFlexItemCount();
        return hp(flexItemCount, l(flexItemCount), sparseIntArray);
    }

    private int l(View view, boolean z2) {
        if (z2) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int[] hp(int i2, List<l> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i2];
        int i3 = 0;
        for (l lVar : list) {
            int i4 = lVar.hp;
            iArr[i3] = i4;
            sparseIntArray.append(i4, lVar.f28454l);
            i3++;
        }
        return iArr;
    }

    private int l(com.byazt.zh.l lVar, boolean z2) {
        if (z2) {
            return lVar.l();
        }
        return lVar.hp();
    }

    private void l(int i2, int i3, jx jxVar, int i4, int i5, boolean z2) {
        float f2;
        float f3;
        int iMax;
        int iEb;
        int i6 = jxVar.f28464w;
        float f4 = jxVar.gu;
        float f5 = 0.0f;
        if (f4 <= 0.0f || i4 > i6) {
            return;
        }
        float f6 = (i6 - i4) / f4;
        jxVar.f28464w = i5 + jxVar.f28455a;
        if (!z2) {
            jxVar.eb = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z3 = false;
        int i8 = 0;
        float f7 = 0.0f;
        while (i7 < jxVar.f28461s) {
            int i9 = jxVar.f28463v + i7;
            View viewL = this.f28450j.l(i9);
            if (viewL == null || viewL.getVisibility() == 8) {
                f2 = f5;
                f3 = f6;
            } else {
                com.byazt.zh.l lVar = (com.byazt.zh.l) viewL.getLayoutParams();
                int flexDirection = this.f28450j.getFlexDirection();
                f2 = f5;
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewL.getMeasuredHeight();
                    long[] jArr = this.f28449a;
                    if (jArr != null) {
                        measuredHeight = l(jArr[i9]);
                    }
                    int measuredWidth = viewL.getMeasuredWidth();
                    long[] jArr2 = this.f28449a;
                    if (jArr2 != null) {
                        measuredWidth = hp(jArr2[i9]);
                    }
                    if (!this.f28452w[i9] && lVar.w() > f2) {
                        float fW = measuredHeight - (lVar.w() * f6);
                        if (i7 == jxVar.f28461s - 1) {
                            fW += f7;
                            f7 = f2;
                        }
                        int iRound = Math.round(fW);
                        if (iRound < lVar.s()) {
                            iRound = lVar.s();
                            this.f28452w[i9] = true;
                            jxVar.gu -= lVar.w();
                            z3 = true;
                        } else {
                            f7 += fW - iRound;
                            double d2 = f7;
                            if (d2 > 1.0d) {
                                iRound++;
                                f7 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                iRound--;
                                f7 += 1.0f;
                            }
                        }
                        int iHp = hp(i2, lVar, jxVar.zy);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, C.ENCODING_PCM_32BIT);
                        viewL.measure(iHp, iMakeMeasureSpec);
                        int measuredWidth2 = viewL.getMeasuredWidth();
                        int measuredHeight2 = viewL.getMeasuredHeight();
                        hp(i9, iHp, iMakeMeasureSpec, viewL);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i8, measuredWidth + lVar.zy() + lVar.v() + this.f28450j.hp(viewL));
                    jxVar.f28464w += measuredHeight + lVar.k() + lVar.u();
                    f3 = f6;
                } else {
                    int measuredWidth3 = viewL.getMeasuredWidth();
                    long[] jArr3 = this.f28449a;
                    if (jArr3 != null) {
                        measuredWidth3 = hp(jArr3[i9]);
                    }
                    int measuredHeight3 = viewL.getMeasuredHeight();
                    long[] jArr4 = this.f28449a;
                    f3 = f6;
                    if (jArr4 != null) {
                        measuredHeight3 = l(jArr4[i9]);
                    }
                    if (!this.f28452w[i9] && lVar.w() > f2) {
                        float fW2 = measuredWidth3 - (f3 * lVar.w());
                        if (i7 == jxVar.f28461s - 1) {
                            fW2 += f7;
                            f7 = f2;
                        }
                        int iRound2 = Math.round(fW2);
                        if (iRound2 < lVar.eb()) {
                            iEb = lVar.eb();
                            this.f28452w[i9] = true;
                            jxVar.gu -= lVar.w();
                            z3 = true;
                        } else {
                            f7 += fW2 - iRound2;
                            double d3 = f7;
                            if (d3 > 1.0d) {
                                iEb = iRound2 + 1;
                                f7 -= 1.0f;
                            } else if (d3 < -1.0d) {
                                iEb = iRound2 - 1;
                                f7 += 1.0f;
                            } else {
                                iEb = iRound2;
                            }
                        }
                        int iL = l(i3, lVar, jxVar.zy);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iEb, C.ENCODING_PCM_32BIT);
                        viewL.measure(iMakeMeasureSpec2, iL);
                        int measuredWidth4 = viewL.getMeasuredWidth();
                        int measuredHeight4 = viewL.getMeasuredHeight();
                        hp(i9, iMakeMeasureSpec2, iL, viewL);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i8, measuredHeight3 + lVar.k() + lVar.u() + this.f28450j.hp(viewL));
                    jxVar.f28464w += measuredWidth3 + lVar.zy() + lVar.v();
                    iMax = iMax2;
                }
                jxVar.eb = Math.max(jxVar.eb, iMax);
                i8 = iMax;
            }
            i7++;
            f6 = f3;
            f5 = f2;
        }
        if (!z3 || i6 == jxVar.f28464w) {
            return;
        }
        l(i2, i3, jxVar, i4, i5, true);
    }

    public void hp(hp hpVar, int i2, int i3) {
        hp(hpVar, i2, i3, Integer.MAX_VALUE, 0, -1, (List<jx>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp(hp hpVar, int i2, int i3, int i4, int i5, int i6, List<jx> list) {
        int i7;
        hp hpVar2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iHp;
        int i13;
        int i14;
        int i15;
        jx jxVar;
        int i16;
        int i17;
        boolean z2;
        int i18;
        boolean z3;
        int i19;
        int i20 = i2;
        boolean zHp = this.f28450j.hp();
        int mode = View.MeasureSpec.getMode(i20);
        int size = View.MeasureSpec.getSize(i20);
        List<jx> arrayList = list == null ? new ArrayList() : list;
        hpVar.hp = arrayList;
        boolean z4 = i6 == -1;
        int iHp2 = hp(zHp);
        int iL = l(zHp);
        int iJx = jx(zHp);
        int iJ = j(zHp);
        jx jxVar2 = new jx();
        int i21 = i5;
        jxVar2.f28463v = i21;
        int i22 = iHp2 + iL;
        jxVar2.f28464w = i22;
        int flexItemCount = this.f28450j.getFlexItemCount();
        boolean z5 = z4;
        jx jxVar3 = jxVar2;
        int i23 = Integer.MIN_VALUE;
        int i24 = 0;
        int iCombineMeasuredStates = 0;
        int i25 = 0;
        while (true) {
            if (i21 >= flexItemCount) {
                i7 = iCombineMeasuredStates;
                hpVar2 = hpVar;
                break;
            }
            View viewL = this.f28450j.l(i21);
            if (viewL == null) {
                if (hp(i21, flexItemCount, jxVar3)) {
                    hp(arrayList, jxVar3, i21, i24);
                }
                i8 = i22;
            } else {
                i8 = i22;
                if (viewL.getVisibility() == 8) {
                    jxVar3.f28460q++;
                    jxVar3.f28461s++;
                    if (hp(i21, flexItemCount, jxVar3)) {
                        hp(arrayList, jxVar3, i21, i24);
                    }
                } else {
                    if (viewL instanceof CompoundButton) {
                        hp((CompoundButton) viewL);
                    }
                    com.byazt.zh.l lVar = (com.byazt.zh.l) viewL.getLayoutParams();
                    int i26 = flexItemCount;
                    if (lVar.a() == 4) {
                        jxVar3.f28458k.add(Integer.valueOf(i21));
                    }
                    int iHp3 = hp(lVar, zHp);
                    if (lVar.jl() != -1.0f && mode == 1073741824) {
                        iHp3 = Math.round(size * lVar.jl());
                    }
                    if (zHp) {
                        i10 = mode;
                        iHp = this.f28450j.hp(i20, i8 + jx(lVar, true) + j(lVar, true), iHp3);
                        i9 = size;
                        i11 = i24;
                        int iL2 = this.f28450j.l(i3, iJx + iJ + w(lVar, true) + a(lVar, true) + i24, l(lVar, true));
                        viewL.measure(iHp, iL2);
                        hp(i21, iHp, iL2, viewL);
                        i12 = 0;
                    } else {
                        i9 = size;
                        i10 = mode;
                        i11 = i24;
                        i12 = 0;
                        int iHp4 = this.f28450j.hp(i3, iJx + iJ + w(lVar, false) + a(lVar, false) + i11, l(lVar, false));
                        int iL3 = this.f28450j.l(i20, i8 + jx(lVar, false) + j(lVar, false), iHp3);
                        viewL.measure(iHp4, iL3);
                        hp(i21, iHp4, iL3, viewL);
                        iHp = iL3;
                    }
                    hp(viewL, i21);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewL.getMeasuredState());
                    int i27 = i12;
                    i13 = i21;
                    int i28 = iHp;
                    jx jxVar4 = jxVar3;
                    int i29 = i25;
                    i14 = i8;
                    i15 = i11;
                    boolean z6 = zHp;
                    size = i9;
                    if (hp(viewL, i10, size, jxVar3.f28464w, hp(viewL, zHp) + jx(lVar, zHp) + j(lVar, zHp), lVar, i13, i29, arrayList.size())) {
                        if (jxVar4.l() > 0) {
                            hp(arrayList, jxVar4, i13 > 0 ? i13 - 1 : i27, i15);
                            i19 = i15 + jxVar4.eb;
                        } else {
                            i19 = i15;
                        }
                        if (z6) {
                            if (lVar.l() == -1) {
                                com.byazt.zh.hp hpVar3 = this.f28450j;
                                viewL.measure(i28, hpVar3.l(i3, hpVar3.getPaddingTop() + this.f28450j.getPaddingBottom() + lVar.k() + lVar.u() + i19, lVar.l()));
                                hp(viewL, i13);
                            }
                        } else if (lVar.hp() == -1) {
                            com.byazt.zh.hp hpVar4 = this.f28450j;
                            viewL.measure(hpVar4.hp(i3, hpVar4.getPaddingLeft() + this.f28450j.getPaddingRight() + lVar.zy() + lVar.v() + i19, lVar.hp()), i28);
                            hp(viewL, i13);
                        }
                        jx jxVar5 = new jx();
                        jxVar5.f28461s = 1;
                        jxVar5.f28464w = i14;
                        jxVar5.f28463v = i13;
                        i15 = i19;
                        i16 = i27;
                        jxVar = jxVar5;
                        i17 = Integer.MIN_VALUE;
                    } else {
                        jxVar = jxVar4;
                        jxVar.f28461s++;
                        i16 = i29 + 1;
                        i17 = i23;
                    }
                    jxVar.xs = (jxVar.xs ? 1 : 0) | (lVar.j() != 0.0f ? 1 : i27);
                    jxVar.vv = (jxVar.vv ? 1 : 0) | (lVar.w() != 0.0f ? 1 : i27);
                    int[] iArr = this.hp;
                    if (iArr != null) {
                        iArr[i13] = arrayList.size();
                    }
                    z2 = z6;
                    jxVar.f28464w += hp(viewL, z2) + jx(lVar, z2) + j(lVar, z2);
                    jxVar.f28456e += lVar.j();
                    jxVar.gu += lVar.w();
                    this.f28450j.hp(viewL, i13, i16, jxVar);
                    int iMax = Math.max(i17, l(viewL, z2) + w(lVar, z2) + a(lVar, z2) + this.f28450j.hp(viewL));
                    jxVar.eb = Math.max(jxVar.eb, iMax);
                    if (z2) {
                        if (this.f28450j.getFlexWrap() != 2) {
                            jxVar.jl = Math.max(jxVar.jl, viewL.getBaseline() + lVar.k());
                        } else {
                            jxVar.jl = Math.max(jxVar.jl, (viewL.getMeasuredHeight() - viewL.getBaseline()) + lVar.u());
                        }
                    }
                    i18 = i26;
                    if (hp(i13, i18, jxVar)) {
                        hp(arrayList, jxVar, i13, i15);
                        i15 += jxVar.eb;
                    }
                    if (i6 != -1 && arrayList.size() > 0) {
                        if (arrayList.get(arrayList.size() - 1).f28462u >= i6 && i13 >= i6 && !z5) {
                            i15 = -jxVar.hp();
                            z3 = true;
                        }
                        if (i15 <= i4 && z3) {
                            hpVar2 = hpVar;
                            i7 = iCombineMeasuredStates;
                            break;
                        }
                        i23 = iMax;
                        z5 = z3;
                        i25 = i16;
                        int i30 = i13 + 1;
                        zHp = z2;
                        jxVar3 = jxVar;
                        i22 = i14;
                        i24 = i15;
                        i20 = i2;
                        flexItemCount = i18;
                        i21 = i30;
                        mode = i10;
                    }
                    z3 = z5;
                    if (i15 <= i4) {
                    }
                    i23 = iMax;
                    z5 = z3;
                    i25 = i16;
                    int i302 = i13 + 1;
                    zHp = z2;
                    jxVar3 = jxVar;
                    i22 = i14;
                    i24 = i15;
                    i20 = i2;
                    flexItemCount = i18;
                    i21 = i302;
                    mode = i10;
                }
            }
            i13 = i21;
            i10 = mode;
            i18 = flexItemCount;
            i15 = i24;
            z2 = zHp;
            i14 = i8;
            jxVar = jxVar3;
            int i3022 = i13 + 1;
            zHp = z2;
            jxVar3 = jxVar;
            i22 = i14;
            i24 = i15;
            i20 = i2;
            flexItemCount = i18;
            i21 = i3022;
            mode = i10;
        }
        hpVar2.f28453l = i7;
    }

    private int l(int i2, com.byazt.zh.l lVar, int i3) {
        com.byazt.zh.hp hpVar = this.f28450j;
        int iL = hpVar.l(i2, hpVar.getPaddingTop() + this.f28450j.getPaddingBottom() + lVar.k() + lVar.u() + i3, lVar.l());
        int size = View.MeasureSpec.getSize(iL);
        if (size > lVar.e()) {
            return View.MeasureSpec.makeMeasureSpec(lVar.e(), View.MeasureSpec.getMode(iL));
        }
        return size < lVar.s() ? View.MeasureSpec.makeMeasureSpec(lVar.s(), View.MeasureSpec.getMode(iL)) : iL;
    }

    public void l(int i2, int i3, int i4) {
        int mode;
        int size;
        int flexDirection = this.f28450j.getFlexDirection();
        if (flexDirection != 0 && flexDirection != 1) {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            mode = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
        } else {
            int mode2 = View.MeasureSpec.getMode(i3);
            int size2 = View.MeasureSpec.getSize(i3);
            mode = mode2;
            size = size2;
        }
        List<jx> flexLinesInternal = this.f28450j.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.f28450j.getSumOfCrossSize() + i4;
            int i5 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).eb = size - i4;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f28450j.getAlignContent();
                if (alignContent == 1) {
                    int i6 = size - sumOfCrossSize;
                    jx jxVar = new jx();
                    jxVar.eb = i6;
                    flexLinesInternal.add(0, jxVar);
                    return;
                }
                if (alignContent == 2) {
                    this.f28450j.setFlexLines(hp(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize < size) {
                        float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size4 = flexLinesInternal.size();
                        float f2 = 0.0f;
                        while (i5 < size4) {
                            arrayList.add(flexLinesInternal.get(i5));
                            if (i5 != flexLinesInternal.size() - 1) {
                                jx jxVar2 = new jx();
                                if (i5 == flexLinesInternal.size() - 2) {
                                    jxVar2.eb = Math.round(f2 + size3);
                                    f2 = 0.0f;
                                } else {
                                    jxVar2.eb = Math.round(size3);
                                }
                                int i7 = jxVar2.eb;
                                f2 += size3 - i7;
                                if (f2 > 1.0f) {
                                    jxVar2.eb = i7 + 1;
                                    f2 -= 1.0f;
                                } else if (f2 < -1.0f) {
                                    jxVar2.eb = i7 - 1;
                                    f2 += 1.0f;
                                }
                                arrayList.add(jxVar2);
                            }
                            i5++;
                        }
                        this.f28450j.setFlexLines(arrayList);
                        return;
                    }
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.f28450j.setFlexLines(hp(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    jx jxVar3 = new jx();
                    jxVar3.eb = size5;
                    for (jx jxVar4 : flexLinesInternal) {
                        arrayList2.add(jxVar3);
                        arrayList2.add(jxVar4);
                        arrayList2.add(jxVar3);
                    }
                    this.f28450j.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f3 = 0.0f;
                    while (i5 < size7) {
                        jx jxVar5 = flexLinesInternal.get(i5);
                        float f4 = jxVar5.eb + size6;
                        if (i5 == flexLinesInternal.size() - 1) {
                            f4 += f3;
                            f3 = 0.0f;
                        }
                        int iRound = Math.round(f4);
                        f3 += f4 - iRound;
                        if (f3 > 1.0f) {
                            iRound++;
                            f3 -= 1.0f;
                        } else if (f3 < -1.0f) {
                            iRound--;
                            f3 += 1.0f;
                        }
                        jxVar5.eb = iRound;
                        i5++;
                    }
                }
            }
        }
    }

    private void hp(CompoundButton compoundButton) {
        com.byazt.zh.l lVar = (com.byazt.zh.l) compoundButton.getLayoutParams();
        int iEb = lVar.eb();
        int iS = lVar.s();
        Drawable drawableHp = com.byazt.xa.w.hp(compoundButton);
        int minimumWidth = drawableHp == null ? 0 : drawableHp.getMinimumWidth();
        int minimumHeight = drawableHp != null ? drawableHp.getMinimumHeight() : 0;
        if (iEb == -1) {
            iEb = minimumWidth;
        }
        lVar.hp(iEb);
        if (iS == -1) {
            iS = minimumHeight;
        }
        lVar.l(iS);
    }

    private int hp(boolean z2) {
        if (z2) {
            return this.f28450j.getPaddingStart();
        }
        return this.f28450j.getPaddingTop();
    }

    private int hp(View view, boolean z2) {
        if (z2) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private void l(View view, int i2, int i3) {
        int measuredHeight;
        com.byazt.zh.l lVar = (com.byazt.zh.l) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i2 - lVar.zy()) - lVar.v()) - this.f28450j.hp(view), lVar.eb()), lVar.q());
        long[] jArr = this.f28449a;
        if (jArr != null) {
            measuredHeight = l(jArr[i3]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, C.ENCODING_PCM_32BIT);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        hp(i3, iMakeMeasureSpec2, iMakeMeasureSpec, view);
    }

    private int hp(com.byazt.zh.l lVar, boolean z2) {
        if (z2) {
            return lVar.hp();
        }
        return lVar.l();
    }

    private boolean hp(View view, int i2, int i3, int i4, int i5, com.byazt.zh.l lVar, int i6, int i7, int i8) {
        if (this.f28450j.getFlexWrap() == 0) {
            return false;
        }
        if (lVar.gu()) {
            return true;
        }
        if (i2 == 0) {
            return false;
        }
        int maxLine = this.f28450j.getMaxLine();
        if (maxLine != -1 && maxLine <= i8 + 1) {
            return false;
        }
        int iHp = this.f28450j.hp(view, i6, i7);
        if (iHp > 0) {
            i5 += iHp;
        }
        return i3 < i4 + i5;
    }

    private boolean hp(int i2, int i3, jx jxVar) {
        return i2 == i3 - 1 && jxVar.l() != 0;
    }

    private void hp(List<jx> list, jx jxVar, int i2, int i3) {
        jxVar.zy = i3;
        this.f28450j.hp(jxVar);
        jxVar.f28462u = i2;
        list.add(jxVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.byazt.zh.l r0 = (com.byazt.zh.l) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.eb()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.eb()
        L19:
            r3 = r4
            goto L27
        L1b:
            int r3 = r0.q()
            if (r1 <= r3) goto L26
            int r1 = r0.q()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.s()
            if (r2 >= r5) goto L32
            int r2 = r0.s()
            goto L3e
        L32:
            int r5 = r0.e()
            if (r2 <= r5) goto L3d
            int r2 = r0.e()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L50
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.hp(r8, r1, r0, r7)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.j.hp(android.view.View, int):void");
    }

    public void hp(int i2, int i3) {
        hp(i2, i3, 0);
    }

    public void hp(int i2, int i3, int i4) {
        int size;
        int paddingLeft;
        int paddingRight;
        int i5;
        int i6;
        jx(this.f28450j.getFlexItemCount());
        if (i4 >= this.f28450j.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28450j.getFlexDirection();
        int flexDirection2 = this.f28450j.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            int largestMainSize = this.f28450j.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f28450j.getPaddingLeft();
            paddingRight = this.f28450j.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            int mode2 = View.MeasureSpec.getMode(i3);
            size = View.MeasureSpec.getSize(i3);
            if (mode2 != 1073741824) {
                size = this.f28450j.getLargestMainSize();
            }
            paddingLeft = this.f28450j.getPaddingTop();
            paddingRight = this.f28450j.getPaddingBottom();
        }
        int i7 = paddingLeft + paddingRight;
        int i8 = size;
        int[] iArr = this.hp;
        int i9 = iArr != null ? iArr[i4] : 0;
        List<jx> flexLinesInternal = this.f28450j.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i9 < size2) {
            jx jxVar = flexLinesInternal.get(i9);
            int i10 = jxVar.f28464w;
            if (i10 < i8 && jxVar.xs) {
                i5 = i2;
                i6 = i3;
                hp(i5, i6, jxVar, i8, i7, false);
            } else {
                i5 = i2;
                i6 = i3;
                if (i10 > i8 && jxVar.vv) {
                    l(i5, i6, jxVar, i8, i7, false);
                }
            }
            i9++;
            i2 = i5;
            i3 = i6;
        }
    }

    private void hp(int i2, int i3, jx jxVar, int i4, int i5, boolean z2) {
        int i6;
        float f2;
        float f3;
        int iMax;
        double d2;
        double d3;
        float f4 = jxVar.f28456e;
        float f5 = 0.0f;
        if (f4 <= 0.0f || i4 < (i6 = jxVar.f28464w)) {
            return;
        }
        float f6 = (i4 - i6) / f4;
        jxVar.f28464w = i5 + jxVar.f28455a;
        if (!z2) {
            jxVar.eb = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z3 = false;
        int i8 = 0;
        float f7 = 0.0f;
        while (i7 < jxVar.f28461s) {
            int i9 = jxVar.f28463v + i7;
            View viewL = this.f28450j.l(i9);
            if (viewL == null || viewL.getVisibility() == 8) {
                f2 = f5;
                f3 = f6;
                z3 = z3;
            } else {
                com.byazt.zh.l lVar = (com.byazt.zh.l) viewL.getLayoutParams();
                int flexDirection = this.f28450j.getFlexDirection();
                f2 = f5;
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewL.getMeasuredHeight();
                    long[] jArr = this.f28449a;
                    if (jArr != null) {
                        measuredHeight = l(jArr[i9]);
                    }
                    int measuredWidth = viewL.getMeasuredWidth();
                    long[] jArr2 = this.f28449a;
                    f3 = f6;
                    boolean z4 = z3;
                    if (jArr2 != null) {
                        measuredWidth = hp(jArr2[i9]);
                    }
                    if (this.f28452w[i9] || lVar.j() <= f2) {
                        z3 = z4;
                    } else {
                        float fJ = measuredHeight + (lVar.j() * f3);
                        if (i7 == jxVar.f28461s - 1) {
                            fJ += f7;
                            f7 = f2;
                        }
                        int iRound = Math.round(fJ);
                        if (iRound > lVar.e()) {
                            iRound = lVar.e();
                            this.f28452w[i9] = true;
                            jxVar.f28456e -= lVar.j();
                            z3 = true;
                        } else {
                            f7 += fJ - iRound;
                            double d4 = f7;
                            if (d4 > 1.0d) {
                                iRound++;
                                d3 = d4 - 1.0d;
                            } else {
                                if (d4 < -1.0d) {
                                    iRound--;
                                    d3 = d4 + 1.0d;
                                }
                                z3 = z4;
                            }
                            f7 = (float) d3;
                            z3 = z4;
                        }
                        int iHp = hp(i2, lVar, jxVar.zy);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, C.ENCODING_PCM_32BIT);
                        viewL.measure(iHp, iMakeMeasureSpec);
                        int measuredWidth2 = viewL.getMeasuredWidth();
                        int measuredHeight2 = viewL.getMeasuredHeight();
                        hp(i9, iHp, iMakeMeasureSpec, viewL);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i8, measuredWidth + lVar.zy() + lVar.v() + this.f28450j.hp(viewL));
                    jxVar.f28464w += measuredHeight + lVar.k() + lVar.u();
                } else {
                    f3 = f6;
                    boolean z5 = z3;
                    int measuredWidth3 = viewL.getMeasuredWidth();
                    long[] jArr3 = this.f28449a;
                    if (jArr3 != null) {
                        measuredWidth3 = hp(jArr3[i9]);
                    }
                    int measuredHeight3 = viewL.getMeasuredHeight();
                    long[] jArr4 = this.f28449a;
                    if (jArr4 != null) {
                        measuredHeight3 = l(jArr4[i9]);
                    }
                    if (this.f28452w[i9] || lVar.j() <= f2) {
                        z3 = z5;
                    } else {
                        float fJ2 = measuredWidth3 + (lVar.j() * f3);
                        if (i7 == jxVar.f28461s - 1) {
                            fJ2 += f7;
                            f7 = f2;
                        }
                        int iRound2 = Math.round(fJ2);
                        if (iRound2 > lVar.q()) {
                            iRound2 = lVar.q();
                            this.f28452w[i9] = true;
                            jxVar.f28456e -= lVar.j();
                            z3 = true;
                        } else {
                            f7 += fJ2 - iRound2;
                            double d5 = f7;
                            if (d5 > 1.0d) {
                                iRound2++;
                                d2 = d5 - 1.0d;
                            } else {
                                if (d5 < -1.0d) {
                                    iRound2--;
                                    d2 = d5 + 1.0d;
                                }
                                z3 = z5;
                            }
                            f7 = (float) d2;
                            z3 = z5;
                        }
                        int iL = l(i3, lVar, jxVar.zy);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, C.ENCODING_PCM_32BIT);
                        viewL.measure(iMakeMeasureSpec2, iL);
                        int measuredWidth4 = viewL.getMeasuredWidth();
                        int measuredHeight4 = viewL.getMeasuredHeight();
                        hp(i9, iMakeMeasureSpec2, iL, viewL);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i8, measuredHeight3 + lVar.k() + lVar.u() + this.f28450j.hp(viewL));
                    jxVar.f28464w += measuredWidth3 + lVar.zy() + lVar.v();
                    iMax = iMax2;
                }
                jxVar.eb = Math.max(jxVar.eb, iMax);
                i8 = iMax;
            }
            i7++;
            f6 = f3;
            f5 = f2;
        }
        if (!z3 || i6 == jxVar.f28464w) {
            return;
        }
        hp(i2, i3, jxVar, i4, i5, true);
    }

    private int hp(int i2, com.byazt.zh.l lVar, int i3) {
        com.byazt.zh.hp hpVar = this.f28450j;
        int iHp = hpVar.hp(i2, hpVar.getPaddingLeft() + this.f28450j.getPaddingRight() + lVar.zy() + lVar.v() + i3, lVar.hp());
        int size = View.MeasureSpec.getSize(iHp);
        if (size > lVar.q()) {
            return View.MeasureSpec.makeMeasureSpec(lVar.q(), View.MeasureSpec.getMode(iHp));
        }
        return size < lVar.eb() ? View.MeasureSpec.makeMeasureSpec(lVar.eb(), View.MeasureSpec.getMode(iHp)) : iHp;
    }

    private List<jx> hp(List<jx> list, int i2, int i3) {
        int i4 = (i2 - i3) / 2;
        ArrayList arrayList = new ArrayList();
        jx jxVar = new jx();
        jxVar.eb = i4;
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (i5 == 0) {
                arrayList.add(jxVar);
            }
            arrayList.add(list.get(i5));
            if (i5 == list.size() - 1) {
                arrayList.add(jxVar);
            }
        }
        return arrayList;
    }

    public void hp() {
        hp(0);
    }

    public void hp(int i2) {
        View viewL;
        if (i2 >= this.f28450j.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28450j.getFlexDirection();
        if (this.f28450j.getAlignItems() == 4) {
            int[] iArr = this.hp;
            List<jx> flexLinesInternal = this.f28450j.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i3 = iArr != null ? iArr[i2] : 0; i3 < size; i3++) {
                jx jxVar = flexLinesInternal.get(i3);
                int i4 = jxVar.f28461s;
                for (int i5 = 0; i5 < i4; i5++) {
                    int i6 = jxVar.f28463v + i5;
                    if (i5 < this.f28450j.getFlexItemCount() && (viewL = this.f28450j.l(i6)) != null && viewL.getVisibility() != 8) {
                        com.byazt.zh.l lVar = (com.byazt.zh.l) viewL.getLayoutParams();
                        if (lVar.a() == -1 || lVar.a() == 4) {
                            if (flexDirection != 0 && flexDirection != 1) {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                                }
                                l(viewL, jxVar.eb, i6);
                            } else {
                                hp(viewL, jxVar.eb, i6);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (jx jxVar2 : this.f28450j.getFlexLinesInternal()) {
            for (Integer num : jxVar2.f28458k) {
                View viewL2 = this.f28450j.l(num.intValue());
                if (flexDirection != 0 && flexDirection != 1) {
                    if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                    }
                    l(viewL2, jxVar2.eb, num.intValue());
                } else {
                    hp(viewL2, jxVar2.eb, num.intValue());
                }
            }
        }
    }

    private void hp(View view, int i2, int i3) {
        int measuredWidth;
        com.byazt.zh.l lVar = (com.byazt.zh.l) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i2 - lVar.k()) - lVar.u()) - this.f28450j.hp(view), lVar.s()), lVar.e());
        long[] jArr = this.f28449a;
        if (jArr != null) {
            measuredWidth = hp(jArr[i3]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, C.ENCODING_PCM_32BIT);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        hp(i3, iMakeMeasureSpec, iMakeMeasureSpec2, view);
    }

    public void hp(View view, jx jxVar, int i2, int i3, int i4, int i5) {
        com.byazt.zh.l lVar = (com.byazt.zh.l) view.getLayoutParams();
        int alignItems = this.f28450j.getAlignItems();
        if (lVar.a() != -1) {
            alignItems = lVar.a();
        }
        int i6 = jxVar.eb;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f28450j.getFlexWrap() != 2) {
                    int i7 = i3 + i6;
                    view.layout(i2, (i7 - view.getMeasuredHeight()) - lVar.u(), i4, i7 - lVar.u());
                    return;
                } else {
                    view.layout(i2, (i3 - i6) + view.getMeasuredHeight() + lVar.k(), i4, (i5 - i6) + view.getMeasuredHeight() + lVar.k());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i6 - view.getMeasuredHeight()) + lVar.k()) - lVar.u()) / 2;
                if (this.f28450j.getFlexWrap() != 2) {
                    int i8 = i3 + measuredHeight;
                    view.layout(i2, i8, i4, view.getMeasuredHeight() + i8);
                    return;
                } else {
                    int i9 = i3 - measuredHeight;
                    view.layout(i2, i9, i4, view.getMeasuredHeight() + i9);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.f28450j.getFlexWrap() != 2) {
                    int iMax = Math.max(jxVar.jl - view.getBaseline(), lVar.k());
                    view.layout(i2, i3 + iMax, i4, i5 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((jxVar.jl - view.getMeasuredHeight()) + view.getBaseline(), lVar.u());
                    view.layout(i2, i3 - iMax2, i4, i5 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f28450j.getFlexWrap() != 2) {
            view.layout(i2, i3 + lVar.k(), i4, i5 + lVar.k());
        } else {
            view.layout(i2, i3 - lVar.u(), i4, i5 - lVar.u());
        }
    }

    public void hp(View view, jx jxVar, boolean z2, int i2, int i3, int i4, int i5) {
        com.byazt.zh.l lVar = (com.byazt.zh.l) view.getLayoutParams();
        int alignItems = this.f28450j.getAlignItems();
        if (lVar.a() != -1) {
            alignItems = lVar.a();
        }
        int i6 = jxVar.eb;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z2) {
                    view.layout(((i2 + i6) - view.getMeasuredWidth()) - lVar.v(), i3, ((i4 + i6) - view.getMeasuredWidth()) - lVar.v(), i5);
                    return;
                } else {
                    view.layout((i2 - i6) + view.getMeasuredWidth() + lVar.zy(), i3, (i4 - i6) + view.getMeasuredWidth() + lVar.zy(), i5);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i6 - view.getMeasuredWidth()) + a.hp(marginLayoutParams)) - a.l(marginLayoutParams)) / 2;
                if (!z2) {
                    view.layout(i2 + measuredWidth, i3, i4 + measuredWidth, i5);
                    return;
                } else {
                    view.layout(i2 - measuredWidth, i3, i4 - measuredWidth, i5);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z2) {
            view.layout(i2 + lVar.zy(), i3, i4 + lVar.zy(), i5);
        } else {
            view.layout(i2 - lVar.v(), i3, i4 - lVar.v(), i5);
        }
    }

    private void hp(int i2, int i3, int i4, View view) {
        long[] jArr = this.f28451l;
        if (jArr != null) {
            jArr[i2] = l(i3, i4);
        }
        long[] jArr2 = this.f28449a;
        if (jArr2 != null) {
            jArr2[i2] = l(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }
}
