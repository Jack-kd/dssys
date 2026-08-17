package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class cu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private Context f31036a;

    public cu(Context context) {
        this.f31036a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x03e2 A[Catch: Exception -> 0x0447, TryCatch #13 {Exception -> 0x0447, blocks: (B:49:0x03d3, B:51:0x03e2, B:53:0x040e, B:54:0x0444), top: B:103:0x03d3 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0458 A[Catch: Exception -> 0x0489, TRY_LEAVE, TryCatch #4 {Exception -> 0x0489, blocks: (B:55:0x0447, B:57:0x0458), top: B:85:0x0447 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x049a A[Catch: Exception -> 0x04dd, TRY_LEAVE, TryCatch #11 {Exception -> 0x04dd, blocks: (B:58:0x0489, B:60:0x049a), top: B:99:0x0489 }] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.kuaishou.weapon.p0.y b(java.lang.String r22) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.cu.b(java.lang.String):com.kuaishou.weapon.p0.y");
    }

    public void a(String str) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("result", 0) == 1) {
                String strA = new bl(this.f31036a).a(jSONObject.getString("antispamPluginRsp"));
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                y yVarB = b(strA);
                if (yVarB != null) {
                    dd.a(this.f31036a).a(str, yVarB);
                } else {
                    dd.a(this.f31036a).b(System.currentTimeMillis());
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        try {
            String str = cs.f31018a + cs.f31021d;
            String strA = ct.a(this.f31036a);
            if (!TextUtils.isEmpty(strA)) {
                str = str + "?" + strA;
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObjectB = ct.b(this.f31036a);
            if (jSONObjectB != null) {
                jSONObject.put("data", new bl(this.f31036a).c(jSONObjectB.toString()));
            }
            l lVarA = l.a(this.f31036a);
            m mVar = new m(str, jSONObject);
            mVar.a(WeaponHI.cookieData);
            mVar.b(WeaponHI.encryENV);
            lVarA.b(mVar, new j() { // from class: com.kuaishou.weapon.p0.cu.1
                @Override // com.kuaishou.weapon.p0.j
                public void a(String str2) {
                    try {
                        cu.this.a(str2);
                    } catch (Exception unused) {
                    }
                }

                @Override // com.kuaishou.weapon.p0.j
                public void b(String str2) {
                }
            });
        } catch (Exception unused) {
        }
    }
}
