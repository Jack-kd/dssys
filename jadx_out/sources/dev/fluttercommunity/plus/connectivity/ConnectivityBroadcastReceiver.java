package dev.fluttercommunity.plus.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import android.os.Looper;
import io.flutter.plugin.common.EventChannel;
import java.util.List;
import o1.C1740a;

/* loaded from: classes5.dex */
public class ConnectivityBroadcastReceiver extends BroadcastReceiver implements EventChannel.StreamHandler {

    /* renamed from: b, reason: collision with root package name */
    public final Context f50671b;

    /* renamed from: c, reason: collision with root package name */
    public final C1740a f50672c;

    /* renamed from: d, reason: collision with root package name */
    public EventChannel.EventSink f50673d;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f50674e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public ConnectivityManager.NetworkCallback f50675f;

    public class a extends ConnectivityManager.NetworkCallback {
        public a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            ConnectivityBroadcastReceiver connectivityBroadcastReceiver = ConnectivityBroadcastReceiver.this;
            connectivityBroadcastReceiver.j(connectivityBroadcastReceiver.f50672c.a(network));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            ConnectivityBroadcastReceiver connectivityBroadcastReceiver = ConnectivityBroadcastReceiver.this;
            connectivityBroadcastReceiver.j(connectivityBroadcastReceiver.f50672c.b(networkCapabilities));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            ConnectivityBroadcastReceiver.this.i();
        }
    }

    public ConnectivityBroadcastReceiver(Context context, C1740a c1740a) {
        this.f50671b = context;
        this.f50672c = c1740a;
    }

    public final /* synthetic */ void f() {
        this.f50673d.success(this.f50672c.d());
    }

    public final /* synthetic */ void g(List list) {
        this.f50673d.success(list);
    }

    public void h() {
        if (this.f50675f != null) {
            try {
                this.f50672c.c().unregisterNetworkCallback(this.f50675f);
            } catch (Exception unused) {
            } finally {
                this.f50675f = null;
            }
        }
    }

    public final void i() {
        this.f50674e.postDelayed(new Runnable() { // from class: o1.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f52033b.f();
            }
        }, 500L);
    }

    public final void j(final List list) {
        this.f50674e.post(new Runnable() { // from class: o1.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f52031b.g(list);
            }
        });
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        h();
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f50673d = eventSink;
        this.f50675f = new a();
        this.f50672c.c().registerDefaultNetworkCallback(this.f50675f);
        j(this.f50672c.d());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        EventChannel.EventSink eventSink = this.f50673d;
        if (eventSink != null) {
            eventSink.success(this.f50672c.d());
        }
    }
}
