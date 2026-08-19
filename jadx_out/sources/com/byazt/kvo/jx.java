package com.byazt.kvo;

@com.byazt.kj.hp(hp = {0, 1, 1099, 30})
/* loaded from: classes.dex */
public class jx<E> implements Cloneable {
    public static final Object hp = new Object();

    /* renamed from: j, reason: collision with root package name */
    public Object[] f22222j;
    public long[] jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f22223l;

    /* renamed from: w, reason: collision with root package name */
    public int f22224w;

    public jx() {
        this(10);
    }

    private void j() {
        int i2 = this.f22224w;
        long[] jArr = this.jx;
        Object[] objArr = this.f22222j;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != hp) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f22223l = false;
        this.f22224w = i3;
    }

    public void delete(long j2) {
        int iHp = l.hp(this.jx, this.f22224w, j2);
        if (iHp >= 0) {
            Object[] objArr = this.f22222j;
            Object obj = objArr[iHp];
            Object obj2 = hp;
            if (obj != obj2) {
                objArr[iHp] = obj2;
                this.f22223l = true;
            }
        }
    }

    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public jx<E> clone() {
        try {
            jx<E> jxVar = (jx) super.clone();
            jxVar.jx = (long[]) this.jx.clone();
            jxVar.f22222j = (Object[]) this.f22222j.clone();
            return jxVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E jx(int i2) {
        if (this.f22223l) {
            j();
        }
        return (E) this.f22222j[i2];
    }

    public void l(long j2, E e2) {
        int iHp = l.hp(this.jx, this.f22224w, j2);
        if (iHp >= 0) {
            this.f22222j[iHp] = e2;
            return;
        }
        int i2 = ~iHp;
        int i3 = this.f22224w;
        if (i2 < i3) {
            Object[] objArr = this.f22222j;
            if (objArr[i2] == hp) {
                this.jx[i2] = j2;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.f22223l && i3 >= this.jx.length) {
            j();
            i2 = ~l.hp(this.jx, this.f22224w, j2);
        }
        int i4 = this.f22224w;
        if (i4 >= this.jx.length) {
            int iHp2 = l.hp(i4 + 1);
            long[] jArr = new long[iHp2];
            Object[] objArr2 = new Object[iHp2];
            long[] jArr2 = this.jx;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f22222j;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.jx = jArr;
            this.f22222j = objArr2;
        }
        int i5 = this.f22224w;
        if (i5 - i2 != 0) {
            long[] jArr3 = this.jx;
            int i6 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i6, i5 - i2);
            Object[] objArr4 = this.f22222j;
            System.arraycopy(objArr4, i2, objArr4, i6, this.f22224w - i2);
        }
        this.jx[i2] = j2;
        this.f22222j[i2] = e2;
        this.f22224w++;
    }

    public String toString() {
        if (l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f22224w * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f22224w; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(l(i2));
            sb.append('=');
            E eJx = jx(i2);
            if (eJx != this) {
                sb.append(eJx);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public jx(int i2) {
        this.f22223l = false;
        if (i2 == 0) {
            this.jx = l.f22225l;
            this.f22222j = l.jx;
        } else {
            int iHp = l.hp(i2);
            this.jx = new long[iHp];
            this.f22222j = new Object[iHp];
        }
        this.f22224w = 0;
    }

    public void jx() {
        int i2 = this.f22224w;
        Object[] objArr = this.f22222j;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f22224w = 0;
        this.f22223l = false;
    }

    public E hp(long j2) {
        return hp(j2, null);
    }

    public E hp(long j2, E e2) {
        E e3;
        int iHp = l.hp(this.jx, this.f22224w, j2);
        return (iHp < 0 || (e3 = (E) this.f22222j[iHp]) == hp) ? e2 : e3;
    }

    public void hp(int i2) {
        Object[] objArr = this.f22222j;
        Object obj = objArr[i2];
        Object obj2 = hp;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f22223l = true;
        }
    }

    public int l() {
        if (this.f22223l) {
            j();
        }
        return this.f22224w;
    }

    public long l(int i2) {
        if (this.f22223l) {
            j();
        }
        return this.jx[i2];
    }
}
