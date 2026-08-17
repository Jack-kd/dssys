package com.meishu.sdk.platform.ms.recycler;

import android.text.TextUtils;
import android.view.MotionEvent;
import com.meishu.sdk.core.view.TouchPoint;
import java.lang.ref.SoftReference;

/* loaded from: classes4.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public static String f33080a;

    /* renamed from: b, reason: collision with root package name */
    public static float f33081b;

    /* renamed from: c, reason: collision with root package name */
    public static float f33082c;

    /* renamed from: d, reason: collision with root package name */
    public static float f33083d;

    /* renamed from: e, reason: collision with root package name */
    public static float f33084e;

    /* renamed from: f, reason: collision with root package name */
    public static int f33085f;

    /* renamed from: g, reason: collision with root package name */
    public static long f33086g;

    /* renamed from: h, reason: collision with root package name */
    public static SoftReference<a> f33087h;

    public interface a {
        void a(float f2, float f3, long j2, float f4, float f5, float f6, int i2);
    }

    public static void a(String str, MotionEvent motionEvent, a aVar) {
        if (TextUtils.isEmpty(str) || motionEvent.getAction() != 0) {
            return;
        }
        f33080a = str;
        f33087h = new SoftReference<>(aVar);
        f33081b = motionEvent.getX();
        f33082c = motionEvent.getY();
        f33083d = motionEvent.getRawX();
        f33084e = motionEvent.getRawY();
        f33085f = 0;
        f33086g = System.currentTimeMillis();
    }

    public static TouchPoint a(String str, MotionEvent motionEvent, float f2, int i2) {
        if (f33081b <= 0.0f || f33082c <= 0.0f) {
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str) && str.equals(f33080a)) {
                return new TouchPoint(f33081b, f33082c, f33086g, motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis());
            }
            try {
                SoftReference<a> softReference = f33087h;
                if (softReference != null && softReference.get() != null) {
                    f33087h.get().a(f33081b, f33082c, f33086g, motionEvent.getX(), motionEvent.getY(), f2, i2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return null;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return new TouchPoint(f33081b, f33082c, f33086g, motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis());
            } finally {
                a();
            }
        }
    }

    public static void a() {
        f33080a = null;
        f33081b = 0.0f;
        f33082c = 0.0f;
        f33083d = 0.0f;
        f33084e = 0.0f;
        f33085f = 0;
        f33086g = 0L;
    }

    public static void a(String str, int i2) {
        if (TextUtils.isEmpty(str) || !str.equals(f33080a)) {
            return;
        }
        f33085f = i2;
    }
}
