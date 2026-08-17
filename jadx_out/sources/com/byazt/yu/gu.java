package com.byazt.yu;

import android.content.Context;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28287w;

    public gu(Context context) {
        super(true, true);
        this.f28287w = context;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        q.hp(jSONObject, "language", this.f28287w.getResources().getConfiguration().locale.getLanguage());
        jSONObject.put("timezone", com.byazt.gt.hp.jx());
        q.hp(jSONObject, "region", Locale.getDefault().getCountry());
        TimeZone timeZone = Calendar.getInstance().getTimeZone();
        q.hp(jSONObject, "tz_name", timeZone.getID());
        jSONObject.put("tz_offset", timeZone.getOffset(System.currentTimeMillis() / 1000));
        return true;
    }
}
