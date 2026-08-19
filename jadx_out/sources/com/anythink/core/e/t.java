package com.anythink.core.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    private static final String f9022a = "PrePlacementStrategy";

    /* renamed from: b, reason: collision with root package name */
    private String f9023b;

    private String c(String str) {
        int i2;
        int i3;
        Context contextG = com.anythink.core.common.d.s.b().g();
        if (contextG != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.f9023b)) {
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(contextG.getResources().getAssets().open(this.f9023b + File.separator + str + ".json")));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    JSONObject jSONObject = new JSONObject(com.anythink.core.common.v.j.b(sb.toString()));
                    int iOptInt = jSONObject.optInt(com.anythink.core.common.m.f.f5763M, 0);
                    if (iOptInt != 0) {
                        com.anythink.core.common.u.f.b("pre_s_cus_code_error", "sdk_cus_code = 0 strategy_cus_code = ".concat(String.valueOf(iOptInt)), com.anythink.core.common.d.s.b().r());
                        return "";
                    }
                    if (!jSONObject.isNull("sdk_ver")) {
                        String string = jSONObject.getString("sdk_ver");
                        if (!TextUtils.isEmpty(string) && (i3 = Integer.parseInt(com.anythink.core.common.v.o.a().replace("UA_", "").replace(com.anythink.core.common.d.i.f2495E, ""))) < (i2 = Integer.parseInt(string.replace(com.anythink.core.common.d.i.f2495E, "")))) {
                            Log.e(f9022a, String.format("The sdk version(%s) must be greater than or equal to the version(%s) in the placement strategy.", Integer.valueOf(i3), Integer.valueOf(i2)));
                            return "";
                        }
                    }
                    if (!jSONObject.isNull(com.anythink.core.common.m.f.bn)) {
                        String string2 = jSONObject.getString(com.anythink.core.common.m.f.bn);
                        if (!TextUtils.isEmpty(string2) && !str.equals(string2)) {
                            return "";
                        }
                    }
                    if (!jSONObject.isNull("pl_data")) {
                        return jSONObject.getJSONObject("pl_data").toString();
                    }
                } catch (IOException unused) {
                    return "";
                }
            } catch (Throwable th) {
                Log.e(f9022a, "Get pre placement strategy failed: " + th.getMessage());
            }
        }
        return "";
    }

    public final void a(String str) {
        this.f9023b = str;
    }

    public final m b(String str) {
        String strC = c(str);
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        try {
            m mVarA = m.a(str, new JSONObject(strC));
            mVarA.a(1);
            return mVarA;
        } catch (Throwable unused) {
            return null;
        }
    }
}
