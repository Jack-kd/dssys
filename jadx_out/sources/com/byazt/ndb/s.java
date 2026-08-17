package com.byazt.ndb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 832, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public final class s extends j {
    public final transient byte[][] eb;

    /* renamed from: s, reason: collision with root package name */
    public final transient int[] f23545s;

    public s(hp hpVar, int i2) {
        super(null);
        e.hp(hpVar.f23540l, 0L, i2);
        a aVar = hpVar.hp;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = aVar.jx;
            int i7 = aVar.f23537l;
            if (i6 == i7) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += i6 - i7;
            i5++;
            aVar = aVar.f23535a;
        }
        this.eb = new byte[i5][];
        this.f23545s = new int[i5 * 2];
        a aVar2 = hpVar.hp;
        int i8 = 0;
        while (i3 < i2) {
            byte[][] bArr = this.eb;
            bArr[i8] = aVar2.hp;
            int i9 = aVar2.jx;
            int i10 = aVar2.f23537l;
            i3 += i9 - i10;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.f23545s;
            iArr[i8] = i3;
            iArr[bArr.length + i8] = i10;
            aVar2.f23536j = true;
            i8++;
            aVar2 = aVar2.f23535a;
        }
    }

    private j w() {
        return new j(j());
    }

    @Override // com.byazt.ndb.j
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (jVar.jx() == jx() && hp(0, jVar, 0, jx())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.ndb.j
    public int hashCode() {
        int i2 = this.f23544w;
        if (i2 != 0) {
            return i2;
        }
        int length = this.eb.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.eb[i3];
            int[] iArr = this.f23545s;
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
        this.f23544w = i4;
        return i4;
    }

    @Override // com.byazt.ndb.j
    public String hp() {
        return w().hp();
    }

    @Override // com.byazt.ndb.j
    public byte[] j() {
        int[] iArr = this.f23545s;
        byte[][] bArr = this.eb;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.f23545s;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.eb[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // com.byazt.ndb.j
    public int jx() {
        return this.f23545s[this.eb.length - 1];
    }

    @Override // com.byazt.ndb.j
    public String l() {
        return w().l();
    }

    @Override // com.byazt.ndb.j
    public String toString() {
        return w().toString();
    }

    private int l(int i2) {
        int iBinarySearch = Arrays.binarySearch(this.f23545s, 0, this.eb.length, i2 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.byazt.ndb.j
    public j hp(int i2, int i3) {
        return w().hp(i2, i3);
    }

    @Override // com.byazt.ndb.j
    public byte hp(int i2) {
        e.hp(this.f23545s[this.eb.length - 1], i2, 1L);
        int iL = l(i2);
        int i3 = iL == 0 ? 0 : this.f23545s[iL - 1];
        int[] iArr = this.f23545s;
        byte[][] bArr = this.eb;
        return bArr[iL][(i2 - i3) + iArr[bArr.length + iL]];
    }

    @Override // com.byazt.ndb.j
    public boolean hp(int i2, j jVar, int i3, int i4) {
        if (i2 < 0 || i2 > jx() - i4) {
            return false;
        }
        int iL = l(i2);
        while (i4 > 0) {
            int i5 = iL == 0 ? 0 : this.f23545s[iL - 1];
            int iMin = Math.min(i4, ((this.f23545s[iL] - i5) + i5) - i2);
            int[] iArr = this.f23545s;
            byte[][] bArr = this.eb;
            if (!jVar.hp(i3, bArr[iL], (i2 - i5) + iArr[bArr.length + iL], iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iL++;
        }
        return true;
    }

    @Override // com.byazt.ndb.j
    public boolean hp(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > jx() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int iL = l(i2);
        while (i4 > 0) {
            int i5 = iL == 0 ? 0 : this.f23545s[iL - 1];
            int iMin = Math.min(i4, ((this.f23545s[iL] - i5) + i5) - i2);
            int[] iArr = this.f23545s;
            byte[][] bArr2 = this.eb;
            if (!e.hp(bArr2[iL], (i2 - i5) + iArr[bArr2.length + iL], bArr, i3, iMin)) {
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
