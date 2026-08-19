package com.smartdigimkt.r4;

import android.net.Uri;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class h extends d {

    /* renamed from: a, reason: collision with root package name */
    public final String f43065a;

    /* renamed from: b, reason: collision with root package name */
    public final JSONObject f43066b;

    public h(int i2, com.smartdigimkt.p3.a aVar, String str) {
        String str2;
        String str3 = "";
        try {
            switch (i2) {
                case 1:
                    str2 = aVar.f42590f0;
                    str3 = str2;
                    break;
                case 2:
                    str2 = aVar.f42591g0;
                    str3 = str2;
                    break;
                case 3:
                    str2 = aVar.f42592h0;
                    str3 = str2;
                    break;
                case 4:
                    str2 = aVar.f42593i0;
                    str3 = str2;
                    break;
                case 5:
                    str2 = aVar.f42594j0;
                    str3 = str2;
                    break;
                case 6:
                    str2 = aVar.f42595k0;
                    str3 = str2;
                    break;
                case 7:
                    str2 = aVar.f42596l0;
                    str3 = str2;
                    break;
                case 8:
                    str2 = aVar.f42597m0;
                    str3 = str2;
                    break;
                case 9:
                    str2 = aVar.f42598n0;
                    str3 = str2;
                    break;
            }
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            Uri uri = Uri.parse(aVar.b(str3));
            this.f43065a = uri.getScheme() + "://" + uri.getAuthority() + uri.getPath();
            this.f43066b = new JSONObject();
            for (String str4 : uri.getQueryParameterNames()) {
                this.f43066b.put(str4, URLEncoder.encode(uri.getQueryParameter(str4)));
            }
            this.f43066b.put("req_id", str);
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() throws JSONException {
        JSONObject jSONObject = this.f43066b;
        if (jSONObject == null) {
            return new byte[0];
        }
        try {
            jSONObject.put(bv.aI, String.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
        return d.a(this.f43066b.toString());
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        return this.f43065a;
    }
}
