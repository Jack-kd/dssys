package com.anythink.core.common.inner.ui.thirdparty;

import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.j;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5283a = "Y29tLmh1YXdlaS5vcGVuYWxsaWFuY2UuYWQudmlld3MuVmlkZW9WaWV3";

    private static void a(View view, String str) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt != null && childAt.getClass().getName().equals(str)) {
                    a(childAt);
                    return;
                }
                a(childAt, str);
            }
        }
    }

    private static void b(View view) {
        a(view, j.b(f5283a));
    }

    private static void c(View view) {
        d(view);
    }

    private static void d(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                a(childAt);
                d(childAt);
            }
        }
    }

    public static void a(final View view) {
        if (view != null) {
            s.b();
            s.b(new Runnable() { // from class: com.anythink.core.common.inner.ui.thirdparty.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    View view2 = view;
                    if (view2 != null) {
                        view2.setClickable(false);
                        view.setEnabled(false);
                    }
                }
            });
        }
    }
}
