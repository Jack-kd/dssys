package com.sigmob.sdk.base.utils;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public static final int f36625a = -1728053248;

    /* renamed from: b, reason: collision with root package name */
    private static String f36626b;

    /* renamed from: c, reason: collision with root package name */
    private final a f36627c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f36628d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f36629e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f36630f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f36631g;

    /* renamed from: h, reason: collision with root package name */
    private View f36632h;

    /* renamed from: i, reason: collision with root package name */
    private View f36633i;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final String f36634a = "status_bar_height";

        /* renamed from: b, reason: collision with root package name */
        private static final String f36635b = "navigation_bar_height";

        /* renamed from: c, reason: collision with root package name */
        private static final String f36636c = "navigation_bar_height_landscape";

        /* renamed from: d, reason: collision with root package name */
        private static final String f36637d = "navigation_bar_width";

        /* renamed from: e, reason: collision with root package name */
        private static final String f36638e = "config_showNavigationBar";

        /* renamed from: f, reason: collision with root package name */
        private final boolean f36639f;

        /* renamed from: g, reason: collision with root package name */
        private final boolean f36640g;

        /* renamed from: h, reason: collision with root package name */
        private final int f36641h;

        /* renamed from: i, reason: collision with root package name */
        private final int f36642i;

        /* renamed from: j, reason: collision with root package name */
        private final boolean f36643j;

        /* renamed from: k, reason: collision with root package name */
        private final int f36644k;

        /* renamed from: l, reason: collision with root package name */
        private final int f36645l;

        /* renamed from: m, reason: collision with root package name */
        private final boolean f36646m;

        /* renamed from: n, reason: collision with root package name */
        private final float f36647n;

        private a(Activity activity, boolean z2, boolean z3) {
            Resources resources = activity.getResources();
            this.f36646m = resources.getConfiguration().orientation == 1;
            this.f36647n = a(activity);
            this.f36641h = a(resources, f36634a);
            this.f36642i = a((Context) activity);
            int iB = b(activity);
            this.f36644k = iB;
            this.f36645l = c(activity);
            this.f36643j = iB > 0;
            this.f36639f = z2;
            this.f36640g = z3;
        }

        @SuppressLint({"NewApi"})
        private float a(Activity activity) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            float f2 = displayMetrics.widthPixels;
            float f3 = displayMetrics.density;
            return Math.min(f2 / f3, displayMetrics.heightPixels / f3);
        }

        public int b() {
            return this.f36641h;
        }

        public int c() {
            return this.f36642i;
        }

        public boolean d() {
            return this.f36643j;
        }

        public int e() {
            return this.f36644k;
        }

        public int f() {
            return this.f36645l;
        }

        public int g() {
            if (this.f36640g && a()) {
                return this.f36644k;
            }
            return 0;
        }

        public int h() {
            if (!this.f36640g || a()) {
                return 0;
            }
            return this.f36645l;
        }

        @TargetApi(14)
        private int a(Context context) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }

        @TargetApi(14)
        private int b(Context context) {
            Resources resources = context.getResources();
            if (d(context)) {
                return a(resources, this.f36646m ? f36635b : f36636c);
            }
            return 0;
        }

        @TargetApi(14)
        private int c(Context context) {
            Resources resources = context.getResources();
            if (d(context)) {
                return a(resources, f36637d);
            }
            return 0;
        }

        @TargetApi(14)
        private boolean d(Context context) throws Resources.NotFoundException {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier(f36638e, "bool", "android");
            if (identifier == 0) {
                return !ViewConfiguration.get(context).hasPermanentMenuKey();
            }
            boolean z2 = resources.getBoolean(identifier);
            if ("1".equals(r.f36626b)) {
                return false;
            }
            if ("0".equals(r.f36626b)) {
                return true;
            }
            return z2;
        }

        private int a(Resources resources, String str) {
            int identifier = resources.getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                return resources.getDimensionPixelSize(identifier);
            }
            return 0;
        }

        public int a(boolean z2) {
            return (this.f36639f ? this.f36641h : 0) + (z2 ? this.f36642i : 0);
        }

        public boolean a() {
            return this.f36647n >= 600.0f || this.f36646m;
        }
    }

    static {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            f36626b = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            f36626b = null;
        }
    }

    @TargetApi(19)
    public r(Activity activity) {
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.windowTranslucentStatus, R.attr.windowTranslucentNavigation});
        try {
            this.f36628d = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f36629e = typedArrayObtainStyledAttributes.getBoolean(1, false);
            typedArrayObtainStyledAttributes.recycle();
            int i2 = window.getAttributes().flags;
            if ((67108864 & i2) != 0) {
                this.f36628d = true;
            }
            if ((i2 & 134217728) != 0) {
                this.f36629e = true;
            }
            a aVar = new a(activity, this.f36628d, this.f36629e);
            this.f36627c = aVar;
            if (!aVar.d()) {
                this.f36629e = false;
            }
            if (this.f36628d) {
                a(activity, viewGroup);
            }
            if (this.f36629e) {
                b(activity, viewGroup);
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public a a() {
        return this.f36627c;
    }

    @TargetApi(11)
    public void b(float f2) {
        if (this.f36628d) {
            this.f36632h.setAlpha(f2);
        }
    }

    @TargetApi(11)
    public void c(float f2) {
        if (this.f36629e) {
            this.f36633i.setAlpha(f2);
        }
    }

    public void e(int i2) {
        if (this.f36629e) {
            this.f36633i.setBackgroundColor(i2);
        }
    }

    public void f(int i2) {
        if (this.f36629e) {
            this.f36633i.setBackgroundResource(i2);
        }
    }

    public void a(float f2) {
        b(f2);
        c(f2);
    }

    public void b(int i2) {
        d(i2);
        f(i2);
    }

    public void c(int i2) {
        if (this.f36628d) {
            this.f36632h.setBackgroundColor(i2);
        }
    }

    public void d(int i2) {
        if (this.f36628d) {
            this.f36632h.setBackgroundResource(i2);
        }
    }

    private void b(Context context, ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        int i2;
        this.f36633i = new View(context);
        if (this.f36627c.a()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f36627c.e());
            i2 = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f36627c.f(), -1);
            i2 = GravityCompat.END;
        }
        layoutParams.gravity = i2;
        this.f36633i.setLayoutParams(layoutParams);
        this.f36633i.setBackgroundColor(f36625a);
        this.f36633i.setVisibility(8);
        viewGroup.addView(this.f36633i);
    }

    public void a(int i2) {
        c(i2);
        e(i2);
    }

    public void c(Drawable drawable) {
        if (this.f36629e) {
            this.f36633i.setBackgroundDrawable(drawable);
        }
    }

    private void a(Context context, ViewGroup viewGroup) {
        this.f36632h = new View(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f36627c.b());
        layoutParams.gravity = 48;
        if (this.f36629e && !this.f36627c.a()) {
            layoutParams.rightMargin = this.f36627c.f();
        }
        this.f36632h.setLayoutParams(layoutParams);
        this.f36632h.setBackgroundColor(f36625a);
        this.f36632h.setVisibility(8);
        viewGroup.addView(this.f36632h);
    }

    public void b(Drawable drawable) {
        if (this.f36628d) {
            this.f36632h.setBackgroundDrawable(drawable);
        }
    }

    public boolean c() {
        return this.f36631g;
    }

    public void a(Drawable drawable) {
        b(drawable);
        c(drawable);
    }

    public void b(boolean z2) {
        this.f36631g = z2;
        if (this.f36629e) {
            this.f36633i.setVisibility(z2 ? 0 : 8);
        }
    }

    public void a(boolean z2) {
        this.f36630f = z2;
        if (this.f36628d) {
            this.f36632h.setVisibility(z2 ? 0 : 8);
        }
    }

    public boolean b() {
        return this.f36630f;
    }
}
