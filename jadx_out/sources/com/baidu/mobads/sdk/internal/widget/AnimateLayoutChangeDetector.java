package com.baidu.mobads.sdk.internal.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes2.dex */
final class AnimateLayoutChangeDetector {

    /* renamed from: a, reason: collision with root package name */
    private static final ViewGroup.MarginLayoutParams f11599a;

    /* renamed from: b, reason: collision with root package name */
    private LinearLayoutManager f11600b;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f11599a = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.f11600b = linearLayoutManager;
    }

    private boolean b() {
        int top;
        int i2;
        int bottom;
        int i3;
        int childCount = this.f11600b.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z2 = this.f11600b.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.f11600b.getChildAt(i4);
            if (childAt == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f11599a;
            int[] iArr2 = iArr[i4];
            if (z2) {
                top = childAt.getLeft();
                i2 = marginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                i2 = marginLayoutParams.topMargin;
            }
            iArr2[0] = top - i2;
            int[] iArr3 = iArr[i4];
            if (z2) {
                bottom = childAt.getRight();
                i3 = marginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                i3 = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i3;
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: com.baidu.mobads.sdk.internal.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i5 = 1; i5 < childCount; i5++) {
            if (iArr[i5 - 1][1] != iArr[i5][0]) {
                return false;
            }
        }
        int[] iArr4 = iArr[0];
        int i6 = iArr4[1];
        int i7 = iArr4[0];
        return i7 <= 0 && iArr[childCount - 1][1] >= i6 - i7;
    }

    private boolean c() {
        int childCount = this.f11600b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (a(this.f11600b.getChildAt(i2))) {
                return true;
            }
        }
        return false;
    }

    public boolean a() {
        return (!b() || this.f11600b.getChildCount() <= 1) && c();
    }

    private static boolean a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (a(viewGroup.getChildAt(i2))) {
                    return true;
                }
            }
        }
        return false;
    }
}
