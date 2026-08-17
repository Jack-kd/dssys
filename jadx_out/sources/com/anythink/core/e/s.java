package com.anythink.core.e;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.e.b;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    private static final String f9020a = "s";

    /* renamed from: b, reason: collision with root package name */
    private String f9021b;

    private String c(String str) throws IOException {
        try {
            Context contextG = com.anythink.core.common.d.s.b().g();
            if (contextG != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.f9021b)) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(contextG.getResources().getAssets().open(this.f9021b + File.separator + str + ".json")));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            return com.anythink.core.common.v.j.b(sb.toString());
                        }
                        sb.append(line);
                    }
                } catch (IOException unused) {
                }
            }
            return "";
        } catch (Exception e2) {
            Log.e(f9020a, "getPreAppStrategyStr() >>> error: " + e2.getMessage());
            return "";
        }
    }

    public final void a(String str) {
        this.f9021b = str;
    }

    public final b b(String str) {
        Looper.myLooper();
        Looper.getMainLooper();
        try {
            String strC = c(str);
            if (TextUtils.isEmpty(strC)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strC);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(b.a.f8734k);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("st");
            com.anythink.core.common.r.g gVarA = com.anythink.core.common.r.g.a(jSONObjectOptJSONObject);
            b bVar = new b();
            if (gVarA != null) {
                gVarA.l();
                bVar.a(gVarA);
            }
            if (jSONObjectOptJSONObject2 != null) {
                b.a(bVar, jSONObjectOptJSONObject2);
            }
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
