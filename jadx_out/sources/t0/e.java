package t0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.flutter.dlna.flutter_dlna.dlna.DLNABrowserService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.android.AndroidUpnpService;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;
import u0.AbstractC1779b;
import u0.InterfaceC1780c;
import v0.C1786a;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f52786a;

    /* renamed from: b, reason: collision with root package name */
    public final List f52787b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f52788c;

    /* renamed from: d, reason: collision with root package name */
    public Context f52789d;

    /* renamed from: e, reason: collision with root package name */
    public AndroidUpnpService f52790e;

    /* renamed from: f, reason: collision with root package name */
    public ServiceConnection f52791f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC1780c f52792g;

    /* renamed from: h, reason: collision with root package name */
    public RegistryListener f52793h;

    /* renamed from: i, reason: collision with root package name */
    public final List f52794i;

    /* renamed from: j, reason: collision with root package name */
    public WifiManager.MulticastLock f52795j;

    public class b implements ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                e.this.f52790e = (AndroidUpnpService) iBinder;
                e.this.f52790e.getRegistry().addListener(e.this.f52793h);
                e.this.f52790e.getControlPoint().search();
                e.this.f52788c = false;
                if (e.this.f52792g != null) {
                    e.this.f52792g.onConnected();
                }
                e eVar = e.this;
                eVar.v(eVar.f52790e.getRegistry());
                e eVar2 = e.this;
                eVar2.r(eVar2.f52790e);
            } catch (Throwable th) {
                e.this.f52788c = false;
                if (e.this.f52792g != null) {
                    e.this.f52792g.onDisconnected();
                }
                e.this.q("UPnP service init failed: " + th.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e.this.f52790e = null;
            e.this.f52788c = false;
            if (e.this.f52792g != null) {
                e.this.f52792g.onDisconnected();
            }
            e.this.q("UPnP service disconnected");
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public static e f52798a = new e();
    }

    public interface d {
        void a(AndroidUpnpService androidUpnpService);

        void onError(String str);
    }

    public static /* synthetic */ void a(e eVar, Registry registry) {
        eVar.getClass();
        ArrayList arrayList = new ArrayList(eVar.f52794i);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            try {
                ((AbstractC1779b) obj).a(registry.getDevices());
            } catch (Throwable unused) {
            }
        }
    }

    public static /* synthetic */ void b(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((d) it.next()).onError(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static /* synthetic */ void c(List list, AndroidUpnpService androidUpnpService) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((d) it.next()).a(androidUpnpService);
            } catch (Throwable unused) {
            }
        }
    }

    public static e s() {
        return c.f52798a;
    }

    public void A(AbstractC1779b abstractC1779b) {
        this.f52794i.remove(abstractC1779b);
    }

    public final void m() {
        try {
            WifiManager wifiManager = (WifiManager) this.f52789d.getSystemService("wifi");
            if (wifiManager == null) {
                return;
            }
            if (this.f52795j == null) {
                WifiManager.MulticastLock multicastLockCreateMulticastLock = wifiManager.createMulticastLock("flutter-dlna-multicast");
                this.f52795j = multicastLockCreateMulticastLock;
                multicastLockCreateMulticastLock.setReferenceCounted(true);
            }
            if (this.f52795j.isHeld()) {
                return;
            }
            this.f52795j.acquire();
        } catch (Throwable unused) {
        }
    }

    public final void n() {
        if (this.f52789d == null) {
            throw new IllegalStateException("DLNAManager.init() first");
        }
    }

    public void o() {
        z();
        this.f52794i.clear();
        this.f52792g = null;
        this.f52789d = null;
    }

    public void p(final d dVar) {
        n();
        if (this.f52790e != null) {
            this.f52786a.post(new Runnable() { // from class: t0.c
                @Override // java.lang.Runnable
                public final void run() {
                    dVar.a(this.f52782b.f52790e);
                }
            });
            return;
        }
        this.f52787b.add(dVar);
        if (this.f52788c) {
            return;
        }
        this.f52788c = true;
        y();
    }

    public final void q(final String str) {
        if (this.f52787b.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList(this.f52787b);
        this.f52787b.clear();
        this.f52786a.post(new Runnable() { // from class: t0.b
            @Override // java.lang.Runnable
            public final void run() {
                e.b(arrayList, str);
            }
        });
    }

    public final void r(final AndroidUpnpService androidUpnpService) {
        if (this.f52787b.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList(this.f52787b);
        this.f52787b.clear();
        this.f52786a.post(new Runnable() { // from class: t0.d
            @Override // java.lang.Runnable
            public final void run() {
                e.c(arrayList, androidUpnpService);
            }
        });
    }

    public AndroidUpnpService t() {
        return this.f52790e;
    }

    public void u(Context context, InterfaceC1780c interfaceC1780c) {
        if (this.f52789d != null) {
            return;
        }
        this.f52789d = context.getApplicationContext();
        this.f52792g = interfaceC1780c;
    }

    public final void v(final Registry registry) {
        this.f52786a.post(new Runnable() { // from class: t0.a
            @Override // java.lang.Runnable
            public final void run() {
                e.a(this.f52778b, registry);
            }
        });
    }

    public void w(AbstractC1779b abstractC1779b) {
        this.f52794i.add(abstractC1779b);
        AndroidUpnpService androidUpnpService = this.f52790e;
        if (androidUpnpService != null) {
            v(androidUpnpService.getRegistry());
        }
    }

    public final void x() {
        try {
            WifiManager.MulticastLock multicastLock = this.f52795j;
            if (multicastLock != null && multicastLock.isHeld()) {
                this.f52795j.release();
            }
        } catch (Throwable unused) {
        }
        this.f52795j = null;
    }

    public void y() {
        n();
        if (this.f52791f == null) {
            m();
            this.f52791f = new b();
            this.f52789d.bindService(new Intent(this.f52789d, (Class<?>) DLNABrowserService.class), this.f52791f, 1);
        } else {
            AndroidUpnpService androidUpnpService = this.f52790e;
            if (androidUpnpService != null) {
                try {
                    androidUpnpService.getControlPoint().search();
                    v(this.f52790e.getRegistry());
                } catch (Throwable unused) {
                }
            }
        }
    }

    public void z() {
        if (this.f52789d == null) {
            return;
        }
        try {
            AndroidUpnpService androidUpnpService = this.f52790e;
            if (androidUpnpService != null && this.f52793h != null) {
                androidUpnpService.getRegistry().removeListener(this.f52793h);
            }
        } catch (Throwable unused) {
        }
        try {
            ServiceConnection serviceConnection = this.f52791f;
            if (serviceConnection != null) {
                this.f52789d.unbindService(serviceConnection);
            }
        } catch (Throwable unused2) {
        }
        this.f52791f = null;
        this.f52790e = null;
        this.f52788c = false;
        q("UPnP service stopped");
        x();
    }

    public e() throws SecurityException {
        this.f52786a = new Handler(Looper.getMainLooper());
        this.f52787b = new ArrayList();
        this.f52788c = false;
        this.f52794i = new ArrayList();
        C1786a.b();
        this.f52793h = new a();
    }

    public class a implements RegistryListener {
        public a() {
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
            e.this.v(registry);
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void afterShutdown() {
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void beforeShutdown(Registry registry) {
        }

        @Override // org.fourthline.cling.registry.RegistryListener
        public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
        }
    }
}
