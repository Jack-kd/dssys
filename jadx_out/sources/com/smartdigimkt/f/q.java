package com.smartdigimkt.f;

import com.anythink.core.common.f.g;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final String f40156a;

    /* renamed from: b, reason: collision with root package name */
    public final String f40157b;

    /* renamed from: c, reason: collision with root package name */
    public final String f40158c;

    /* renamed from: d, reason: collision with root package name */
    public final long f40159d;

    /* renamed from: e, reason: collision with root package name */
    public final long f40160e;

    /* renamed from: f, reason: collision with root package name */
    public final String f40161f;

    /* renamed from: g, reason: collision with root package name */
    public final int f40162g;

    /* renamed from: h, reason: collision with root package name */
    public final JSONObject f40163h;

    public q(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                this.f40163h = jSONObject;
                this.f40162g = jSONObject.optInt("forbid", 1);
                String strOptString = jSONObject.optString("update_ver");
                this.f40156a = strOptString;
                try {
                    this.f40161f = strOptString.split("-")[0];
                } catch (Throwable unused) {
                    this.f40156a = "";
                }
                this.f40157b = jSONObject.optString("dl_url");
                this.f40158c = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
                this.f40159d = jSONObject.optLong("update_ts");
                this.f40160e = jSONObject.optLong(g.a.f3252D, 0L);
            } catch (Throwable unused2) {
            }
        }
    }

    public final String toString() {
        return "{pl_update_ver='" + this.f40156a + "', pl_url='" + this.f40157b + "', pl_md5='" + this.f40158c + "', pl_update_time=" + this.f40159d + ", pl_file_size=" + this.f40160e + ", pl_id=" + this.f40161f + ", pl_forbid=" + this.f40162g + '}';
    }
}
