package com.byazt.kvo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ConcurrentModificationException;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1099, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w<K, V> {
    public static Object[] hp;

    /* renamed from: j, reason: collision with root package name */
    public static int f22226j;
    public static Object[] jx;

    /* renamed from: l, reason: collision with root package name */
    public static int f22227l;

    /* renamed from: w, reason: collision with root package name */
    public int[] f22229w = l.hp;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f22228a = l.jx;
    public int eb = 0;

    private static int hp(int[] iArr, int i2, int i3) {
        try {
            return l.hp(iArr, i2, i3);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private void j(int i2) {
        if (i2 == 8) {
            synchronized (hp.class) {
                try {
                    Object[] objArr = jx;
                    if (objArr != null) {
                        this.f22228a = objArr;
                        jx = (Object[]) objArr[0];
                        this.f22229w = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f22226j--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i2 == 4) {
            synchronized (hp.class) {
                try {
                    Object[] objArr2 = hp;
                    if (objArr2 != null) {
                        this.f22228a = objArr2;
                        hp = (Object[]) objArr2[0];
                        this.f22229w = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f22227l--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f22229w = new int[i2];
        this.f22228a = new Object[i2 << 1];
    }

    public void clear() {
        int i2 = this.eb;
        if (i2 > 0) {
            int[] iArr = this.f22229w;
            Object[] objArr = this.f22228a;
            this.f22229w = l.hp;
            this.f22228a = l.jx;
            this.eb = 0;
            hp(iArr, objArr, i2);
        }
        if (this.eb > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return hp(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return l(obj) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            if (size() != wVar.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.eb; i2++) {
                try {
                    K kHp = hp(i2);
                    V vL = l(i2);
                    Object obj2 = wVar.get(kHp);
                    if (vL == null) {
                        if (obj2 != null || !wVar.containsKey(kHp)) {
                            return false;
                        }
                    } else if (!vL.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i3 = 0; i3 < this.eb; i3++) {
            try {
                K kHp2 = hp(i3);
                V vL2 = l(i3);
                Object obj3 = map.get(kHp2);
                if (vL2 == null) {
                    if (obj3 != null || !map.containsKey(kHp2)) {
                        return false;
                    }
                } else if (!vL2.equals(obj3)) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused2) {
                return false;
            }
        }
        return true;
    }

    public V get(Object obj) {
        int iHp = hp(obj);
        if (iHp >= 0) {
            return (V) this.f22228a[(iHp << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.f22229w;
        Object[] objArr = this.f22228a;
        int i2 = this.eb;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.eb <= 0;
    }

    public V jx(int i2) {
        Object[] objArr = this.f22228a;
        int i3 = i2 << 1;
        V v2 = (V) objArr[i3 + 1];
        int i4 = this.eb;
        int i5 = 0;
        if (i4 <= 1) {
            hp(this.f22229w, objArr, i4);
            this.f22229w = l.hp;
            this.f22228a = l.jx;
        } else {
            int i6 = i4 - 1;
            int[] iArr = this.f22229w;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    int i8 = i6 - i2;
                    System.arraycopy(iArr, i7, iArr, i2, i8);
                    Object[] objArr2 = this.f22228a;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f22228a;
                int i9 = i6 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                j(i4 > 8 ? i4 + (i4 >> 1) : 8);
                if (i4 != this.eb) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f22229w, 0, i2);
                    System.arraycopy(objArr, 0, this.f22228a, 0, i3);
                }
                if (i2 < i6) {
                    int i10 = i2 + 1;
                    int i11 = i6 - i2;
                    System.arraycopy(iArr, i10, this.f22229w, i2, i11);
                    System.arraycopy(objArr, i10 << 1, this.f22228a, i3, i11 << 1);
                }
            }
            i5 = i6;
        }
        if (i4 != this.eb) {
            throw new ConcurrentModificationException();
        }
        this.eb = i5;
        return v2;
    }

    public int l(Object obj) {
        int i2 = this.eb * 2;
        Object[] objArr = this.f22228a;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public V put(K k2, V v2) {
        int i2;
        int iHp;
        int i3 = this.eb;
        if (k2 == null) {
            iHp = hp();
            i2 = 0;
        } else {
            int iHashCode = k2.hashCode();
            i2 = iHashCode;
            iHp = hp(k2, iHashCode);
        }
        if (iHp >= 0) {
            int i4 = (iHp << 1) + 1;
            Object[] objArr = this.f22228a;
            V v3 = (V) objArr[i4];
            objArr[i4] = v2;
            return v3;
        }
        int i5 = ~iHp;
        int[] iArr = this.f22229w;
        if (i3 >= iArr.length) {
            int i6 = 8;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i6 = 4;
            }
            Object[] objArr2 = this.f22228a;
            j(i6);
            if (i3 != this.eb) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f22229w;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f22228a, 0, objArr2.length);
            }
            hp(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f22229w;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f22228a;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.eb - i5) << 1);
        }
        int i8 = this.eb;
        if (i3 == i8) {
            int[] iArr4 = this.f22229w;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.f22228a;
                int i9 = i5 << 1;
                objArr4[i9] = k2;
                objArr4[i9 + 1] = v2;
                this.eb = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V remove(Object obj) {
        int iHp = hp(obj);
        if (iHp >= 0) {
            return jx(iHp);
        }
        return null;
    }

    public int size() {
        return this.eb;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.eb * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.eb; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K kHp = hp(i2);
            if (kHp != this) {
                sb.append(kHp);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vL = l(i2);
            if (vL != this) {
                sb.append(vL);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public int hp(Object obj, int i2) {
        int i3 = this.eb;
        if (i3 == 0) {
            return -1;
        }
        int iHp = hp(this.f22229w, i3, i2);
        if (iHp < 0 || obj.equals(this.f22228a[iHp << 1])) {
            return iHp;
        }
        int i4 = iHp + 1;
        while (i4 < i3 && this.f22229w[i4] == i2) {
            if (obj.equals(this.f22228a[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iHp - 1; i5 >= 0 && this.f22229w[i5] == i2; i5--) {
            if (obj.equals(this.f22228a[i5 << 1])) {
                return i5;
            }
        }
        return ~i4;
    }

    public V l(int i2) {
        return (V) this.f22228a[(i2 << 1) + 1];
    }

    public int hp() {
        int i2 = this.eb;
        if (i2 == 0) {
            return -1;
        }
        int iHp = hp(this.f22229w, i2, 0);
        if (iHp < 0 || this.f22228a[iHp << 1] == null) {
            return iHp;
        }
        int i3 = iHp + 1;
        while (i3 < i2 && this.f22229w[i3] == 0) {
            if (this.f22228a[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iHp - 1; i4 >= 0 && this.f22229w[i4] == 0; i4--) {
            if (this.f22228a[i4 << 1] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    private static void hp(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (hp.class) {
                try {
                    if (f22226j < 10) {
                        objArr[0] = jx;
                        objArr[1] = iArr;
                        for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        jx = objArr;
                        f22226j++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (hp.class) {
                try {
                    if (f22227l < 10) {
                        objArr[0] = hp;
                        objArr[1] = iArr;
                        for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        hp = objArr;
                        f22227l++;
                    }
                } finally {
                }
            }
        }
    }

    public int hp(Object obj) {
        return obj == null ? hp() : hp(obj, obj.hashCode());
    }

    public K hp(int i2) {
        return (K) this.f22228a[i2 << 1];
    }
}
