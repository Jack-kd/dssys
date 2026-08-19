package com.byazt.hk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 227, 94})
/* loaded from: classes2.dex */
public final class eb {
    public static l<u> hp = new l<u>() { // from class: com.byazt.hk.eb.1
        @Override // com.byazt.hk.l
        /* renamed from: jx, reason: merged with bridge method [inline-methods] */
        public u hp(Object... objArr) {
            return new u((Context) objArr[0]);
        }
    };

    @AnyThread
    public static void hp(@NonNull Context context) {
        hp.l(context).l();
    }

    @WorkerThread
    public static String hp(SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        return j.hp(sharedPreferences);
    }

    @Nullable
    @WorkerThread
    public static Map<String, String> hp(@NonNull Context context, @NonNull SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        u uVarL = hp.l(context);
        return uVarL.hp(uVarL.hp() instanceof jl ? 200 : 100);
    }

    @Nullable
    @AnyThread
    public static String hp(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString("id", null);
        }
        return null;
    }

    @AnyThread
    public static void hp(@Nullable com.byazt.ub.w wVar) {
        u.hp(wVar);
    }
}
