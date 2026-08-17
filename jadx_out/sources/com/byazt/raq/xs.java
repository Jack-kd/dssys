package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 1165, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public final class xs extends a {

    /* renamed from: a, reason: collision with root package name */
    public final transient byte[][] f25120a;
    public final transient int[] eb;

    public xs(jx jxVar, int i2) {
        super(null);
        n.hp(jxVar.f25110l, 0L, i2);
        v vVar = jxVar.hp;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = vVar.jx;
            int i7 = vVar.f25118l;
            if (i6 == i7) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += i6 - i7;
            i5++;
            vVar = vVar.f25116a;
        }
        this.f25120a = new byte[i5][];
        this.eb = new int[i5 * 2];
        v vVar2 = jxVar.hp;
        int i8 = 0;
        while (i3 < i2) {
            byte[][] bArr = this.f25120a;
            bArr[i8] = vVar2.hp;
            int i9 = vVar2.jx;
            int i10 = vVar2.f25118l;
            i3 += i9 - i10;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.eb;
            iArr[i8] = i3;
            iArr[bArr.length + i8] = i10;
            vVar2.f25117j = true;
            i8++;
            vVar2 = vVar2.f25116a;
        }
    }

    private a q() {
        return new a(s());
    }

    @Override // com.byazt.raq.a
    public a a() {
        return q().a();
    }

    @Override // com.byazt.raq.a
    public int eb() {
        return this.eb[this.f25120a.length - 1];
    }

    @Override // com.byazt.raq.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.eb() == eb() && hp(0, aVar, 0, eb())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.raq.a
    public int hashCode() {
        int i2 = this.f25094j;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f25120a.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.f25120a[i3];
            int[] iArr = this.eb;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.f25094j = i4;
        return i4;
    }

    @Override // com.byazt.raq.a
    public String hp() {
        return q().hp();
    }

    @Override // com.byazt.raq.a
    public a j() {
        return q().j();
    }

    @Override // com.byazt.raq.a
    public a jx() {
        return q().jx();
    }

    @Override // com.byazt.raq.a
    public String l() {
        return q().l();
    }

    @Override // com.byazt.raq.a
    public byte[] s() {
        int[] iArr = this.eb;
        byte[][] bArr = this.f25120a;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.eb;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.f25120a[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // com.byazt.raq.a
    public String toString() {
        return q().toString();
    }

    @Override // com.byazt.raq.a
    public String w() {
        return q().w();
    }

    private int l(int i2) {
        int iBinarySearch = Arrays.binarySearch(this.eb, 0, this.f25120a.length, i2 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.byazt.raq.a
    public a hp(int i2, int i3) {
        return q().hp(i2, i3);
    }

    @Override // com.byazt.raq.a
    public byte hp(int i2) {
        n.hp(this.eb[this.f25120a.length - 1], i2, 1L);
        int iL = l(i2);
        int i3 = iL == 0 ? 0 : this.eb[iL - 1];
        int[] iArr = this.eb;
        byte[][] bArr = this.f25120a;
        return bArr[iL][(i2 - i3) + iArr[bArr.length + iL]];
    }

    @Override // com.byazt.raq.a
    public void hp(jx jxVar) {
        int length = this.f25120a.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.eb;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            v vVar = new v(this.f25120a[i2], i4, (i4 + i5) - i3, true, false);
            v vVar2 = jxVar.hp;
            if (vVar2 == null) {
                vVar.eb = vVar;
                vVar.f25116a = vVar;
                jxVar.hp = vVar;
            } else {
                vVar2.eb.hp(vVar);
            }
            i2++;
            i3 = i5;
        }
        jxVar.f25110l += i3;
    }

    @Override // com.byazt.raq.a
    public boolean hp(int i2, a aVar, int i3, int i4) {
        if (i2 < 0 || i2 > eb() - i4) {
            return false;
        }
        int iL = l(i2);
        while (i4 > 0) {
            int i5 = iL == 0 ? 0 : this.eb[iL - 1];
            int iMin = Math.min(i4, ((this.eb[iL] - i5) + i5) - i2);
            int[] iArr = this.eb;
            byte[][] bArr = this.f25120a;
            if (!aVar.hp(i3, bArr[iL], (i2 - i5) + iArr[bArr.length + iL], iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iL++;
        }
        return true;
    }

    @Override // com.byazt.raq.a
    public boolean hp(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > eb() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int iL = l(i2);
        while (i4 > 0) {
            int i5 = iL == 0 ? 0 : this.eb[iL - 1];
            int iMin = Math.min(i4, ((this.eb[iL] - i5) + i5) - i2);
            int[] iArr = this.eb;
            byte[][] bArr2 = this.f25120a;
            if (!n.hp(bArr2[iL], (i2 - i5) + iArr[bArr2.length + iL], bArr, i3, iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iL++;
        }
        return true;
    }
}
