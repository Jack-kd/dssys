package com.byazt.ds;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.byazt.hm.l;
import com.byazt.kj.hp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@hp(hp = {0, 1, 887, 1139})
/* loaded from: classes2.dex */
public abstract class BaseIndicator extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f19254a;

    /* renamed from: e, reason: collision with root package name */
    public float f19255e;
    public int eb;
    public float gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public List<View> f19256j;
    public String jl;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f19257l;

    /* renamed from: q, reason: collision with root package name */
    public int f19258q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19259s;

    /* renamed from: w, reason: collision with root package name */
    public int f19260w;

    public BaseIndicator(Context context) {
        super(context);
        this.f19260w = SupportMenu.CATEGORY_MASK;
        this.f19254a = -16776961;
        this.eb = 5;
        this.f19257l = 40;
        this.jx = 20;
        this.jl = "row";
        this.hp = context;
        this.f19256j = new ArrayList();
        setOrientation(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        FrameLayout frameLayout = (FrameLayout) getParent();
        if (frameLayout == null) {
            return;
        }
        float width = frameLayout.getWidth();
        float height = frameLayout.getHeight();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        float width2 = getWidth();
        layoutParams.topMargin = (int) (((int) ((height * r5) / 100.0f)) - ((getHeight() * this.gu) / 100.0f));
        layoutParams.leftMargin = (int) (((int) ((width * r0) / 100.0f)) - ((width2 * this.f19255e) / 100.0f));
        setLayoutParams(layoutParams);
    }

    public int getSize() {
        return this.f19256j.size();
    }

    public abstract Drawable l(int i2);

    public void l() {
        View view = new View(getContext());
        view.setClickable(false);
        if (this instanceof DotIndicator) {
            this.jx = this.f19257l;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f19257l, this.jx);
        if (getOrientation() == 1) {
            int i2 = this.eb;
            layoutParams.topMargin = i2;
            layoutParams.bottomMargin = i2;
        } else {
            int i3 = this.eb;
            layoutParams.leftMargin = i3;
            layoutParams.rightMargin = i3;
        }
        addView(view, layoutParams);
        view.setBackground(l(this.f19254a));
        this.f19256j.add(view);
    }

    public void setIndicatorDirection(String str) {
        this.jl = str;
        if (TextUtils.equals(str, "column")) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
    }

    public void setIndicatorHeight(int i2) {
        this.jx = i2;
    }

    public void setIndicatorWidth(int i2) {
        this.f19257l = i2;
    }

    public void setIndicatorX(float f2) {
        this.f19255e = f2;
    }

    public void setIndicatorY(float f2) {
        this.gu = f2;
    }

    public void setLoop(boolean z2) {
        this.f19259s = z2;
    }

    public void setSelectedColor(int i2) {
        this.f19260w = i2;
    }

    public void setUnSelectedColor(int i2) {
        this.f19254a = i2;
    }

    public void hp(int i2, int i3) {
        Iterator<View> it = this.f19256j.iterator();
        while (it.hasNext()) {
            it.next().setBackground(l(this.f19254a));
        }
        if (i2 < 0 || i2 >= this.f19256j.size()) {
            i2 = 0;
        }
        if (this.f19256j.size() > 0) {
            this.f19256j.get(i2).setBackground(l(this.f19260w));
            this.f19258q = i3;
        }
    }

    public void hp() {
        post(new Runnable() { // from class: com.byazt.ds.BaseIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                BaseIndicator.this.jx();
            }
        });
    }

    public void hp(int i2) {
        if (this instanceof DotIndicator) {
            this.jx = this.f19257l;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f19257l, this.jx);
        if (getOrientation() == 1) {
            int i3 = this.eb;
            layoutParams.topMargin = i3;
            layoutParams.bottomMargin = i3;
        } else {
            int i4 = this.eb;
            layoutParams.leftMargin = i4;
            layoutParams.rightMargin = i4;
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.f19257l, this.jx);
        if (getOrientation() == 1) {
            int i5 = this.eb;
            layoutParams2.topMargin = i5;
            layoutParams2.bottomMargin = i5;
        } else {
            int i6 = this.eb;
            layoutParams2.leftMargin = i6;
            layoutParams2.rightMargin = i6;
        }
        int iHp = l.hp(this.f19259s, this.f19258q, this.f19256j.size());
        int iHp2 = l.hp(this.f19259s, i2, this.f19256j.size());
        if (this.f19256j.size() == 0) {
            iHp2 = 0;
        }
        if (!this.f19256j.isEmpty() && l.hp(iHp, this.f19256j) && l.hp(iHp2, this.f19256j)) {
            this.f19256j.get(iHp).setBackground(l(this.f19254a));
            this.f19256j.get(iHp).setLayoutParams(layoutParams2);
            this.f19256j.get(iHp2).setBackground(l(this.f19260w));
            this.f19256j.get(iHp2).setLayoutParams(layoutParams);
            this.f19258q = i2;
        }
    }
}
