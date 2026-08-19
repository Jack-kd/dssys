package com.ubix.ssp.ad.e.s;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ubix.ssp.ad.e.a0.n;

/* loaded from: classes5.dex */
public class a extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    String f47064a;

    public a() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.ubix.ssp.ad.d.a aVar;
        try {
            if (!new String(n.a().a("YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlBBQ0tBR0VfQURERUQ=")).equals(intent.getAction()) || intent.getData() == null) {
                return;
            }
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (!schemeSpecificPart.equals(this.f47064a) || (aVar = b.f47066b.get(schemeSpecificPart)) == null) {
                return;
            }
            b.f47066b.remove(schemeSpecificPart);
            b.c().a(context.getApplicationContext(), schemeSpecificPart, aVar, "bro", "");
        } catch (Throwable unused) {
        }
    }

    public a(String str) {
        this.f47064a = str;
    }
}
