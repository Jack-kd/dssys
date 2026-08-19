package com.byazt.zx;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.dnb.s;
import com.byazt.eni.a;
import com.byazt.eni.w;
import com.byazt.jdb.j;
import com.byazt.pg.jl;
import com.byazt.rx.BaseConstants;
import com.byazt.uid.eb;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 689, 28})
/* loaded from: classes3.dex */
public class hp {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f28637j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public SSWebView f28638l;

    /* renamed from: w, reason: collision with root package name */
    public int f28639w = 1;

    /* renamed from: a, reason: collision with root package name */
    public int f28636a = -3;
    public int eb = -1;

    @com.byazt.kj.hp(hp = {0, 1, 689, 170})
    /* renamed from: com.byazt.zx.hp$hp, reason: collision with other inner class name */
    public static class C0441hp implements com.byazt.eni.jx {
        public final WeakReference<SSWebView> hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f28641j;
        public final long jx;

        /* renamed from: l, reason: collision with root package name */
        public final mp f28642l;

        /* renamed from: w, reason: collision with root package name */
        public final int f28643w;

        public C0441hp(WeakReference<SSWebView> weakReference, mp mpVar, long j2, int i2, int i3) {
            this.hp = weakReference;
            this.f28642l = mpVar;
            this.jx = j2;
            this.f28641j = i2;
            this.f28643w = i3;
        }

