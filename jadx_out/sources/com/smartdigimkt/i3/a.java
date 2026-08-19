package com.smartdigimkt.i3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f40726b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f40727a;

    public a(Context context) {
        this.f40727a = context;
    }

    public static a a(Context context) {
        if (f40726b == null) {
            synchronized (a.class) {
                try {
                    if (f40726b == null) {
                        f40726b = new a(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f40726b;
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        try {
            try {
                LocalBroadcastManager.getInstance(this.f40727a).registerReceiver(broadcastReceiver, intentFilter);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            LocalBroadcastManager.getInstance(this.f40727a).registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final void a(Intent intent) {
        try {
            try {
                LocalBroadcastManager.getInstance(this.f40727a).sendBroadcast(intent);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            LocalBroadcastManager.getInstance(this.f40727a).sendBroadcast(intent);
        }
    }
}
