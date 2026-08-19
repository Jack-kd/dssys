package com.byazt.fc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import androidx.core.view.PointerIconCompat;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TEXT, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile jx hp;

    /* renamed from: j, reason: collision with root package name */
    public l f19667j;
    public Network jx;

    /* renamed from: l, reason: collision with root package name */
    public ConnectivityManager f19668l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19669w;

    public interface hp {
        void hp(Network network);
    }

    @com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TEXT, 224})
    public static class l extends ConnectivityManager.NetworkCallback {
        public hp hp;
        public AtomicBoolean jx = new AtomicBoolean(false);

        /* renamed from: l, reason: collision with root package name */
        public final jx f19670l;

        public l(hp hpVar, jx jxVar) {
            this.hp = hpVar;
            this.f19670l = jxVar;
        }

        public void hp(hp hpVar) {
            this.hp = hpVar;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (this.jx.compareAndSet(false, true)) {
                try {
                    this.f19670l.jx = network;
                    this.hp.hp(network);
                    this.f19670l.f19669w = false;
                } catch (Exception unused) {
                    this.f19670l.jx = null;
                    this.hp.hp(null);
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            this.f19670l.f19669w = true;
        }
    }

    private jx(Context context) {
        try {
            this.f19668l = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void l() {
        ConnectivityManager connectivityManager = this.f19668l;
        if (connectivityManager == null) {
            return;
        }
        try {
            try {
                l lVar = this.f19667j;
                if (lVar == null) {
                    return;
                }
                connectivityManager.unregisterNetworkCallback(lVar);
            } catch (Exception unused) {
            }
        } finally {
            this.f19667j = null;
            this.jx = null;
        }
    }

    public static jx hp(Context context) {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private static boolean hp(ConnectivityManager connectivityManager) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", null);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public int hp() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.f19668l;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || (activeNetwork = this.f19668l.getActiveNetwork()) == null || (networkCapabilities = this.f19668l.getNetworkCapabilities(activeNetwork)) == null) {
                return 0;
            }
            boolean zHasTransport = networkCapabilities.hasTransport(4);
            boolean zHasTransport2 = networkCapabilities.hasTransport(0);
            boolean zHasTransport3 = networkCapabilities.hasTransport(1);
            if (zHasTransport) {
                return 4;
            }
            if (hp(this.f19668l) && zHasTransport3) {
                return 3;
            }
            if (zHasTransport3) {
                return 1;
            }
            return zHasTransport2 ? 2 : 5;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void hp(hp hpVar) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = this.f19668l;
        if (connectivityManager == null) {
            hpVar.hp(null);
            return;
        }
        Network network = this.jx;
        if (network != null && !this.f19669w && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
            hpVar.hp(this.jx);
            return;
        }
        l lVar = this.f19667j;
        if (lVar != null) {
            lVar.hp(hpVar);
            return;
        }
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        l lVar2 = new l(hpVar, hp);
        this.f19667j = lVar2;
        try {
            this.f19668l.requestNetwork(networkRequestBuild, lVar2);
        } catch (Exception unused) {
            hpVar.hp(null);
        }
    }
}
