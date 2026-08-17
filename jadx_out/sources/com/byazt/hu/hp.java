package com.byazt.hu;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;

@com.byazt.kj.hp(hp = {0, 1, 1745, 28})
/* loaded from: classes2.dex */
public class hp {
    public static Class hp;

    /* renamed from: l, reason: collision with root package name */
    public static Object f20952l;

    public static final Object hp() {
        if (f20952l == null) {
            try {
                synchronized (hp.class) {
                    try {
                        if (f20952l == null) {
                            if (hp == null) {
                                hp = Class.forName("android.app.ActivityThread");
                            }
                            f20952l = MethodUtils.invokeStaticMethod(hp, "currentActivityThread", new Object[0]);
                        }
                        if (f20952l == null && Looper.myLooper() != Looper.getMainLooper()) {
                            final Object obj = new Object();
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.hu.hp.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        try {
                                            Object unused = hp.f20952l = MethodUtils.invokeStaticMethod(hp.hp, "currentActivityThread", new Object[0]);
                                            synchronized (obj) {
                                                obj.notify();
                                            }
                                        } catch (Exception e2) {
                                            ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper main looper invoke currentActivityThread failed.", e2);
                                            synchronized (obj) {
                                                obj.notify();
                                            }
                                        }
                                    } catch (Throwable th) {
                                        synchronized (obj) {
                                            obj.notify();
                                            throw th;
                                        }
                                    }
                                }
                            });
                            if (f20952l == null) {
                                synchronized (obj) {
                                    try {
                                        obj.wait(5000L);
                                    } catch (InterruptedException e2) {
                                        ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread interruptedException failed.", e2);
                                    }
                                }
                            }
                        }
                    } finally {
                    }
                }
            } catch (Exception e3) {
                ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread failed.", e3);
            }
        }
        return f20952l;
    }
}
