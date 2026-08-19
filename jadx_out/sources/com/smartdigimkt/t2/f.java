package com.smartdigimkt.t2;

import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.v2.b0;
import com.smartdigimkt.v2.e0;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public final e f44253b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.u2.c f44254c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.u2.c f44255d;

    /* renamed from: e, reason: collision with root package name */
    public int f44256e;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f44259h;

    /* renamed from: i, reason: collision with root package name */
    public final d f44260i = new d(this);

    /* renamed from: a, reason: collision with root package name */
    public final b f44252a = new b();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f44257f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final JSONArray f44258g = new JSONArray();

    public f(com.smartdigimkt.l3.a aVar, boolean z2, e eVar) {
        this.f44259h = z2;
        this.f44253b = eVar;
    }

    public final void a(String str) {
        String str2;
        b0 b0Var;
        if (TextUtils.isEmpty(str) || !Pattern.compile("<VAST\\s.*version\\s*=\\s*\".*\"(\\s.*|)?>").matcher(str).find()) {
            this.f44253b.a(-3, "VAST schema validation error.");
            return;
        }
        try {
            this.f44258g.put(str);
        } catch (Throwable unused) {
        }
        this.f44256e++;
        try {
            com.smartdigimkt.u2.c cVar = new com.smartdigimkt.u2.c(str);
            if (this.f44254c == null) {
                this.f44254c = cVar;
            } else {
                this.f44255d.f44394a = cVar;
            }
            this.f44255d = cVar;
            ArrayList arrayList = cVar.f44398e.f44706a;
            if (arrayList != null) {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    e0 e0Var = ((com.smartdigimkt.v2.a) obj).f44668b;
                    if (e0Var != null && (b0Var = e0Var.f44674a) != null) {
                        str2 = b0Var.f44670a;
                        break;
                    }
                }
                str2 = null;
            } else {
                str2 = null;
            }
            if (TextUtils.isEmpty(str2)) {
                this.f44253b.a(new com.smartdigimkt.u2.a[]{this.f44254c, this.f44255d}, this.f44258g);
                return;
            }
            if (this.f44256e >= 5) {
                this.f44253b.a(-2, "Wrapper limit reached, as defined by the video player. Too many Wrapper responses have been received with no InLine response.");
                this.f44256e = 0;
                return;
            }
            this.f44257f.add(str2);
            if (this.f44259h) {
                return;
            }
            b bVar = this.f44252a;
            bVar.f44248b = this.f44260i;
            com.smartdigimkt.b4.e.a().a(new a(bVar, str2), 10);
        } catch (c e2) {
            Log.getStackTraceString(e2);
            this.f44253b.a(-3, "AdResponseParserVast creation failed: " + e2.f44250a);
        }
    }
}
