package com.anythink.core.common.h;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class af {

    /* renamed from: b, reason: collision with root package name */
    private String f3697b;

    /* renamed from: a, reason: collision with root package name */
    private final List<a> f3696a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    private boolean f3698c = true;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final int f3699a;

        /* renamed from: b, reason: collision with root package name */
        final String f3700b;

        /* renamed from: c, reason: collision with root package name */
        final int f3701c;

        /* renamed from: d, reason: collision with root package name */
        final String f3702d;

        /* renamed from: e, reason: collision with root package name */
        final int f3703e;

        /* renamed from: f, reason: collision with root package name */
        final int f3704f;

        public a(int i2, String str, int i3, String str2, boolean z2, int i4) {
            this.f3699a = i2;
            this.f3700b = str;
            this.f3701c = i3;
            this.f3702d = str2 == null ? "" : str2;
            this.f3703e = z2 ? 1 : 0;
            this.f3704f = i4;
        }

        public final JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("priority", this.f3699a);
                jSONObject.put("unit_id", this.f3700b);
                jSONObject.put("nw_firm_id", this.f3701c);
                jSONObject.put("nw_ver", this.f3702d);
                jSONObject.put("result", this.f3703e);
                int i2 = this.f3704f;
                if (i2 != -1) {
                    jSONObject.put(MediationConstant.KEY_REASON, i2);
                }
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public final void a(int i2, String str, int i3, String str2, boolean z2, int i4) {
        this.f3696a.add(new a(i2, str, i3, str2, z2, i4));
        this.f3698c = true;
    }

    public final String toString() {
        if (this.f3698c) {
            JSONArray jSONArray = new JSONArray();
            Iterator<a> it = this.f3696a.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().a());
            }
            this.f3697b = jSONArray.toString();
            this.f3698c = false;
        }
        String str = this.f3697b;
        return str != null ? str : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }
}
