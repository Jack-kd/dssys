package com.byazt.lf;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 30})
@ATSKeep
/* loaded from: classes3.dex */
public class jx implements com.byazt.pg.k, Function {
    public final long hp = 60000;

    /* renamed from: l, reason: collision with root package name */
    public long f22484l;

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                onExceptionEvent((String) sparseArray.get(1), (JSONObject) sparseArray.get(2), (Throwable) sparseArray.get(3));
                break;
            case 2:
                onStatsEvent((String) sparseArray.get(1), (JSONObject) sparseArray.get(2));
                break;
            case 3:
                onStatsEvent((String) sparseArray.get(1), (JSONObject) sparseArray.get(2), (JSONObject) sparseArray.get(3));
                break;
            case 4:
                onAppLogMiscEvent((String) sparseArray.get(1), (JSONObject) sparseArray.get(2));
                break;
            case 5:
                onAdEventReport((String) sparseArray.get(1), (String) sparseArray.get(2), (String) sparseArray.get(3), (String) sparseArray.get(4));
                break;
            case 6:
                Object obj2 = sparseArray.get(1);
                Object obj3 = sparseArray.get(2);
                Object obj4 = sparseArray.get(3);
                Object obj5 = sparseArray.get(4);
                Object obj6 = sparseArray.get(5);
                Object obj7 = sparseArray.get(6);
                Object obj8 = sparseArray.get(7);
                Object lVar = obj8;
                if (obj8 != null) {
                    lVar = new com.byazt.dhy.l((Function) obj8);
                }
                onAdEventReport((String) obj2, (String) obj3, (String) obj4, (String) obj5, (String) obj6, (JSONObject) obj7, (com.byazt.dhy.hp) lVar);
                break;
        }
        return null;
    }

    @Override // com.byazt.pg.k
    public void onAdEventReport(String str, String str2, String str3, String str4) {
        com.byazt.jdb.j.hp(str, str2, str3, str4, (com.byazt.dhy.hp) null);
    }

    @Override // com.byazt.pg.k
    public void onAppLogMiscEvent(String str, JSONObject jSONObject) {
        com.byazt.jz.a.hp().hp(str, jSONObject);
    }

    @Override // com.byazt.pg.k
    public void onExceptionEvent(String str, JSONObject jSONObject, Throwable th) {
        if (str == null || !("okhttp_connectFailed".equals(str) || "okhttp_callFailed".equals(str))) {
            k.hp().hp(str, jSONObject, th);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f22484l > 60000) {
            k.hp().hp(str, jSONObject, th);
            this.f22484l = jCurrentTimeMillis;
        }
    }

    @Override // com.byazt.pg.k
    public void onStatsEvent(String str, JSONObject jSONObject) {
        k.hp().hp(str, jSONObject);
    }

    @Override // com.byazt.pg.k
    public void onAdEventReport(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, com.byazt.dhy.hp hpVar) {
        com.byazt.jdb.j.hp(str, str2, str3, str4, str5, jSONObject, hpVar);
    }

    @Override // com.byazt.pg.k
    public void onStatsEvent(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        k.hp().hp(str, jSONObject, jSONObject2);
    }
}
