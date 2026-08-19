package com.byazt.sf;

import android.content.Context;
import android.util.SparseArray;
import java.util.function.Function;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface jx {
    void init(Context context, Function<SparseArray<Object>, Object> function);

    boolean isPitayaEnvAvailable();

    boolean isPitayaInitSuccess();

    void onAppLogEvent(String str, JSONObject jSONObject);

    void queryPackage(String str, Function<SparseArray<Object>, Object> function);

    void runTask(String str, JSONObject jSONObject, Function<SparseArray<Object>, Object> function);
}
