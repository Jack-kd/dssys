package s0;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.internal.cb;
import com.flutter.dlna.flutter_dlna.dlna.DLNAPlayer;
import com.flutter.dlna.flutter_dlna.dlna.bean.DeviceInfo;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.fourthline.cling.android.AndroidUpnpService;
import org.fourthline.cling.model.action.ActionInvocation;
import s0.C1767b;
import t0.e;
import u0.AbstractC1779b;
import u0.InterfaceC1778a;
import u0.InterfaceC1780c;

/* renamed from: s0.b, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1767b implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: b, reason: collision with root package name */
    public MethodChannel f52751b;

    /* renamed from: c, reason: collision with root package name */
    public Context f52752c;

    /* renamed from: e, reason: collision with root package name */
    public DLNAPlayer f52754e;

    /* renamed from: f, reason: collision with root package name */
    public AbstractC1779b f52755f;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f52753d = new Handler(Looper.getMainLooper());

    /* renamed from: g, reason: collision with root package name */
    public final List f52756g = new ArrayList();

    /* renamed from: s0.b$a */
    public class a implements InterfaceC1780c {

        /* renamed from: s0.b$a$a, reason: collision with other inner class name */
        public class C0887a extends AbstractC1779b {
            public C0887a() {
            }

            @Override // u0.AbstractC1779b
            public void b(List list) {
                C1767b.this.f52756g.clear();
                if (list != null) {
                    C1767b.this.f52756g.addAll(list);
                }
                ArrayList arrayList = new ArrayList();
                for (DeviceInfo deviceInfo : C1767b.this.f52756g) {
                    HashMap map = new HashMap();
                    map.put("id", deviceInfo.getId());
                    map.put("name", deviceInfo.getName());
                    arrayList.add(map);
                }
                C1767b.this.o("onDevices", arrayList);
            }
        }

        public a() {
        }

        @Override // u0.InterfaceC1780c
        public void onConnected() {
            if (C1767b.this.f52755f == null) {
                C1767b.this.f52755f = new C0887a();
                e.s().w(C1767b.this.f52755f);
            }
        }

        @Override // u0.InterfaceC1780c
        public void onDisconnected() {
            C1767b c1767b = C1767b.this;
            c1767b.o("onError", c1767b.k("UPNP_DISCONNECTED", "UPnP service disconnected"));
        }
    }

    /* renamed from: s0.b$b, reason: collision with other inner class name */
    public class C0888b implements e.d {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DeviceInfo f52759a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f52760b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f52761c;

        /* renamed from: s0.b$b$a */
        public class a implements InterfaceC1778a {
            public a() {
            }

            @Override // u0.InterfaceC1778a
            public void a(ActionInvocation actionInvocation) {
                C1767b c1767b = C1767b.this;
                c1767b.o("onPlayResult", c1767b.m(true, null, null));
            }

            @Override // u0.InterfaceC1778a
            public void b(ActionInvocation actionInvocation, int i2, String str) {
                C1767b c1767b = C1767b.this;
                c1767b.o("onPlayResult", c1767b.m(false, "DLNA_ERROR_" + i2, str));
            }
        }

        public C0888b(DeviceInfo deviceInfo, String str, String str2) {
            this.f52759a = deviceInfo;
            this.f52760b = str;
            this.f52761c = str2;
        }

        public static /* synthetic */ void b(C0888b c0888b, String str, String str2) {
            C1767b.this.f52754e.i(str, str2);
            C1767b.this.f52754e.j(c0888b.new a());
        }

        @Override // t0.e.d
        public void a(AndroidUpnpService androidUpnpService) {
            C1767b.this.f52754e.d(this.f52759a);
            Handler handler = C1767b.this.f52753d;
            final String str = this.f52760b;
            final String str2 = this.f52761c;
            handler.postDelayed(new Runnable() { // from class: s0.c
                @Override // java.lang.Runnable
                public final void run() {
                    C1767b.C0888b.b(this.f52764b, str, str2);
                }
            }, 250L);
        }

        @Override // t0.e.d
        public void onError(String str) {
            C1767b c1767b = C1767b.this;
            c1767b.o("onPlayResult", c1767b.m(false, "NOT_READY", str));
        }
    }

    /* renamed from: s0.b$c */
    public static final class c implements InterfaceC1778a {
        public c() {
        }

        @Override // u0.InterfaceC1778a
        public void a(ActionInvocation actionInvocation) {
        }

        @Override // u0.InterfaceC1778a
        public void b(ActionInvocation actionInvocation, int i2, String str) {
        }
    }

    public static /* synthetic */ void a(C1767b c1767b, String str, Object obj) {
        c1767b.getClass();
        try {
            c1767b.f52751b.invokeMethod(str, obj);
        } catch (Throwable unused) {
        }
    }

    public final void j() {
        try {
            if (this.f52755f != null) {
                e.s().A(this.f52755f);
                this.f52755f = null;
            }
        } catch (Throwable unused) {
        }
        try {
            DLNAPlayer dLNAPlayer = this.f52754e;
            if (dLNAPlayer != null) {
                dLNAPlayer.e();
                this.f52754e = null;
            }
        } catch (Throwable unused2) {
        }
        try {
            e.s().o();
        } catch (Throwable unused3) {
        }
        this.f52756g.clear();
    }

    public final Map k(String str, String str2) {
        HashMap map = new HashMap();
        map.put("code", str);
        map.put("message", str2);
        return map;
    }

    public final void l() {
        if (this.f52754e == null) {
            this.f52754e = new DLNAPlayer(this.f52752c);
        }
        e.s().u(this.f52752c, new a());
    }

    public final Map m(boolean z2, String str, String str2) {
        HashMap map = new HashMap();
        map.put(cb.f11292o, Boolean.valueOf(z2));
        if (!z2) {
            map.put("code", str);
            map.put("message", str2);
        }
        return map;
    }

    public final void n(String str, String str2, String str3) {
        DeviceInfo deviceInfo;
        if (this.f52754e == null) {
            o("onPlayResult", m(false, "NOT_READY", "DLNA not initialized (call init first)"));
            return;
        }
        if (str == null || str.trim().isEmpty()) {
            o("onPlayResult", m(false, "INVALID_DEVICE", "deviceId is empty"));
            return;
        }
        if (str2 == null || str2.trim().isEmpty()) {
            o("onPlayResult", m(false, "INVALID_URL", "url is empty"));
            return;
        }
        Iterator it = this.f52756g.iterator();
        while (true) {
            if (!it.hasNext()) {
                deviceInfo = null;
                break;
            } else {
                deviceInfo = (DeviceInfo) it.next();
                if (str.equals(deviceInfo.getId())) {
                    break;
                }
            }
        }
        if (deviceInfo == null) {
            o("onPlayResult", m(false, "DEVICE_NOT_FOUND", "device not in list"));
        } else {
            e.s().p(new C0888b(deviceInfo, str2, str3));
        }
    }

    public final void o(final String str, final Object obj) {
        if (this.f52751b == null) {
            return;
        }
        this.f52753d.post(new Runnable() { // from class: s0.a
            @Override // java.lang.Runnable
            public final void run() {
                C1767b.a(this.f52748b, str, obj);
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f52752c = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_dlna");
        this.f52751b = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.f52751b;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        j();
        this.f52751b = null;
        this.f52752c = null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1880505174:
                if (str.equals("startSearch")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1363423158:
                if (str.equals("stopSearch")) {
                    c2 = 1;
                    break;
                }
                break;
            case -493582949:
                if (str.equals("playUrl")) {
                    c2 = 2;
                    break;
                }
                break;
            case 3237136:
                if (str.equals("init")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1671767583:
                if (str.equals("dispose")) {
                    c2 = 5;
                    break;
                }
                break;
        }
        Object[] objArr = 0;
        switch (c2) {
            case 0:
                p();
                result.success(Boolean.TRUE);
                break;
            case 1:
                q();
                result.success(Boolean.TRUE);
                break;
            case 2:
                Map map = (Map) methodCall.arguments;
                n(map != null ? String.valueOf(map.get("deviceId")) : null, map != null ? String.valueOf(map.get("url")) : null, (map == null || map.get(g.a.f3271h) == null) ? "Video" : String.valueOf(map.get(g.a.f3271h)));
                result.success(Boolean.TRUE);
                break;
            case 3:
                l();
                result.success(Boolean.TRUE);
                break;
            case 4:
                DLNAPlayer dLNAPlayer = this.f52754e;
                if (dLNAPlayer != null) {
                    dLNAPlayer.k(new c());
                }
                result.success(Boolean.TRUE);
                break;
            case 5:
                j();
                result.success(Boolean.TRUE);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    public final void p() {
        e.s().y();
    }

    public final void q() {
        o("onDevices", new ArrayList());
    }
}
