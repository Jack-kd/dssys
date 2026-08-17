package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class cn {
    public static void a(Context context, String str) {
        try {
            a(context, str, null, false, true);
        } catch (Throwable unused) {
        }
    }

    public static void a(final Context context, String str, final String str2, final boolean z2, boolean z3) {
        JSONObject jSONObject;
        try {
            String str3 = cs.f31018a + cs.f31022e;
            String strA = ct.a(context);
            if (!TextUtils.isEmpty(strA)) {
                if (!cs.a() || str2 == null) {
                    str3 = str3 + "?" + strA;
                } else {
                    str3 = str3 + "?logId=" + str2 + "&" + strA;
                }
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (z3) {
                jSONObject = new JSONObject();
                String strC = new bl(context).c(str);
                if (!TextUtils.isEmpty(strC)) {
                    jSONObject.put("data", strC);
                }
            } else {
                jSONObject = new JSONObject(str);
            }
            l lVarA = l.a(context);
            m mVar = new m(str3, jSONObject);
            mVar.a(WeaponHI.cookieData);
            mVar.b(WeaponHI.encryENV);
            lVarA.b(mVar, new j() { // from class: com.kuaishou.weapon.p0.cn.1
                @Override // com.kuaishou.weapon.p0.j
                public final void a(String str4) {
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    try {
                        if (str2.equals(ci.f30959c)) {
                            dd.a(context).a(System.currentTimeMillis());
                            return;
                        }
                        if (str2.equals(ci.f30960d)) {
                            dd.a(context).a(dd.bj, System.currentTimeMillis());
                            return;
                        }
                        if (str2.equals(ci.f30961e)) {
                            dd.a(context).a(dd.bi, System.currentTimeMillis());
                        } else if (str2.equals(ci.f30964h)) {
                            dd.a(context).a(dd.bm, System.currentTimeMillis());
                        } else if (str2.equals(ci.f30957a)) {
                            dd.a(context).a(dd.bh, System.currentTimeMillis());
                        }
                    } catch (Exception unused) {
                    }
                }

                @Override // com.kuaishou.weapon.p0.j
                public final void b(String str4) {
                    if (z2) {
                        TextUtils.isEmpty(str2);
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }
}
