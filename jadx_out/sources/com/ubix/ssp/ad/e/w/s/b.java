package com.ubix.ssp.ad.e.w.s;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import com.ubix.ssp.ad.e.w.h;
import com.ubix.ssp.ad.e.w.n;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static String f47396a;

    /* renamed from: b, reason: collision with root package name */
    private static C0830b f47397b;

    /* renamed from: c, reason: collision with root package name */
    private static c f47398c;

    /* renamed from: com.ubix.ssp.ad.e.w.s.b$b, reason: collision with other inner class name */
    public static class C0830b extends BroadcastReceiver {
        private C0830b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws InterruptedException {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                b.a();
                n.l().f();
                h.b("---.NetworkUtils", "UbixBroadcastReceiver is receiving ConnectivityManager.CONNECTIVITY_ACTION broadcast");
            }
        }
    }

    @TargetApi(21)
    public static class c extends ConnectivityManager.NetworkCallback {
        private c() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) throws InterruptedException {
            super.onAvailable(network);
            b.a();
            n.l().f();
            h.b("---.NetworkUtils", "onAvailable is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            b.a();
            h.b("---.NetworkUtils", "onCapabilitiesChanged is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            b.a();
            h.b("---.NetworkUtils", "onLost is calling");
        }
    }

    public static void a() {
        f47396a = null;
    }

    public static void a(Context context) {
        try {
            if (f47398c == null) {
                f47398c = new c();
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().build();
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild, f47398c);
            }
        } catch (Exception e2) {
            h.a(e2);
        }
    }
}
