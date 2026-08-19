package com.umeng.commonsdk.internal.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50153a = "BatteryUtils";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f50154b = false;

    /* renamed from: c, reason: collision with root package name */
    private static Context f50155c;

    /* renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f50156d;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final c f50158a = new c();

        private a() {
        }
    }

    public static c a(Context context) {
        if (f50155c == null && context != null) {
            f50155c = context.getApplicationContext();
        }
        return a.f50158a;
    }

    public synchronized void b() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f50155c.registerReceiver(this.f50156d, intentFilter);
            f50154b = true;
        } finally {
        }
    }

    public synchronized void c() {
        try {
            f50155c.unregisterReceiver(this.f50156d);
            f50154b = false;
        } finally {
        }
    }

    private c() {
        this.f50156d = new BroadcastReceiver() { // from class: com.umeng.commonsdk.internal.utils.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "ACTION_BATTERY_CHANGED：battery info cc.");
                        int i2 = 0;
                        int intExtra = intent.getIntExtra("level", 0);
                        int intExtra2 = intent.getIntExtra("voltage", 0);
                        int intExtra3 = intent.getIntExtra("temperature", 0);
                        int intExtra4 = intent.getIntExtra("status", 0);
                        int i3 = -1;
                        if (intExtra4 != 1) {
                            if (intExtra4 == 2) {
                                i3 = 1;
                            } else if (intExtra4 == 4) {
                                i3 = 0;
                            } else if (intExtra4 == 5) {
                                i3 = 2;
                            }
                        }
                        int intExtra5 = intent.getIntExtra("plugged", 0);
                        if (intExtra5 == 1) {
                            i2 = 1;
                        } else if (intExtra5 == 2) {
                            i2 = 2;
                        }
                        b bVar = new b();
                        bVar.f50147a = intExtra;
                        bVar.f50148b = intExtra2;
                        bVar.f50150d = i3;
                        bVar.f50149c = intExtra3;
                        bVar.f50151e = i2;
                        bVar.f50152f = System.currentTimeMillis();
                        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50104h, com.umeng.commonsdk.internal.b.a(c.f50155c).a(), bVar);
                        c.this.c();
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(c.f50155c, th);
                }
            }
        };
    }

    public synchronized boolean a() {
        return f50154b;
    }
}
