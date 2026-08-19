package com.kwad.sdk.core.config.item;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class b<T> {
    private T aQX;
    private T aQY;
    private String mKey;

    public b(String str, T t2) {
        this(str, t2, t2);
    }

    public static String ej(String str) {
        return !TextUtils.isEmpty(str) ? com.kwad.sdk.core.a.c.encodeKsSdk(str) : str;
    }

    public static String getDecodeString(String str) {
        return (TextUtils.isEmpty(str) || !com.kwad.sdk.core.a.c.isEncodeKsSdk(str)) ? str : com.kwad.sdk.core.a.c.decodeKsSdk(str);
    }

    public final T Lc() {
        return this.aQX;
    }

    public abstract void a(SharedPreferences sharedPreferences);

    public abstract void b(SharedPreferences.Editor editor);

    public final String getKey() {
        return this.mKey;
    }

    @Nullable
    public T getValue() {
        return this.aQY;
    }

    public abstract void l(JSONObject jSONObject);

    public void setValue(T t2) {
        this.aQY = t2;
    }

    private b(String str, T t2, T t3) {
        this.mKey = str;
        this.aQY = t2;
        this.aQX = t3;
        com.kwad.sdk.core.config.b.a(this);
    }
}
