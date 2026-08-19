package com.ubix.ssp.ad.e.a0.y.e;

import android.annotation.SuppressLint;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes5.dex */
public class d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private long f46547a;

    /* renamed from: b, reason: collision with root package name */
    private String f46548b;

    /* renamed from: c, reason: collision with root package name */
    private String f46549c;

    /* renamed from: d, reason: collision with root package name */
    private String f46550d;

    /* renamed from: e, reason: collision with root package name */
    private float f46551e;

    /* renamed from: f, reason: collision with root package name */
    private int f46552f;

    /* renamed from: g, reason: collision with root package name */
    private int f46553g;

    /* renamed from: h, reason: collision with root package name */
    private int f46554h;

    /* renamed from: i, reason: collision with root package name */
    private double f46555i;

    /* renamed from: j, reason: collision with root package name */
    private int f46556j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f46557k;

    /* renamed from: l, reason: collision with root package name */
    private List<com.ubix.ssp.ad.e.a0.y.e.f.b> f46558l;

    /* renamed from: m, reason: collision with root package name */
    Set<String> f46559m;

    public d(View view) {
        Rect rectA;
        this.f46557k = false;
        this.f46558l = null;
        this.f46559m = null;
        try {
            this.f46547a = System.currentTimeMillis();
            this.f46558l = new ArrayList();
            this.f46559m = new HashSet();
            this.f46548b = view.getWidth() + "x" + view.getHeight();
            Rect rectA2 = e.a(view);
            Point point = new Point();
            point.x = rectA2.left;
            point.y = rectA2.top;
            this.f46549c = point.x + "x" + point.y;
            if (!a(view) && (rectA = a(view, rectA2)) != null) {
                rectA2 = rectA;
            }
            this.f46551e = view.getAlpha();
            this.f46552f = view.isShown() ? 1 : 0;
            Rect rectA3 = e.a(view.getContext());
            Rect rect = new Rect();
            rect.setIntersect(rectA2, rectA3);
            this.f46550d = Math.abs(rect.right - rect.left) + "x" + Math.abs(rect.bottom - rect.top);
            boolean zC = c(view);
            this.f46557k = zC;
            if (zC) {
                e(view);
                double dA = this.f46558l.size() > 0 ? new com.ubix.ssp.ad.e.a0.y.e.f.a().a(this.f46558l) : 0.0d;
                view.getGlobalVisibleRect(new Rect());
                double width = view.getWidth() * view.getHeight();
                this.f46555i = Math.round(((dA + (width - ((r0.right - r0.left) * (r0.bottom - r0.top)))) / width) * 100.0d) / 100.0d;
            } else {
                this.f46555i = 1.0d;
            }
            this.f46553g = e.b(view) ? 1 : 0;
            this.f46554h = view.hasWindowFocus() ? 1 : 0;
            view.getLocalVisibleRect(new Rect());
            this.f46558l = null;
            this.f46559m = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private int a(View view, ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        int i2 = 0;
        while (i2 < childCount && viewGroup.getChildAt(i2) != view) {
            i2++;
        }
        return i2;
    }

    private boolean b(View view) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (view.getVisibility() != 0) {
            return false;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getBackground() != null) {
                if (viewGroup.getChildCount() < 1) {
                }
            }
            return false;
        }
        return view.getAlpha() > 0.1f;
    }

    private boolean c(View view) {
        return view.getGlobalVisibleRect(new Rect(), new Point());
    }

    private boolean d(View view) {
        return view.getGlobalVisibleRect(new Rect()) && b(view);
    }

    private void e(View view) {
        View view2 = view;
        while (view2.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iA = a(view2, viewGroup);
            int childCount = viewGroup.getChildCount();
            while (true) {
                iA++;
                if (iA < childCount) {
                    View childAt = viewGroup.getChildAt(iA);
                    boolean zD = d(childAt);
                    if (zD) {
                        a(view, childAt);
                        if (childAt instanceof ViewGroup) {
                            a(view, (ViewGroup) childAt, this.f46559m);
                        }
                    } else {
                        this.f46557k = zD;
                    }
                }
            }
            view2 = viewGroup;
        }
    }

    public String toString() {
        return "[ 2t=" + this.f46547a + ",2k=" + this.f46548b + ",2d=" + this.f46549c + ",2o=" + this.f46550d + ",2n=" + this.f46555i + ",2l=" + this.f46551e + ",2m=" + this.f46552f + ",2r=" + this.f46553g + ",2s=" + this.f46554h + "]";
    }

    @SuppressLint({"NewApi"})
    private Rect a(View view, Rect rect) {
        while (view.getParent() instanceof ViewGroup) {
            try {
                view = (ViewGroup) view.getParent();
                Rect rect2 = new Rect();
                view.getGlobalVisibleRect(rect2);
                ViewGroup viewGroup = view.getParent() instanceof ViewGroup ? (ViewGroup) view.getParent() : null;
                if (viewGroup != null ? viewGroup.getClipChildren() : false) {
                    Rect rect3 = new Rect();
                    rect3.setIntersect(rect, rect2);
                    rect = rect3;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return rect;
            }
        }
        return rect;
    }

    private void a(Rect rect, Rect rect2) {
        int iMax = Math.max(rect.left, rect2.left);
        int iMax2 = Math.max(rect.top, rect2.top);
        int iMin = Math.min(rect.right, rect2.right);
        int iMin2 = Math.min(rect.bottom, rect2.bottom);
        this.f46559m.add(iMax + "X" + iMax2 + "X" + Math.abs(iMin - iMax) + "X" + Math.abs(iMin2 - iMax2));
        Rect rect3 = new Rect();
        rect3.setIntersect(rect, rect2);
        com.ubix.ssp.ad.e.a0.y.e.f.b bVar = new com.ubix.ssp.ad.e.a0.y.e.f.b();
        bVar.f46582a = (double) rect3.left;
        bVar.f46583b = (double) rect3.top;
        bVar.f46584c = (double) rect3.right;
        bVar.f46585d = (double) rect3.bottom;
        this.f46558l.add(bVar);
    }

    @SuppressLint({"NewApi"})
    private void a(View view, View view2) {
        int paddingLeft;
        int paddingTop;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        Point point = new Point();
        view2.getGlobalVisibleRect(rect2, point);
        if (!((!(view2.getParent() instanceof ViewGroup) || (viewGroup = (ViewGroup) view2.getParent()) == null || !(viewGroup.getParent() instanceof ViewGroup) || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null) ? true : viewGroup2.getClipChildren())) {
            rect2.left = point.x;
            rect2.top = point.y;
        }
        if (view2.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup3 = (ViewGroup) view2.getParent();
            paddingLeft = viewGroup3.getPaddingLeft();
            paddingTop = viewGroup3.getPaddingTop();
        } else {
            paddingLeft = 0;
            paddingTop = 0;
        }
        if (paddingLeft != 0 || paddingTop != 0) {
            Rect rect3 = new Rect();
            view2.getLocalVisibleRect(rect3);
            rect2.left += rect3.left + paddingLeft;
            rect2.top += rect3.top + paddingTop;
        }
        if (Rect.intersects(rect, rect2)) {
            a(rect, rect2);
        }
    }

    public void a(View view, ViewGroup viewGroup, Set<String> set) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (d(childAt)) {
                a(view, childAt);
                if (childAt instanceof ViewGroup) {
                    a(view, (ViewGroup) childAt, set);
                }
            }
        }
    }

    public boolean a(float f2) {
        if (this.f46555i <= f2 && this.f46552f == 1 && this.f46551e > 0.001d && this.f46553g == 1 && this.f46554h == 1) {
            this.f46556j = 1;
        } else {
            this.f46556j = 0;
        }
        return this.f46556j == 1;
    }

    private boolean a(View view) {
        Rect rect;
        try {
            rect = new Rect();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return view.getGlobalVisibleRect(rect, new Point()) && (rect.bottom - rect.top >= view.getMeasuredHeight()) && (rect.right - rect.left >= view.getMeasuredWidth());
    }
}
