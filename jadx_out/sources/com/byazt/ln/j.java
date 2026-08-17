package com.byazt.ln;

import android.view.View;
import android.view.ViewParent;

@com.byazt.kj.hp(hp = {0, 1, 1423, 38})
/* loaded from: classes3.dex */
public class j {
    public ViewParent hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f22665j;
    public final View jx;

    /* renamed from: l, reason: collision with root package name */
    public ViewParent f22666l;

    /* renamed from: w, reason: collision with root package name */
    public int[] f22667w;

    public j(View view) {
        this.jx = view;
    }

    private ViewParent j(int i2) {
        if (i2 == 0) {
            return this.hp;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f22666l;
    }

    public void hp(boolean z2) {
        if (this.f22665j) {
            eb.e(this.jx);
        }
        this.f22665j = z2;
    }

    public void jx() {
        jx(0);
    }

    public boolean l() {
        return hp(0);
    }

    public void jx(int i2) {
        ViewParent viewParentJ = j(i2);
        if (viewParentJ != null) {
            s.hp(viewParentJ, this.jx, i2);
            hp(i2, (ViewParent) null);
        }
    }

    public boolean l(int i2) {
        return hp(i2, 0);
    }

    public boolean hp() {
        return this.f22665j;
    }

    public boolean hp(int i2) {
        return j(i2) != null;
    }

    public boolean hp(int i2, int i3) {
        if (hp(i3)) {
            return true;
        }
        if (!hp()) {
            return false;
        }
        View view = this.jx;
        for (ViewParent parent = this.jx.getParent(); parent != null; parent = parent.getParent()) {
            if (s.hp(parent, view, this.jx, i2, i3)) {
                hp(i3, parent);
                s.l(parent, view, this.jx, i2, i3);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public boolean hp(int i2, int i3, int i4, int i5, int[] iArr) {
        return hp(i2, i3, i4, i5, iArr, 0);
    }

    public boolean hp(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        ViewParent viewParentJ;
        int i7;
        int i8;
        if (!hp() || (viewParentJ = j(i6)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.jx.getLocationInWindow(iArr);
            i7 = iArr[0];
            i8 = iArr[1];
        } else {
            i7 = 0;
            i8 = 0;
        }
        s.hp(viewParentJ, this.jx, i2, i3, i4, i5, i6);
        if (iArr != null) {
            this.jx.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i8;
        }
        return true;
    }

    public boolean hp(int i2, int i3, int[] iArr, int[] iArr2) {
        return hp(i2, i3, iArr, iArr2, 0);
    }

    public boolean hp(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        ViewParent viewParentJ;
        int i5;
        int i6;
        if (!hp() || (viewParentJ = j(i4)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.jx.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i6 = iArr2[1];
        } else {
            i5 = 0;
            i6 = 0;
        }
        if (iArr == null) {
            if (this.f22667w == null) {
                this.f22667w = new int[2];
            }
            iArr = this.f22667w;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        s.hp(viewParentJ, this.jx, i2, i3, iArr3, i4);
        if (iArr2 != null) {
            this.jx.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i6;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public boolean hp(float f2, float f3, boolean z2) {
        ViewParent viewParentJ;
        if (!hp() || (viewParentJ = j(0)) == null) {
            return false;
        }
        return s.hp(viewParentJ, this.jx, f2, f3, z2);
    }

    public boolean hp(float f2, float f3) {
        ViewParent viewParentJ;
        if (!hp() || (viewParentJ = j(0)) == null) {
            return false;
        }
        return s.hp(viewParentJ, this.jx, f2, f3);
    }

    private void hp(int i2, ViewParent viewParent) {
        if (i2 == 0) {
            this.hp = viewParent;
        } else {
            if (i2 != 1) {
                return;
            }
            this.f22666l = viewParent;
        }
    }
}
