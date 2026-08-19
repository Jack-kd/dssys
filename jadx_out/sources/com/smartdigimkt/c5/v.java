package com.smartdigimkt.c5;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.smartdigimkt.sdk.api.SDMSDK;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q3.a f39817a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39818b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f39819c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f39820d;

    public v(com.smartdigimkt.q3.a aVar, String str, String str2, String str3) {
        this.f39817a = aVar;
        this.f39818b = str;
        this.f39819c = str2;
        this.f39820d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f39817a == null) {
                jSONObject.put(com.umeng.ccg.a.f49772z, this.f39818b);
                jSONObject.put("result", this.f39819c);
                jSONObject.put("isHB", 1);
                jSONObject.put("msg", this.f39820d);
            } else {
                if (TextUtils.equals(this.f39818b, "click") && this.f39817a.f42723B) {
                    return;
                }
                com.smartdigimkt.q3.a aVar = this.f39817a;
                int i2 = aVar.f42737P;
                jSONObject.put("placementId", aVar.f42748a);
                String str2 = this.f39817a.f42752c;
                str2.getClass();
                switch (str2) {
                    case "0":
                        str = "native";
                        break;
                    case "1":
                        str = "reward";
                        break;
                    case "2":
                        str = "banner";
                        break;
                    case "3":
                        str = "inter";
                        break;
                    case "4":
                        str = MediationConstant.RIT_TYPE_SPLASH;
                        break;
                    case "50":
                        str = "media_video";
                        break;
                    default:
                        str = com.baidu.mobads.sdk.internal.a.f10877a;
                        break;
                }
                jSONObject.put("adType", str);
                jSONObject.put(com.umeng.ccg.a.f49772z, this.f39818b);
                jSONObject.put("result", this.f39819c);
                jSONObject.put("adSourceId", this.f39817a.f42738Q);
                jSONObject.put("networkFirmId", i2);
                jSONObject.put("networkName", this.f39817a.f42734M);
                jSONObject.put("networkVersion", this.f39817a.f42733L);
                jSONObject.put("networkUnit", this.f39817a.f42736O);
                jSONObject.put("isHB", 1);
                jSONObject.put("msg", this.f39820d);
            }
        } catch (Throwable unused) {
        }
        String string = jSONObject.toString();
        if (SDMSDK.getInstance().isNetworkLogDebug()) {
            w.a(0, "sdm_".concat("sdk"), string);
        }
    }
}
