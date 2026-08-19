package com.byazt.zh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.byazt.xa.eb;
import com.byazt.zh.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 754, 1610})
/* loaded from: classes3.dex */
public class FlexboxLayout extends ViewGroup implements com.byazt.zh.hp {

    /* renamed from: a, reason: collision with root package name */
    public int f28432a;

    /* renamed from: e, reason: collision with root package name */
    public int f28433e;
    public Drawable eb;
    public int gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f28434j;
    public int jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public SparseIntArray f28435k;

    /* renamed from: l, reason: collision with root package name */
    public int f28436l;

    /* renamed from: q, reason: collision with root package name */
    public int f28437q;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f28438s;

    /* renamed from: u, reason: collision with root package name */
    public List<jx> f28439u;

    /* renamed from: v, reason: collision with root package name */
    public j f28440v;
    public j.hp vv;

    /* renamed from: w, reason: collision with root package name */
    public int f28441w;
    public com.byazt.zs.j xs;
    public int[] zy;

    @com.byazt.kj.hp(hp = {0, 1, 754, 1682})
    public static class hp extends ViewGroup.MarginLayoutParams implements l {
        public static final Parcelable.Creator<hp> CREATOR = new Parcelable.Creator<hp>() { // from class: com.byazt.zh.FlexboxLayout.hp.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public hp createFromParcel(Parcel parcel) {
                return new hp(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public hp[] newArray(int i2) {
                return new hp[i2];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        public int f28442a;

        /* renamed from: e, reason: collision with root package name */
        public boolean f28443e;
        public int eb;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f28444j;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public float f28445l;

        /* renamed from: q, reason: collision with root package name */
        public int f28446q;

        /* renamed from: s, reason: collision with root package name */
        public int f28447s;

        /* renamed from: w, reason: collision with root package name */
        public float f28448w;

        public hp(hp hpVar) {
            super((ViewGroup.MarginLayoutParams) hpVar);
            this.hp = 1;
            this.f28445l = 0.0f;
            this.jx = 0.0f;
            this.f28444j = -1;
            this.f28448w = -1.0f;
            this.f28442a = -1;
            this.eb = -1;
            this.f28447s = ViewCompat.MEASURED_SIZE_MASK;
            this.f28446q = ViewCompat.MEASURED_SIZE_MASK;
            this.hp = hpVar.hp;
            this.f28445l = hpVar.f28445l;
            this.jx = hpVar.jx;
            this.f28444j = hpVar.f28444j;
            this.f28448w = hpVar.f28448w;
            this.f28442a = hpVar.f28442a;
            this.eb = hpVar.eb;
            this.f28447s = hpVar.f28447s;
            this.f28446q = hpVar.f28446q;
            this.f28443e = hpVar.f28443e;
        }

        @Override // com.byazt.zh.l
        public int a() {
            return this.f28444j;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.byazt.zh.l
        public int e() {
            return this.f28446q;
        }

        @Override // com.byazt.zh.l
        public int eb() {
            return this.f28442a;
        }

        @Override // com.byazt.zh.l
        public boolean gu() {
            return this.f28443e;
        }

        @Override // com.byazt.zh.l
        public int hp() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.byazt.zh.l
        public float j() {
            return this.f28445l;
        }

        @Override // com.byazt.zh.l
        public float jl() {
            return this.f28448w;
        }

        @Override // com.byazt.zh.l
        public int jx() {
            return this.hp;
        }

        @Override // com.byazt.zh.l
        public int k() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.byazt.zh.l
        public int l() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.byazt.zh.l
        public int q() {
            return this.f28447s;
        }

        @Override // com.byazt.zh.l
        public int s() {
            return this.eb;
        }

        @Override // com.byazt.zh.l
        public int u() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.byazt.zh.l
        public int v() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.byazt.zh.l
        public float w() {
            return this.jx;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.hp);
            parcel.writeFloat(this.f28445l);
            parcel.writeFloat(this.jx);
            parcel.writeInt(this.f28444j);
            parcel.writeFloat(this.f28448w);
            parcel.writeInt(this.f28442a);
            parcel.writeInt(this.eb);
            parcel.writeInt(this.f28447s);
            parcel.writeInt(this.f28446q);
            parcel.writeByte(this.f28443e ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        @Override // com.byazt.zh.l
        public int zy() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        public void hp(float f2) {
            this.f28445l = f2;
        }

        public void j(int i2) {
            this.f28444j = i2;
        }

        public void jx(int i2) {
            this.hp = i2;
        }

        public void l(float f2) {
            this.jx = f2;
        }

        @Override // com.byazt.zh.l
        public void hp(int i2) {
            this.f28442a = i2;
        }

        public void jx(float f2) {
            this.f28448w = f2;
        }

        @Override // com.byazt.zh.l
        public void l(int i2) {
            this.eb = i2;
        }

        public hp(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.hp = 1;
            this.f28445l = 0.0f;
            this.jx = 0.0f;
            this.f28444j = -1;
            this.f28448w = -1.0f;
            this.f28442a = -1;
            this.eb = -1;
            this.f28447s = ViewCompat.MEASURED_SIZE_MASK;
            this.f28446q = ViewCompat.MEASURED_SIZE_MASK;
        }

        public hp(int i2, int i3) {
            super(new ViewGroup.LayoutParams(i2, i3));
            this.hp = 1;
            this.f28445l = 0.0f;
            this.jx = 0.0f;
            this.f28444j = -1;
            this.f28448w = -1.0f;
            this.f28442a = -1;
            this.eb = -1;
            this.f28447s = ViewCompat.MEASURED_SIZE_MASK;
            this.f28446q = ViewCompat.MEASURED_SIZE_MASK;
        }

        public hp(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.hp = 1;
            this.f28445l = 0.0f;
            this.jx = 0.0f;
            this.f28444j = -1;
            this.f28448w = -1.0f;
            this.f28442a = -1;
            this.eb = -1;
            this.f28447s = ViewCompat.MEASURED_SIZE_MASK;
            this.f28446q = ViewCompat.MEASURED_SIZE_MASK;
        }

        public hp(Parcel parcel) {
            super(0, 0);
            this.hp = 1;
            this.f28445l = 0.0f;
            this.jx = 0.0f;
            this.f28444j = -1;
            this.f28448w = -1.0f;
            this.f28442a = -1;
            this.eb = -1;
            this.f28447s = ViewCompat.MEASURED_SIZE_MASK;
            this.f28446q = ViewCompat.MEASURED_SIZE_MASK;
            this.hp = parcel.readInt();
            this.f28445l = parcel.readFloat();
            this.jx = parcel.readFloat();
            this.f28444j = parcel.readInt();
            this.f28448w = parcel.readFloat();
            this.f28442a = parcel.readInt();
            this.eb = parcel.readInt();
            this.f28447s = parcel.readInt();
            this.f28446q = parcel.readInt();
            this.f28443e = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public FlexboxLayout(Context context) {
        super(context, null);
        this.f28432a = -1;
        this.f28440v = new j(this);
        this.f28439u = new ArrayList();
        this.vv = new j.hp();
    }

    private boolean a(int i2) {
        if (i2 >= 0 && i2 < this.f28439u.size()) {
            for (int i3 = i2 + 1; i3 < this.f28439u.size(); i3++) {
                if (this.f28439u.get(i3).l() > 0) {
                    return false;
                }
            }
            if (hp()) {
                return (this.f28437q & 4) != 0;
            }
            if ((this.f28433e & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean j(int i2, int i3) {
        return w(i2, i3) ? hp() ? (this.f28433e & 1) != 0 : (this.f28437q & 1) != 0 : hp() ? (this.f28433e & 2) != 0 : (this.f28437q & 2) != 0;
    }

    private boolean w(int i2, int i3) {
        for (int i4 = 1; i4 <= i3; i4++) {
            View viewJx = jx(i2 - i4);
            if (viewJx != null && viewJx.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (this.f28435k == null) {
            this.f28435k = new SparseIntArray(getChildCount());
        }
        this.zy = this.f28440v.hp(view, i2, layoutParams, this.f28435k);
        super.addView(view, i2, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof hp;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof hp ? new hp((hp) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new hp((ViewGroup.MarginLayoutParams) layoutParams) : new hp(layoutParams);
    }

    @Override // com.byazt.zh.hp
    public int getAlignContent() {
        return this.f28441w;
    }

    @Override // com.byazt.zh.hp
    public int getAlignItems() {
        return this.f28434j;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.eb;
    }

    public Drawable getDividerDrawableVertical() {
        return this.f28438s;
    }

    @Override // com.byazt.zh.hp
    public int getFlexDirection() {
        return this.hp;
    }

    @Override // com.byazt.zh.hp
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<jx> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28439u.size());
        for (jx jxVar : this.f28439u) {
            if (jxVar.l() != 0) {
                arrayList.add(jxVar);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.zh.hp
    public List<jx> getFlexLinesInternal() {
        return this.f28439u;
    }

    @Override // com.byazt.zh.hp
    public int getFlexWrap() {
        return this.f28436l;
    }

    public int getJustifyContent() {
        return this.jx;
    }

    @Override // com.byazt.zh.hp
    public int getLargestMainSize() {
        Iterator<jx> it = this.f28439u.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().f28464w);
        }
        return iMax;
    }

    @Override // com.byazt.zh.hp
    public int getMaxLine() {
        return this.f28432a;
    }

    public int getShowDividerHorizontal() {
        return this.f28437q;
    }

    public int getShowDividerVertical() {
        return this.f28433e;
    }

    @Override // com.byazt.zh.hp
    public int getSumOfCrossSize() {
        int size = this.f28439u.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jx jxVar = this.f28439u.get(i3);
            if (j(i3)) {
                i2 += hp() ? this.gu : this.jl;
            }
            if (a(i3)) {
                i2 += hp() ? this.gu : this.jl;
            }
            i2 += jxVar.eb;
        }
        return i2;
    }

    @Override // com.byazt.zh.hp
    public int hp(View view) {
        return 0;
    }

    public View jx(int i2) {
        if (i2 < 0) {
            return null;
        }
        int[] iArr = this.zy;
        if (i2 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i2]);
    }

    @Override // com.byazt.zh.hp
    public View l(int i2) {
        return jx(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            jVar.w();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f28438s == null && this.eb == null) {
            return;
        }
        if (this.f28437q == 0 && this.f28433e == 0) {
            return;
        }
        int iHp = eb.hp(this);
        int i2 = this.hp;
        if (i2 == 0) {
            hp(canvas, iHp == 1, this.f28436l == 2);
            return;
        }
        if (i2 == 1) {
            hp(canvas, iHp != 1, this.f28436l == 2);
            return;
        }
        if (i2 == 2) {
            boolean z2 = iHp == 1;
            if (this.f28436l == 2) {
                z2 = !z2;
            }
            l(canvas, z2, false);
            return;
        }
        if (i2 != 3) {
            return;
        }
        boolean z3 = iHp == 1;
        if (this.f28436l == 2) {
            z3 = !z3;
        }
        l(canvas, z3, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        FlexboxLayout flexboxLayout;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z4;
        FlexboxLayout flexboxLayout2;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z5;
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            jVar.j();
        }
        int iHp = eb.hp(this);
        int i14 = this.hp;
        if (i14 == 0) {
            if (iHp == 1) {
                z3 = true;
                flexboxLayout = this;
                i6 = i2;
                i9 = i3;
                i8 = i5;
                i7 = i4;
            } else {
                z3 = false;
                flexboxLayout = this;
                i6 = i2;
                i7 = i4;
                i8 = i5;
                i9 = i3;
            }
            flexboxLayout.hp(z3, i6, i9, i7, i8);
        } else if (i14 == 1) {
            if (iHp != 1) {
                z4 = true;
                flexboxLayout2 = this;
                i10 = i2;
                i13 = i3;
                i12 = i5;
                i11 = i4;
            } else {
                z4 = false;
                flexboxLayout2 = this;
                i10 = i2;
                i11 = i4;
                i12 = i5;
                i13 = i3;
            }
            flexboxLayout2.hp(z4, i10, i13, i11, i12);
        } else if (i14 == 2) {
            z5 = iHp == 1;
            if (this.f28436l == 2) {
                z5 = !z5;
            }
            hp(z5, false, i2, i3, i4, i5);
        } else {
            if (i14 != 3) {
                throw new IllegalStateException("Invalid flex direction is set: " + this.hp);
            }
            z5 = iHp == 1;
            if (this.f28436l == 2) {
                z5 = !z5;
            }
            hp(z5, true, i2, i3, i4, i5);
        }
        com.byazt.zs.j jVar2 = this.xs;
        if (jVar2 != null) {
            jVar2.hp(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            int[] iArrHp = jVar.hp(i2, i3);
            hp(iArrHp[0], iArrHp[1]);
        } else {
            hp(i2, i3);
        }
        com.byazt.zs.j jVar2 = this.xs;
        if (jVar2 != null) {
            jVar2.jx();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            jVar.l(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        com.byazt.zs.j jVar = this.xs;
        if (jVar != null) {
            jVar.hp(z2);
        }
    }

    public void setAlignContent(int i2) {
        if (this.f28441w != i2) {
            this.f28441w = i2;
            requestLayout();
        }
    }

    public void setAlignItems(int i2) {
        if (this.f28434j != i2) {
            this.f28434j = i2;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.eb) {
            return;
        }
        this.eb = drawable;
        if (drawable != null) {
            this.gu = drawable.getIntrinsicHeight();
        } else {
            this.gu = 0;
        }
        l();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.f28438s) {
            return;
        }
        this.f28438s = drawable;
        if (drawable != null) {
            this.jl = drawable.getIntrinsicWidth();
        } else {
            this.jl = 0;
        }
        l();
        requestLayout();
    }

    public void setFlexDirection(int i2) {
        if (this.hp != i2) {
            this.hp = i2;
            requestLayout();
        }
    }

    @Override // com.byazt.zh.hp
    public void setFlexLines(List<jx> list) {
        this.f28439u = list;
    }

    public void setFlexWrap(int i2) {
        if (this.f28436l != i2) {
            this.f28436l = i2;
            requestLayout();
        }
    }

    public void setJustifyContent(int i2) {
        if (this.jx != i2) {
            this.jx = i2;
            requestLayout();
        }
    }

    public void setMaxLine(int i2) {
        if (this.f28432a != i2) {
            this.f28432a = i2;
            requestLayout();
        }
    }

    public void setShowDivider(int i2) {
        setShowDividerVertical(i2);
        setShowDividerHorizontal(i2);
    }

    public void setShowDividerHorizontal(int i2) {
        if (i2 != this.f28437q) {
            this.f28437q = i2;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i2) {
        if (i2 != this.f28433e) {
            this.f28433e = i2;
            requestLayout();
        }
    }

    private void hp(int i2, int i3) {
        if (this.f28435k == null) {
            this.f28435k = new SparseIntArray(getChildCount());
        }
        if (this.f28440v.l(this.f28435k)) {
            this.zy = this.f28440v.hp(this.f28435k);
        }
        int i4 = this.hp;
        if (i4 == 0 || i4 == 1) {
            l(i2, i3);
        } else if (i4 == 2 || i4 == 3) {
            jx(i2, i3);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.hp);
        }
    }

    private void l(int i2, int i3) {
        this.f28439u.clear();
        this.vv.hp();
        this.f28440v.hp(this.vv, i2, i3);
        this.f28439u = this.vv.hp;
        this.f28440v.hp(i2, i3);
        if (this.f28434j == 3) {
            for (jx jxVar : this.f28439u) {
                int iMax = Integer.MIN_VALUE;
                for (int i4 = 0; i4 < jxVar.f28461s; i4++) {
                    View viewJx = jx(jxVar.f28463v + i4);
                    if (viewJx != null && viewJx.getVisibility() != 8) {
                        hp hpVar = (hp) viewJx.getLayoutParams();
                        iMax = this.f28436l != 2 ? Math.max(iMax, viewJx.getMeasuredHeight() + Math.max(jxVar.jl - viewJx.getBaseline(), ((ViewGroup.MarginLayoutParams) hpVar).topMargin) + ((ViewGroup.MarginLayoutParams) hpVar).bottomMargin) : Math.max(iMax, viewJx.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) hpVar).topMargin + Math.max((jxVar.jl - viewJx.getMeasuredHeight()) + viewJx.getBaseline(), ((ViewGroup.MarginLayoutParams) hpVar).bottomMargin));
                    }
                }
                jxVar.eb = iMax;
            }
        }
        this.f28440v.l(i2, i3, getPaddingTop() + getPaddingBottom());
        this.f28440v.hp();
        hp(this.hp, i2, i3, this.vv.f28453l);
    }

    private void jx(int i2, int i3) {
        this.f28439u.clear();
        this.vv.hp();
        this.f28440v.l(this.vv, i2, i3);
        this.f28439u = this.vv.hp;
        this.f28440v.hp(i2, i3);
        this.f28440v.l(i2, i3, getPaddingLeft() + getPaddingRight());
        this.f28440v.hp();
        hp(this.hp, i2, i3, this.vv.f28453l);
    }

    private boolean w(int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f28439u.get(i3).l() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean j(int i2) {
        if (i2 >= 0 && i2 < this.f28439u.size()) {
            if (w(i2)) {
                return hp() ? (this.f28437q & 1) != 0 : (this.f28433e & 1) != 0;
            }
            if (hp()) {
                return (this.f28437q & 2) != 0;
            }
            if ((this.f28433e & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.zh.hp
    public View hp(int i2) {
        return getChildAt(i2);
    }

    private void hp(int i2, int i3, int i4, int i5) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (i2 == 0 || i2 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i2)));
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i5 = View.combineMeasuredStates(i5, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i3, i5);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i3, i5);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i5 = View.combineMeasuredStates(i5, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i3, i5);
        } else {
            throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i5 = View.combineMeasuredStates(i5, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i4, i5);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i4, i5);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i5 = View.combineMeasuredStates(i5, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i4, i5);
        } else {
            throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void l(Canvas canvas, boolean z2, boolean z3) {
        int i2;
        int i3;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f28439u.size();
        for (int i4 = 0; i4 < size; i4++) {
            jx jxVar = this.f28439u.get(i4);
            for (int i5 = 0; i5 < jxVar.f28461s; i5++) {
                int i6 = jxVar.f28463v + i5;
                View viewJx = jx(i6);
                if (viewJx != null && viewJx.getVisibility() != 8) {
                    hp hpVar = (hp) viewJx.getLayoutParams();
                    if (j(i6, i5)) {
                        if (z3) {
                            top = viewJx.getBottom() + ((ViewGroup.MarginLayoutParams) hpVar).bottomMargin;
                        } else {
                            top = (viewJx.getTop() - ((ViewGroup.MarginLayoutParams) hpVar).topMargin) - this.gu;
                        }
                        l(canvas, jxVar.hp, top, jxVar.eb);
                    }
                    if (i5 == jxVar.f28461s - 1 && (this.f28437q & 4) > 0) {
                        if (z3) {
                            bottom = (viewJx.getTop() - ((ViewGroup.MarginLayoutParams) hpVar).topMargin) - this.gu;
                        } else {
                            bottom = viewJx.getBottom() + ((ViewGroup.MarginLayoutParams) hpVar).bottomMargin;
                        }
                        l(canvas, jxVar.hp, bottom, jxVar.eb);
                    }
                }
            }
            if (j(i4)) {
                if (z2) {
                    i3 = jxVar.jx;
                } else {
                    i3 = jxVar.hp - this.jl;
                }
                hp(canvas, i3, paddingTop, iMax);
            }
            if (a(i4) && (this.f28433e & 4) > 0) {
                if (z2) {
                    i2 = jxVar.hp - this.jl;
                } else {
                    i2 = jxVar.jx;
                }
                hp(canvas, i2, paddingTop, iMax);
            }
        }
    }

    @Override // com.byazt.zh.hp
    public boolean hp() {
        int i2 = this.hp;
        return i2 == 0 || i2 == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(boolean r25, int r26, int r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.FlexboxLayout.hp(boolean, int, int, int, int):void");
    }

    private void l(Canvas canvas, int i2, int i3, int i4) {
        Drawable drawable = this.eb;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i2, i3, i4 + i2, this.gu + i3);
        this.eb.draw(canvas);
    }

    @Override // com.byazt.zh.hp
    public int l(int i2, int i3, int i4) {
        return ViewGroup.getChildMeasureSpec(i2, i3, i4);
    }

    private void l() {
        if (this.eb == null && this.f28438s == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(boolean r25, boolean r26, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.FlexboxLayout.hp(boolean, boolean, int, int, int, int):void");
    }

    private void hp(Canvas canvas, boolean z2, boolean z3) {
        int i2;
        int i3;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f28439u.size();
        for (int i4 = 0; i4 < size; i4++) {
            jx jxVar = this.f28439u.get(i4);
            for (int i5 = 0; i5 < jxVar.f28461s; i5++) {
                int i6 = jxVar.f28463v + i5;
                View viewJx = jx(i6);
                if (viewJx != null && viewJx.getVisibility() != 8) {
                    hp hpVar = (hp) viewJx.getLayoutParams();
                    if (j(i6, i5)) {
                        if (z2) {
                            left = viewJx.getRight() + ((ViewGroup.MarginLayoutParams) hpVar).rightMargin;
                        } else {
                            left = (viewJx.getLeft() - ((ViewGroup.MarginLayoutParams) hpVar).leftMargin) - this.jl;
                        }
                        hp(canvas, left, jxVar.f28459l, jxVar.eb);
                    }
                    if (i5 == jxVar.f28461s - 1 && (this.f28433e & 4) > 0) {
                        if (z2) {
                            right = (viewJx.getLeft() - ((ViewGroup.MarginLayoutParams) hpVar).leftMargin) - this.jl;
                        } else {
                            right = viewJx.getRight() + ((ViewGroup.MarginLayoutParams) hpVar).rightMargin;
                        }
                        hp(canvas, right, jxVar.f28459l, jxVar.eb);
                    }
                }
            }
            if (j(i4)) {
                if (z3) {
                    i3 = jxVar.f28457j;
                } else {
                    i3 = jxVar.f28459l - this.gu;
                }
                l(canvas, paddingLeft, i3, iMax);
            }
            if (a(i4) && (this.f28437q & 4) > 0) {
                if (z3) {
                    i2 = jxVar.f28459l - this.gu;
                } else {
                    i2 = jxVar.f28457j;
                }
                l(canvas, paddingLeft, i2, iMax);
            }
        }
    }

    private void hp(Canvas canvas, int i2, int i3, int i4) {
        Drawable drawable = this.f28438s;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i2, i3, this.jl + i2, i4 + i3);
        this.f28438s.draw(canvas);
    }

    @Override // com.byazt.zh.hp
    public int hp(View view, int i2, int i3) {
        int i4;
        int i5;
        if (hp()) {
            i4 = j(i2, i3) ? this.jl : 0;
            if ((this.f28433e & 4) <= 0) {
                return i4;
            }
            i5 = this.jl;
        } else {
            i4 = j(i2, i3) ? this.gu : 0;
            if ((this.f28437q & 4) <= 0) {
                return i4;
            }
            i5 = this.gu;
        }
        return i4 + i5;
    }

    @Override // com.byazt.zh.hp
    public void hp(jx jxVar) {
        if (hp()) {
            if ((this.f28433e & 4) > 0) {
                int i2 = jxVar.f28464w;
                int i3 = this.jl;
                jxVar.f28464w = i2 + i3;
                jxVar.f28455a += i3;
                return;
            }
            return;
        }
        if ((this.f28437q & 4) > 0) {
            int i4 = jxVar.f28464w;
            int i5 = this.gu;
            jxVar.f28464w = i4 + i5;
            jxVar.f28455a += i5;
        }
    }

    @Override // com.byazt.zh.hp
    public int hp(int i2, int i3, int i4) {
        return ViewGroup.getChildMeasureSpec(i2, i3, i4);
    }

    @Override // com.byazt.zh.hp
    public void hp(View view, int i2, int i3, jx jxVar) {
        if (j(i2, i3)) {
            if (hp()) {
                int i4 = jxVar.f28464w;
                int i5 = this.jl;
                jxVar.f28464w = i4 + i5;
                jxVar.f28455a += i5;
                return;
            }
            int i6 = jxVar.f28464w;
            int i7 = this.gu;
            jxVar.f28464w = i6 + i7;
            jxVar.f28455a += i7;
        }
    }

    public void hp(com.byazt.xs.jx jxVar) {
        this.xs = jxVar;
    }
}
