package com.byazt.lsx;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.zg.ns;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 94})
/* loaded from: classes3.dex */
public class eb extends hp {

    /* renamed from: j, reason: collision with root package name */
    public static final SimpleDateFormat f22766j = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public eb(String str, JSONObject jSONObject) {
        super(str, jSONObject);
    }

    public static eb hp(Context context, j jVar, JSONObject jSONObject) {
        return new eb(UUID.randomUUID().toString(), l(context, jVar, jSONObject));
    }

    private static JSONObject l(Context context, j jVar, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt(NotificationCompat.CATEGORY_EVENT, jVar.hp);
            jSONObject2.putOpt("params", jSONObject);
            jSONObject2.putOpt("nt", Integer.valueOf(ns.l()));
            jSONObject2.putOpt("datetime", f22766j.format(new Date()));
            return jSONObject2;
        } catch (Exception e2) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("params");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("event_extra");
                    if (!TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject3 = new JSONObject(strOptString);
                        jSONObject3.putOpt("v3_err_msg", e2.toString());
                        jSONObjectOptJSONObject.putOpt("event_extra", jSONObject3.toString());
                    }
                }
                if (jVar != null) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.putOpt("v3_eventId", jVar.cx.get("event_id"));
                    jSONObject4.putOpt("v3_err_msg", e2.toString());
                }
            } catch (Throwable unused) {
            }
            return jSONObject2;
        }
    }

    @Override // com.byazt.lsx.hp
    public String toString() {
        return "AdEventV3{localId='" + this.hp + "', event=" + this.f22768l + '}';
    }
}
