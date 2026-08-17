package o1;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;

/* renamed from: o1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1740a {

    /* renamed from: a, reason: collision with root package name */
    public final ConnectivityManager f52030a;

    public C1740a(ConnectivityManager connectivityManager) {
        this.f52030a = connectivityManager;
    }

    public List a(Network network) {
        return b(this.f52030a.getNetworkCapabilities(network));
    }

    public List b(NetworkCapabilities networkCapabilities) {
        ArrayList arrayList = new ArrayList();
        if (networkCapabilities == null || !networkCapabilities.hasCapability(12)) {
            arrayList.add(com.baidu.mobads.sdk.internal.a.f10877a);
            return arrayList;
        }
        if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(5)) {
            arrayList.add("wifi");
        }
        if (networkCapabilities.hasTransport(3)) {
            arrayList.add("ethernet");
        }
        if (networkCapabilities.hasTransport(4)) {
            arrayList.add("vpn");
        }
        if (networkCapabilities.hasTransport(0)) {
            arrayList.add("mobile");
        }
        if (networkCapabilities.hasTransport(2)) {
            arrayList.add("bluetooth");
        }
        if (Build.VERSION.SDK_INT >= 35 && networkCapabilities.hasTransport(10)) {
            arrayList.add("satellite");
        }
        if (arrayList.isEmpty() && networkCapabilities.hasCapability(12)) {
            arrayList.add("other");
        }
        if (arrayList.isEmpty()) {
            arrayList.add(com.baidu.mobads.sdk.internal.a.f10877a);
        }
        return arrayList;
    }

    public ConnectivityManager c() {
        return this.f52030a;
    }

    public List d() {
        return a(this.f52030a.getActiveNetwork());
    }
}
