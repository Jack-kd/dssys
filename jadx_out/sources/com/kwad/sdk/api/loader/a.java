package com.kwad.sdk.api.loader;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes4.dex */
final class a {

    /* renamed from: com.kwad.sdk.api.loader.a$a, reason: collision with other inner class name */
    public static class C0594a {
        int aHC;
        String aHD;
        transient File aHE;
        long interval;
        String md5;
        String sdkVersion;

        public final boolean HA() {
            return this.aHC == 1;
        }

        public final boolean HB() {
            return this.aHC == -1;
        }

        public final void parseJson(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.aHC = jSONObject.optInt("dynamicType");
            this.aHD = jSONObject.optString("dynamicUrl");
            this.md5 = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
            this.interval = jSONObject.optLong("interval");
            this.sdkVersion = jSONObject.optString("sdkVersion");
        }

        public final String toString() {
            return "Data{dynamicType=" + this.aHC + ", dynamicUrl='" + this.aHD + "', md5='" + this.md5 + "', interval=" + this.interval + ", sdkVersion='" + this.sdkVersion + "', downloadFile=" + this.aHE + '}';
        }
    }

    public static class b {
        C0594a aHF;
        String errorMsg;
        long result;

        public final boolean isLegal() {
            return this.result == 1 && this.aHF != null;
        }

        public final void parseJson(JSONObject jSONObject) {
            this.result = jSONObject.optLong("result");
            this.errorMsg = jSONObject.optString(MediationConstant.KEY_ERROR_MSG);
            C0594a c0594a = new C0594a();
            this.aHF = c0594a;
            c0594a.parseJson(jSONObject.optJSONObject("data"));
        }

        public final String toString() {
            return "UpdateData{result=" + this.result + ", errorMsg='" + this.errorMsg + "', data=" + this.aHF + '}';
        }
    }
}
