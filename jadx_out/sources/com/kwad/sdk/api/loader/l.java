package com.kwad.sdk.api.loader;

import com.kwad.sdk.api.loader.a;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class l {
    public static int aIm;

    public static class a {
        private int aIn;
        private int aIo;
        private String aIp;
        private String aIq;
        private long aIr;
        private int aIs;
        private String aIt;

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a av(long j2) {
            this.aIr = j2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a db(String str) {
            this.aIp = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dc(String str) {
            this.aIq = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dd(String str) {
            this.aIt = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dp(int i2) {
            this.aIn = i2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dq(int i2) {
            this.aIo = i2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dr(int i2) {
            this.aIs = i2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject toJson() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("load_status", Integer.valueOf(this.aIn));
                jSONObject.putOpt("update_count", Integer.valueOf(this.aIo));
                jSONObject.putOpt("dynamic_version", this.aIp);
                jSONObject.putOpt("download_url", this.aIq);
                jSONObject.putOpt("duration_ms", Long.valueOf(this.aIr));
                jSONObject.putOpt("error_code", Integer.valueOf(this.aIs));
                jSONObject.putOpt("error_msg", this.aIt);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public final String toString() {
            return "MonitorInfo{load_status=" + this.aIn + ", update_count=" + this.aIo + ", dynamic_version='" + this.aIp + "', download_url='" + this.aIq + "', duration_ms=" + this.aIr + ", error_code=" + this.aIs + ", error_msg='" + this.aIt + "'}";
        }

        public /* synthetic */ a(byte b3) {
            this();
        }
    }

    public static void a(a.C0594a c0594a) {
        aIm++;
        a(1, c0594a, 0L, 0, "");
    }

    public static void b(a.C0594a c0594a) {
        a(5, c0594a, 0L, 0, "");
    }

    public static void b(a.C0594a c0594a, long j2) {
        a(6, c0594a, j2, 0, "");
    }

    public static void a(a.C0594a c0594a, long j2) {
        a(2, c0594a, j2, 0, "");
    }

    public static void b(a.C0594a c0594a, int i2, String str) {
        a(7, c0594a, 0L, i2, str);
    }

    public static void a(a.C0594a c0594a, long j2, String str) {
        a(3, c0594a, j2, 0, str);
    }

    public static void a(a.C0594a c0594a, int i2, String str) {
        a(4, c0594a, 0L, i2, str);
    }

    private static void a(int i2, a.C0594a c0594a, long j2, int i3, String str) {
        if (c0594a == null) {
            return;
        }
        try {
            JSONObject json = new a((byte) 0).dp(i2).dq(aIm).db(c0594a.sdkVersion).dc(c0594a.aHD).av(j2).dr(i3).dd(str).toJson();
            Objects.toString(json);
            com.kwad.sdk.api.c.g("reportDynamicUpdate", json);
        } catch (Throwable unused) {
        }
    }
}
