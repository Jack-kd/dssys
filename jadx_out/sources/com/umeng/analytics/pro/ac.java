package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.umeng.ccg.ActionInfo;
import com.umeng.ccg.CcgAgent;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ac implements ak {

    /* renamed from: a, reason: collision with root package name */
    private String f48644a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<ad> f48645b;

    /* renamed from: c, reason: collision with root package name */
    private String f48646c;

    /* renamed from: d, reason: collision with root package name */
    private String f48647d;

    /* renamed from: e, reason: collision with root package name */
    private String f48648e;

    /* renamed from: f, reason: collision with root package name */
    private String f48649f;

    public ac(String str, ArrayList<ad> arrayList) {
        this.f48644a = null;
        new ArrayList();
        this.f48646c = "";
        this.f48647d = "";
        this.f48648e = "";
        this.f48649f = "";
        this.f48644a = str;
        this.f48645b = arrayList;
    }

    public String a() {
        return this.f48644a;
    }

    @Override // com.umeng.analytics.pro.ak
    public void b(String str, JSONObject jSONObject) {
    }

    public String c() {
        return this.f48647d;
    }

    private String c(String str) {
        String[] strArrSplit = str.split(",");
        String str2 = "";
        if (strArrSplit.length > 0) {
            ArrayList<String> forbidSdkArray = CcgAgent.getForbidSdkArray(this.f48644a);
            if (forbidSdkArray == null || forbidSdkArray.size() <= 0) {
                for (String str3 : strArrSplit) {
                    ActionInfo actionInfo = CcgAgent.getActionInfo(str3);
                    if (actionInfo != null) {
                        String[] supportAction = actionInfo.getSupportAction(UMGlobalContext.getAppContext());
                        if (supportAction.length > 0) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= supportAction.length) {
                                    break;
                                }
                                if (this.f48644a.equals(supportAction[i2])) {
                                    str2 = str3;
                                    break;
                                }
                                i2++;
                            }
                            if (!TextUtils.isEmpty(str2)) {
                                return str2;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } else {
                this.f48649f = forbidSdkArray.toString();
                for (String str4 : strArrSplit) {
                    if (CcgAgent.getActionInfo(str4) != null && !forbidSdkArray.contains(str4)) {
                        return str4;
                    }
                }
            }
        }
        return str2;
    }

    public void a(String str) {
        this.f48646c = str;
    }

    public String b() {
        return this.f48646c;
    }

    @Override // com.umeng.analytics.pro.ak
    public JSONObject a(String str, JSONObject jSONObject) {
        try {
            int size = this.f48645b.size();
            if (size == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.f48645b.get(i2).b()) {
                    return null;
                }
            }
            if (CcgAgent.hasRegistedActionInfo() && !TextUtils.isEmpty(this.f48647d)) {
                String strC = c(this.f48647d);
                this.f48648e = strC;
                if (TextUtils.isEmpty(strC)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "采集项：" + this.f48644a + "; 未选中可用Module ; sdk: " + this.f48647d);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "采集项：" + this.f48644a + "; 选中Module: " + this.f48648e + "; sdk: " + this.f48647d);
                }
            }
            ad adVar = this.f48645b.get(size - 1);
            if (adVar == null || !(adVar instanceof ag)) {
                return null;
            }
            long jC = adVar.c();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("actionName", this.f48644a);
                jSONObject2.put("sdk", this.f48647d);
                jSONObject2.put(com.umeng.ccg.a.f49767u, this.f48646c);
                jSONObject2.put("delay", jC);
                jSONObject2.put(com.umeng.ccg.a.f49768v, this.f48648e);
                jSONObject2.put(com.umeng.ccg.a.f49769w, this.f48649f);
                return jSONObject2;
            } catch (Throwable unused) {
                return jSONObject2;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public void b(String str) {
        this.f48647d = str;
    }
}
