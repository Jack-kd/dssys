package o;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.TypedValue;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class h {
    public static int a(Context context, float f2) {
        return (int) TypedValue.applyDimension(1, f2, context.getResources().getDisplayMetrics());
    }

    public static Intent b(int i2) {
        return c(i2, "");
    }

    public static Intent c(int i2, String str) throws JSONException {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i2);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("msg", str);
            }
        } catch (JSONException e2) {
            d.c(e2);
        }
        intent.putExtra("extra_oauth_result_json", jSONObject.toString());
        return intent;
    }
}
