package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class af extends ac {

    /* renamed from: a, reason: collision with root package name */
    private int f48652a;

    /* renamed from: b, reason: collision with root package name */
    private int f48653b;

    /* renamed from: c, reason: collision with root package name */
    private int f48654c;

    /* renamed from: d, reason: collision with root package name */
    private int f48655d;

    /* renamed from: e, reason: collision with root package name */
    private int f48656e;

    /* renamed from: f, reason: collision with root package name */
    private ArrayList<Pair<String, Integer>> f48657f;

    /* renamed from: g, reason: collision with root package name */
    private int f48658g;

    public af(String str, ArrayList<ad> arrayList) {
        super(str, arrayList);
        this.f48654c = 60;
        this.f48655d = 180;
    }

    public void a(int i2) {
        this.f48652a = i2;
    }

    public void b(int i2) {
        this.f48653b = i2;
    }

    public void c(int i2) {
        this.f48654c = i2;
    }

    public int d() {
        return this.f48656e;
    }

    public int e() {
        return this.f48652a;
    }

    public int f() {
        return this.f48653b;
    }

    public int g() {
        return this.f48654c;
    }

    public int h() {
        return this.f48655d;
    }

    public int i() {
        return at.a(this.f48654c, this.f48655d);
    }

    public ArrayList<Pair<String, Integer>> j() {
        return this.f48657f;
    }

    @Override // com.umeng.analytics.pro.ac
    public String a() {
        return super.a();
    }

    @Override // com.umeng.analytics.pro.ac
    public String b() {
        return super.b();
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(new String(ay.a(Base64.decode(str, 0), UMUtils.genSin())));
            int length = jSONArray.length();
            if (length > 0) {
                this.f48657f = new ArrayList<>();
            }
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String strOptString = jSONObject.has("type") ? jSONObject.optString("type") : "";
                int iValueOf = jSONObject.has(com.umeng.ccg.a.f49745G) ? Integer.valueOf(jSONObject.optInt(com.umeng.ccg.a.f49745G)) : 1;
                if (!TextUtils.isEmpty(strOptString)) {
                    this.f48657f.add(new Pair<>(strOptString, iValueOf));
                }
            }
            this.f48656e = this.f48657f.size();
            this.f48658g = 0;
        } catch (Throwable unused) {
        }
    }

    public void d(int i2) {
        this.f48655d = i2;
    }

    @Override // com.umeng.analytics.pro.ac
    public void a(String str) {
        super.a(str);
    }

    @Override // com.umeng.analytics.pro.ac
    public void b(String str) {
        super.b(str);
    }

    public JSONObject d(String str) {
        JSONObject jSONObject = null;
        try {
            if (this.f48658g < this.f48656e) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    String str2 = (String) this.f48657f.get(this.f48658g).first;
                    int iIntValue = ((Integer) this.f48657f.get(this.f48658g).second).intValue();
                    jSONObject2.put(com.umeng.ccg.a.f49744F, str2);
                    jSONObject2.put(com.umeng.ccg.a.f49745G, iIntValue);
                    jSONObject2.put(com.umeng.ccg.a.f49746H, this.f48658g);
                    jSONObject2.put("actionName", str);
                    jSONObject2.put("sdk", c());
                    jSONObject2.put(com.umeng.ccg.a.f49767u, "uapp");
                    jSONObject2.put(com.umeng.ccg.a.f49768v, "");
                    jSONObject2.put(com.umeng.ccg.a.f49769w, "");
                    jSONObject2.put(com.umeng.ccg.a.f49741C, this.f48653b);
                    jSONObject2.put(com.umeng.ccg.a.f49740B, this.f48652a);
                    int i2 = i();
                    jSONObject2.put("delay", i2);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "getNextTypeArg():: currIndex: " + this.f48658g + "; delay: " + i2);
                    this.f48658g = this.f48658g + 1;
                    return jSONObject2;
                } catch (Throwable unused) {
                    jSONObject = jSONObject2;
                }
            } else {
                this.f48658g = 0;
            }
        } catch (Throwable unused2) {
        }
        return jSONObject;
    }

    private void a(JSONObject jSONObject) {
        int i2;
        if (jSONObject != null) {
            try {
                int i3 = this.f48652a;
                int i4 = 0;
                if (i3 == 0) {
                    SharedPreferences sharedPreferencesA = av.a(UMGlobalContext.getAppContext());
                    if (sharedPreferencesA != null) {
                        int i5 = sharedPreferencesA.getInt(av.f48731h, 0);
                        if (i5 < this.f48656e) {
                            String str = (String) this.f48657f.get(i5).first;
                            int iIntValue = ((Integer) this.f48657f.get(i5).second).intValue();
                            jSONObject.put(com.umeng.ccg.a.f49744F, str);
                            jSONObject.put(com.umeng.ccg.a.f49745G, iIntValue);
                            jSONObject.put(com.umeng.ccg.a.f49746H, i5);
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "selPoclicy: 0, currIndex: " + i5);
                            if (i5 < this.f48656e - 1) {
                                i4 = i5 + 1;
                            }
                        } else {
                            String str2 = (String) this.f48657f.get(0).first;
                            int iIntValue2 = ((Integer) this.f48657f.get(0).second).intValue();
                            jSONObject.put(com.umeng.ccg.a.f49744F, str2);
                            jSONObject.put(com.umeng.ccg.a.f49745G, iIntValue2);
                            jSONObject.put(com.umeng.ccg.a.f49746H, 0);
                        }
                        sharedPreferencesA.edit().putInt(av.f48731h, i4).commit();
                        return;
                    }
                    return;
                }
                if (i3 == 1) {
                    int randNumber = DeviceConfig.getRandNumber(0, this.f48656e - 1);
                    String str3 = (String) this.f48657f.get(randNumber).first;
                    int iIntValue3 = ((Integer) this.f48657f.get(randNumber).second).intValue();
                    jSONObject.put(com.umeng.ccg.a.f49744F, str3);
                    jSONObject.put(com.umeng.ccg.a.f49745G, iIntValue3);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "selPoclicy: 1, currIndex: " + randNumber);
                    return;
                }
                if (i3 != 2 || (i2 = this.f48658g) >= this.f48656e) {
                    return;
                }
                String str4 = (String) this.f48657f.get(i2).first;
                int iIntValue4 = ((Integer) this.f48657f.get(this.f48658g).second).intValue();
                jSONObject.put(com.umeng.ccg.a.f49744F, str4);
                jSONObject.put(com.umeng.ccg.a.f49745G, iIntValue4);
                jSONObject.put(com.umeng.ccg.a.f49746H, this.f48658g);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "processInternal():: selPoclicy: 2, currIndex: " + this.f48658g);
                this.f48658g = this.f48658g + 1;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.umeng.analytics.pro.ac, com.umeng.analytics.pro.ak
    public void b(String str, JSONObject jSONObject) {
        super.b(str, jSONObject);
        if (jSONObject.has(com.umeng.ccg.a.f49740B)) {
            a(jSONObject.optInt(com.umeng.ccg.a.f49740B));
        }
        if (jSONObject.has(com.umeng.ccg.a.f49741C)) {
            b(jSONObject.optInt(com.umeng.ccg.a.f49741C));
        }
        if (jSONObject.has(com.umeng.ccg.a.f49739A)) {
            c(jSONObject.optString(com.umeng.ccg.a.f49739A));
        }
        if (jSONObject.has(com.umeng.ccg.a.f49742D)) {
            c(jSONObject.optInt(com.umeng.ccg.a.f49742D));
        }
        if (jSONObject.has(com.umeng.ccg.a.f49743E)) {
            d(jSONObject.optInt(com.umeng.ccg.a.f49743E));
        }
    }

    @Override // com.umeng.analytics.pro.ac
    public String c() {
        return super.c();
    }

    @Override // com.umeng.analytics.pro.ac, com.umeng.analytics.pro.ak
    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObjectA = super.a(str, jSONObject);
        if (this.f48656e == 0) {
            return null;
        }
        if (jSONObject != null) {
            try {
                jSONObjectA.put(com.umeng.ccg.a.f49741C, this.f48653b);
                jSONObjectA.put(com.umeng.ccg.a.f49740B, this.f48652a);
                int iOptInt = jSONObject.optInt(com.umeng.ccg.a.f49756j);
                if (this.f48653b == 0 && iOptInt == 202) {
                    a(jSONObjectA);
                }
                if (this.f48653b == 1 && iOptInt == 304) {
                    a(jSONObjectA);
                }
            } catch (Throwable unused) {
            }
        }
        return jSONObjectA;
    }
}
