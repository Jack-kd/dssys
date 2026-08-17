package com.byazt.gjx;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.byakv.z.SoftDecTool;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 737, 28})
/* loaded from: classes2.dex */
public class hp extends View.AccessibilityDelegate {

    /* renamed from: l, reason: collision with root package name */
    public static Field f20477l;

    /* renamed from: a, reason: collision with root package name */
    public View.AccessibilityDelegate f20479a;
    public View eb;
    public static hp hp = new hp(null, null);
    public static int jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public static String f20476j = "";

    /* renamed from: w, reason: collision with root package name */
    public static Set<Integer> f20478w = new HashSet();

    static {
        f20477l = null;
        if (Build.VERSION.SDK_INT < 29) {
            try {
                Field declaredField = Class.forName("android.view.View").getDeclaredField("mAccessibilityDelegate");
                declaredField.setAccessible(true);
                f20477l = declaredField;
            } catch (Throwable unused) {
            }
        }
    }

    public hp(View.AccessibilityDelegate accessibilityDelegate, View view) {
        this.f20479a = accessibilityDelegate;
        this.eb = view;
        SoftDecTool.f17942h = true;
    }

    public static void hp(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        Field field;
        if (f20478w.contains(Integer.valueOf(view.hashCode()))) {
            return;
        }
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 29) {
            accessibilityDelegate = view.getAccessibilityDelegate();
        } else {
            try {
                field = f20477l;
            } catch (Throwable unused) {
            }
            if (field != null) {
                accessibilityDelegate = (View.AccessibilityDelegate) field.get(view);
            } else {
                z2 = false;
                accessibilityDelegate = null;
            }
        }
        if (!(accessibilityDelegate instanceof hp) && z2) {
            view.setAccessibilityDelegate(new hp(accessibilityDelegate, view));
            f20478w.add(Integer.valueOf(view.hashCode()));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public void addExtraDataToAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                } else {
                    super.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                }
            } catch (Throwable unused) {
            }
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
        boolean zDispatchPopulateAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        view.setAccessibilityDelegate(this);
        return zDispatchPopulateAccessibilityEvent;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable unused) {
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        SoftDecTool.f17941f = true;
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            } else {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }
        } catch (Throwable unused) {
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        if (hp()) {
            return;
        }
        view.setAccessibilityDelegate(this.f20479a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable unused) {
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        viewGroup.setAccessibilityDelegate(this.f20479a);
        View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
        boolean zOnRequestSendAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        viewGroup.setAccessibilityDelegate(this);
        return zOnRequestSendAccessibilityEvent;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        SoftDecTool.f17940a = true;
        view.setAccessibilityDelegate(this.f20479a);
        View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
        boolean zPerformAccessibilityAction = accessibilityDelegate != null ? accessibilityDelegate.performAccessibilityAction(view, i2, bundle) : super.performAccessibilityAction(view, i2, bundle);
        view.setAccessibilityDelegate(this);
        return zPerformAccessibilityAction;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i2) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEvent(view, i2);
            } else {
                super.sendAccessibilityEvent(view, i2);
            }
        } catch (Throwable unused) {
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        jx = hashCode();
        f20476j = String.valueOf(this.f20479a);
        view.setAccessibilityDelegate(this.f20479a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f20479a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        } catch (Throwable unused) {
        }
        view.setAccessibilityDelegate(this);
    }

    public boolean hp() {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4 || (stackTraceElement = stackTrace[3]) == null) {
            return false;
        }
        for (int i2 = 4; i2 < stackTrace.length; i2++) {
            if (stackTrace[i2] != null && stackTraceElement.getMethodName().equals(stackTrace[i2].getMethodName()) && stackTraceElement.getClassName().equals(stackTrace[i2].getClassName())) {
                return true;
            }
        }
        return false;
    }
}
