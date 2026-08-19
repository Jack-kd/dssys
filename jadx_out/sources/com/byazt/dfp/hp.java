package com.byazt.dfp;

import androidx.core.app.NotificationCompat;
import com.anythink.core.common.f.f;
import com.anythink.core.e.m;
import com.byazt.js.j;
import com.byazt.js.jx;
import com.byazt.js.w;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 199, 28})
/* loaded from: classes2.dex */
public class hp {
    public static j hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        j jVar = new j();
        jVar.hp(jSONObject.optString("type"));
        jVar.l(jSONObject.optString(NotificationCompat.CATEGORY_EVENT));
        return jVar;
    }

    private static com.byazt.js.hp j(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.js.hp hpVar = new com.byazt.js.hp();
        hpVar.hp(jSONObject.optString("function"));
        hpVar.l(jSONObject.optString("as"));
        hpVar.jx(jSONObject.optString("filter"));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("trigger");
        if (jSONObjectOptJSONObject != null) {
            hpVar.hp(hp(jSONObjectOptJSONObject));
        }
        return hpVar;
    }

    public static com.byazt.js.l jx(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.js.l lVar = new com.byazt.js.l();
        lVar.hp(jSONObject.optString(f.a.f3244d));
        lVar.l(jSONObject.optString("as"));
        return lVar;
    }

    public static w l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        w wVar = new w();
        wVar.hp(jSONObject.optString("type"));
        wVar.hp(jSONObject.optLong("time"));
        wVar.l(jSONObject.optLong(m.a.ac));
        return wVar;
    }

    private static jx w(JSONObject jSONObject) {
        com.byazt.js.l lVarJx;
        com.byazt.js.hp hpVarJ;
        if (jSONObject == null) {
            return null;
        }
        jx jxVar = new jx();
        jxVar.hp(jSONObject.optString("ruleId"));
        jxVar.hp(jSONObject.optBoolean("getAds"));
        jxVar.hp((float) jSONObject.optDouble("rate"));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("config");
        if (jSONObjectOptJSONObject != null) {
            jxVar.l(jSONObjectOptJSONObject.optString("filter"));
            jxVar.jx(jSONObjectOptJSONObject.optString("groupBy"));
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("window");
            if (jSONObjectOptJSONObject2 != null) {
                jxVar.hp(l(jSONObjectOptJSONObject2));
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("aggregate");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject3 != null && (hpVarJ = j(jSONObjectOptJSONObject3)) != null) {
                        arrayList.add(hpVarJ);
                    }
                }
                jxVar.hp(arrayList);
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("outputs");
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i3);
                    if (jSONObjectOptJSONObject4 != null && (lVarJx = jx(jSONObjectOptJSONObject4)) != null) {
                        arrayList2.add(lVarJx);
                    }
                }
                jxVar.l(arrayList2);
            }
        }
        return jxVar;
    }

    public static List<jx> hp(JSONArray jSONArray) {
        jx jxVarW;
        if (jSONArray != null && jSONArray.length() != 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && (jxVarW = w(jSONObjectOptJSONObject)) != null) {
                        arrayList.add(jxVarW);
                    }
                }
                return arrayList;
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
