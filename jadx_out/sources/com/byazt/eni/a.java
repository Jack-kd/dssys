package com.byazt.eni;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.browser.trusted.sharing.ShareTarget;
import com.anythink.core.common.m.AbstractC1114b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1905, 54})
/* loaded from: classes2.dex */
public class a {
    public final Context hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.eni.hp f19413l;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public int f19412j = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f19414w = -3;

    @com.byazt.kj.hp(hp = {0, 1, 1905, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static final class hp {
        public static String hp(int i2) {
            switch (i2) {
                case 200:
                    return "200_但取号失败";
                case 102101:
                    return "无网络状态";
                case 102102:
                    return "网络异常";
                case 102103:
                    return "预取号只开WiFi";
                case 102203:
                    return "输入参数错误";
                case 102204:
                    return "崩溃错误";
                case 102508:
                    return "数据网络切换失败";
                case 200010:
                    return "imsi获取失败或者没有sim卡，预取号失败";
                case 200050:
                    return "EOF异常";
                default:
                    return "wifi取号失败....";
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1905, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static class l {

        /* renamed from: w, reason: collision with root package name */
        public static volatile l f19419w;

        /* renamed from: a, reason: collision with root package name */
        public Handler f19420a;
        public final Runnable eb = new Runnable() { // from class: com.byazt.eni.a.l.2
            @Override // java.lang.Runnable
            public void run() {
                l.this.hp();
            }
        };
        public ConnectivityManager hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f19421j;
        public ConnectivityManager.NetworkCallback jx;

        /* renamed from: l, reason: collision with root package name */
        public Network f19422l;

        private l(Context context) {
            try {
                this.hp = (ConnectivityManager) context.getSystemService("connectivity");
                this.f19420a = new Handler(Looper.getMainLooper());
            } catch (Exception unused) {
            }
        }

        public static l hp(Context context) {
            if (f19419w == null) {
                synchronized (l.class) {
                    try {
                        if (f19419w == null) {
                            f19419w = new l(context);
                        }
                    } finally {
                    }
                }
            }
            return f19419w;
        }

        @TargetApi(21)
        public void hp(final ConnectivityManager.NetworkCallback networkCallback) {
            NetworkInfo networkInfo;
            this.f19420a.removeCallbacks(this.eb);
            ConnectivityManager connectivityManager = this.hp;
            if (connectivityManager == null) {
                return;
            }
            Network network = this.f19422l;
            if (network != null && !this.f19421j && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
                networkCallback.onAvailable(this.f19422l);
                return;
            }
            ConnectivityManager.NetworkCallback networkCallback2 = this.jx;
            if (networkCallback2 != null) {
                try {
                    this.hp.unregisterNetworkCallback(networkCallback2);
                } catch (Exception unused) {
                    this.jx = null;
                }
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
            ConnectivityManager.NetworkCallback networkCallback3 = new ConnectivityManager.NetworkCallback() { // from class: com.byazt.eni.a.l.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network2) {
                    try {
                        if (l.this.hp.getNetworkCapabilities(network2).hasTransport(0)) {
                            l.this.f19422l = network2;
                            networkCallback.onAvailable(network2);
                            l.this.f19421j = false;
                        } else {
                            l.this.f19422l = null;
                            networkCallback.onAvailable(null);
                            l.this.f19421j = true;
                        }
                    } catch (Exception unused2) {
                        networkCallback.onAvailable(null);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network2) {
                    l.this.f19421j = true;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onUnavailable() {
                    super.onUnavailable();
                    if (Build.VERSION.SDK_INT >= 26) {
                        networkCallback.onUnavailable();
                    }
                }
            };
            this.jx = networkCallback3;
            if (Build.VERSION.SDK_INT >= 26) {
                this.hp.requestNetwork(networkRequestBuild, networkCallback3, 5000);
            } else {
                this.hp.requestNetwork(networkRequestBuild, networkCallback3);
            }
        }

        public void hp(long j2) {
            this.f19420a.postDelayed(this.eb, j2);
        }

        public void hp() {
            ConnectivityManager connectivityManager = this.hp;
            if (connectivityManager == null) {
                return;
            }
            try {
                ConnectivityManager.NetworkCallback networkCallback = this.jx;
                if (networkCallback == null) {
                    return;
                }
                connectivityManager.unregisterNetworkCallback(networkCallback);
                this.jx = null;
                this.f19422l = null;
            } catch (Exception unused) {
            }
        }
    }

    public a(Context context, com.byazt.eni.hp hpVar) {
        this.hp = context;
        this.f19413l = hpVar;
    }

    public void hp(String str, jx jxVar) {
        if (jxVar == null) {
            return;
        }
        boolean zHp = w.hp(this.hp);
        this.f19412j = w.hp(this.hp, zHp);
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("headers");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("params");
            Map<String, List<String>> mapHp = hp(jSONObjectOptJSONObject);
            String upperCase = jSONObject.optString("method").toUpperCase();
            String strOptString = jSONObject.optString("url");
            this.f19413l.hp("method", upperCase);
            this.f19413l.hp("url", strOptString);
            this.f19414w = jSONObject.optInt("operType");
            try {
                if (hp(zHp, this.f19413l, jxVar)) {
                    if (this.jx) {
                        hp(mapHp, jSONObjectOptJSONObject2, jxVar);
                    } else {
                        hp(null, mapHp, jSONObjectOptJSONObject2, jxVar);
                    }
                }
            } catch (Throwable unused) {
                jxVar.hp(false, this.f19412j, 102204, hp.hp(102204), null, null);
            }
        } catch (JSONException unused2) {
            jxVar.hp(false, this.f19412j, 102203, hp.hp(102203), null, null);
        }
    }

    private Map<String, List<String>> hp(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                List list = (List) map.get(next);
                if (list == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(strOptString);
                    map.put(next, arrayList);
                } else {
                    list.add(strOptString);
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    private boolean hp(boolean z2, com.byazt.eni.hp hpVar, jx jxVar) throws NoSuchAlgorithmException {
        hpVar.hp("networktype", this.f19412j);
        String packageName = this.hp.getPackageName();
        String strHp = com.byazt.eni.l.hp(j.hp(this.hp, packageName));
        hpVar.hp("apppackage", packageName);
        hpVar.hp("appsign", strHp);
        int i2 = this.f19412j;
        if (i2 == 3) {
            this.jx = true;
        }
        if (!z2) {
            jxVar.hp(false, i2, 200010, hp.hp(200010), null, null);
            return false;
        }
        if (i2 == 0) {
            jxVar.hp(false, i2, 102101, hp.hp(102101), null, null);
            return false;
        }
        if (i2 != 2) {
            return true;
        }
        jxVar.hp(false, i2, 102103, hp.hp(102103), null, null);
        return false;
    }

    @TargetApi(21)
    private void hp(final Map<String, List<String>> map, final JSONObject jSONObject, final jx jxVar) {
        final l lVarHp = l.hp(this.hp);
        l.hp(this.hp).hp(new ConnectivityManager.NetworkCallback() { // from class: com.byazt.eni.a.1

            /* renamed from: a, reason: collision with root package name */
            public final AtomicBoolean f19415a = new AtomicBoolean(false);

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) throws Throwable {
                if (this.f19415a.getAndSet(true) || network == null) {
                    return;
                }
                a.this.hp(network, map, jSONObject, jxVar);
                lVarHp.hp(1000L);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                jxVar.hp(false, a.this.f19412j, 102508, hp.hp(102508), null, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Network network, Map<String, List<String>> map, JSONObject jSONObject, jx jxVar) throws Throwable {
        String strHp = this.f19413l.hp("url");
        String strHp2 = this.f19413l.hp("method");
        eb ebVar = new eb(strHp, strHp2, map, jSONObject);
        ebVar.hp(this.f19413l.hp("apppackage"));
        ebVar.l(this.f19413l.hp("appsign"));
        if ("get".equalsIgnoreCase(strHp2)) {
            ebVar.hp(AbstractC1114b.f5589g, ShareTarget.ENCODING_TYPE_URL_ENCODED);
        }
        try {
            com.byazt.ly.hp.hp(ebVar, this.f19413l.l("networktype"), this.f19413l.hp("apppackage"), this.f19414w);
            hp(network, ebVar, jxVar);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0206  */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.CharSequence, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.lang.CharSequence, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.byazt.eni.a] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v22, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.Closeable] */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(android.net.Network r18, com.byazt.eni.eb r19, com.byazt.eni.jx r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.eni.a.hp(android.net.Network, com.byazt.eni.eb, com.byazt.eni.jx):void");
    }

    private void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
