package com.sigmob.sdk.base.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* renamed from: com.sigmob.sdk.base.utils.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1287a {

    /* renamed from: a, reason: collision with root package name */
    private int f36573a;

    /* renamed from: b, reason: collision with root package name */
    private final View f36574b;

    /* renamed from: c, reason: collision with root package name */
    private final ViewGroup.LayoutParams f36575c;

    private C1287a(View view) {
        this.f36574b = view;
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.utils.z
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f36659b.a();
            }
        });
        this.f36575c = view.getLayoutParams();
    }

    private int b() {
        Rect rect = new Rect();
        this.f36574b.getWindowVisibleDisplayFrame(rect);
        return rect.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int iB = b();
        if (iB == this.f36573a) {
            return;
        }
        this.f36575c.height = iB;
        this.f36574b.requestLayout();
        this.f36573a = iB;
    }

    public static void a(View view) {
        new C1287a(view);
    }

    @SuppressLint({"LongLogTag", "PrivateApi"})
    public static boolean a(Context context) throws ClassNotFoundException {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z2 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if ("1".equals(str)) {
                return false;
            }
            if ("0".equals(str)) {
                return true;
            }
            return z2;
        } catch (Exception unused) {
            return z2;
        }
    }
}