        @Override // com.byazt.eni.jx
        public void hp(boolean z2, int i2, int i3, String str, Map<String, List<String>> map, String str2) throws JSONException {
            if (z2) {
                str = "取号成功";
            } else if (TextUtils.isEmpty(str)) {
                str = "取号失败";
            }
            j.hp(this.f28642l, "wifi_auth", "click_other", new jx(System.currentTimeMillis() - this.jx, i2, z2, str, this.f28641j, this.f28643w));
            JSONObject jSONObject = new JSONObject();
            if (str2 == null) {
                str2 = "";
            }
            try {
                jSONObject.put("data", str2);
                jSONObject.put("networkType", i2);
            } catch (JSONException unused) {
            }
            SSWebView sSWebView = this.hp.get();
            if (sSWebView != null) {
                k.hp(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 689, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public static class jx implements com.byazt.dhy.hp {

        /* renamed from: a, reason: collision with root package name */
        public final int f28644a;
        public final long hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f28645j;
        public final boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f28646l;

        /* renamed from: w, reason: collision with root package name */
        public final int f28647w;

        public jx(long j2, int i2, boolean z2, String str, int i3, int i4) {
            this.hp = j2;
            this.f28646l = i2;
            this.jx = z2;
            this.f28645j = str;
            this.f28647w = i3;
            this.f28644a = i4;
        }

        @Override // com.byazt.dhy.hp
        public void onSend(JSONObject jSONObject) throws JSONException {
            jSONObject.put("duration", this.hp);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("wifi_auth_referer", "huoshan_JSSDK");
            jSONObject2.putOpt("wifi_auth_network_type", Integer.valueOf(this.f28646l));
            jSONObject2.putOpt("wifi_auth_duration", Long.valueOf(this.hp));
            jSONObject2.putOpt("wifi_auth_status", this.jx ? cb.f11292o : "failure");
            String str = this.f28645j;
            if (str == null) {
                str = "";
            }
            jSONObject2.putOpt("wifi_auth_detail_info", str);
            jSONObject2.putOpt("wifi_auth_carrier", Integer.valueOf(this.f28647w));
            jSONObject2.putOpt("wifi_auth_redirect_time", Integer.valueOf(this.f28644a));
            jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 689, 255})
    public static class l extends eb {

        /* renamed from: a, reason: collision with root package name */
        public final int f28648a;
        public final int eb;
        public final WeakReference<SSWebView> hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f28649j;
        public final mp jx;

        /* renamed from: l, reason: collision with root package name */
        public final Context f28650l;

        /* renamed from: w, reason: collision with root package name */
        public final long f28651w;

        public l(SSWebView sSWebView, Context context, mp mpVar, String str, long j2, int i2, int i3) {
            super("send_network_switch");
            this.hp = new WeakReference<>(sSWebView);
            this.f28650l = context != null ? context.getApplicationContext() : null;
            this.jx = mpVar;
            this.f28649j = str;
            this.f28651w = j2;
            this.f28648a = i2;
            this.eb = i3;
        }

        @Override // java.lang.Runnable
        public void run() throws JSONException {
            Context context = this.f28650l;
            if (context != null) {
                new a(context, new com.byazt.eni.hp()).hp(this.f28649j, new C0441hp(this.hp, this.jx, this.f28651w, this.f28648a, this.eb));
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", "取号失败，context is null");
                jSONObject.put("networkType", 0);
            } catch (JSONException unused) {
            }
            SSWebView sSWebView = this.hp.get();
            if (sSWebView != null) {
                k.hp(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
            }
            j.hp(this.jx, "wifi_auth", "click_other", new jx(System.currentTimeMillis() - this.f28651w, 0, false, "context is null", this.f28648a, this.eb));
        }
    }

    public hp(SSWebView sSWebView, Context context, int i2, mp mpVar) {
        this.f28638l = sSWebView;
        this.jx = context;
        this.f28637j = i2;
        this.hp = mpVar;
    }

    @JavascriptInterface
    public int getNetOperatorType() {
        final int iHp = hp();
        if (iHp != -1 && iHp != -2) {
            return iHp;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        s.hp(new eb("getNetOperatorType") { // from class: com.byazt.zx.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.hp(-1, System.currentTimeMillis() - jCurrentTimeMillis, false, "获取运行商类型为-1或-2,直接标记取号失败", iHp, hp.this.f28639w);
            }
        });
        return iHp;
    }

    @JavascriptInterface
    public String sendNetworkSwitch(String str) throws JSONException {
        int iHp;
        Context context;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f28637j <= 0) {
            JSONObject jSONObject = new JSONObject();
            if (this.eb == -1 && (context = this.jx) != null) {
                this.eb = w.hp(context, w.hp(context));
            }
            try {
                jSONObject.put("data", "没有wifi网络下获取手机号权限");
                jSONObject.put("networkType", this.eb);
            } catch (JSONException unused) {
            }
            SSWebView sSWebView = this.f28638l;
            if (sSWebView != null) {
                k.hp(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
            }
            hp(-1, System.currentTimeMillis() - jCurrentTimeMillis, false, "没有wifi网络下获取手机号权限", -1, this.f28639w);
            return "";
        }
        try {
            iHp = new JSONObject(str).optInt("operType");
        } catch (JSONException unused2) {
            iHp = -3;
        }
        if (iHp != 1 && iHp != 2 && iHp != 3) {
            iHp = hp();
        }
        int i2 = iHp;
        if (i2 == 3 && this.f28636a == 3) {
            this.f28639w++;
        } else {
            this.f28639w = 1;
        }
        this.f28636a = i2;
        s.hp((eb) new l(this.f28638l, this.jx, this.hp, str, jCurrentTimeMillis, i2, this.f28639w));
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, long j2, boolean z2, String str, int i3, int i4) {
        j.hp(this.hp, "wifi_auth", "click_other", new jx(j2, i2, z2, str, i3, i4));
    }

    public int hp() {
        int i2 = this.f28637j;
        if (i2 <= 0) {
            return -1;
        }
        Context context = this.jx;
        if (context == null || i2 == 1) {
            return -3;
        }
        int iHp = w.hp(context, w.hp(context));
        this.eb = iHp;
        if (iHp == 0 || iHp == 2) {
            return -2;
        }
        String activeSimOperatorStr = ((jl) com.byazt.ym.j.getService("device_info_new")).getActiveSimOperatorStr();
        activeSimOperatorStr.getClass();
        switch (activeSimOperatorStr) {
            case "1":
                return 1;
            case "2":
                return 3;
            case "3":
                return 2;
            default:
                return -3;
        }
    }
}
