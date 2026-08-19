package com.byazt.gjx;

import android.text.TextUtils;
import android.util.Base64;
import com.byakv.z.SoftDecTool;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 737, 150})
/* loaded from: classes2.dex */
public class q {
    public static volatile q hp = null;
    public static AtomicInteger jx = new AtomicInteger(0);

    /* renamed from: l, reason: collision with root package name */
    public static volatile boolean f20488l = false;

    private q() {
    }

    public static q hp() {
        if (hp == null) {
            synchronized (q.class) {
                try {
                    if (hp == null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        try {
                            com.byazt.dnb.eb.hp("panglearmor");
                            f20488l = true;
                            jx.set(1);
                        } catch (Throwable unused) {
                            f20488l = false;
                            jx.set(2);
                        }
                        hp = new q();
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        s sVarA = a.a();
                        if (sVarA != null) {
                            sVarA.hp(jCurrentTimeMillis2 - jCurrentTimeMillis, f20488l);
                        }
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static int jx() {
        return jx.get();
    }

    public static boolean l() {
        return f20488l;
    }

    public byte[] l(byte[] bArr) {
        if (bArr != null && bArr.length != 0 && f20488l) {
            try {
                return SoftDecTool.bc(1011, bArr);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public byte[] hp(byte[] bArr) {
        if (bArr != null && bArr.length != 0 && f20488l) {
            try {
                return SoftDecTool.bc(1010, bArr);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public JSONObject hp(JSONObject jSONObject) {
        if (jSONObject != null && f20488l) {
            try {
                byte[] bArrHp = hp(jSONObject.toString().getBytes());
                if (bArrHp != null) {
                    String strEncodeToString = Base64.encodeToString(bArrHp, 0);
                    if (!TextUtils.isEmpty(strEncodeToString)) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("message", strEncodeToString);
                        jSONObject2.put("cypher", 4);
                        return jSONObject2;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public String hp(String str) {
        if (str != null && str.length() != 0 && f20488l) {
            try {
                byte[] bArrL = l(Base64.decode(str, 0));
                if (bArrL != null) {
                    return new String(bArrL);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
