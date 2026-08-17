package com.czhj.volley;

import com.czhj.volley.Cache;

/* loaded from: classes3.dex */
public class Response<T> {
    public final Cache.Entry cacheEntry;
    public final VolleyError error;
    public boolean intermediate;
    public final T result;

    public interface ErrorListener {
        void onErrorResponse(VolleyError volleyError);
    }

    public interface Listener<T> {
        void onResponse(T t2);
    }

    private Response(VolleyError volleyError) {
        this.intermediate = false;
        this.result = null;
        this.cacheEntry = null;
        this.error = volleyError;
    }

    public static <T> Response<T> error(VolleyError volleyError) {
        return new Response<>(volleyError);
    }

    public static <T> Response<T> success(T t2, Cache.Entry entry) {
        return new Response<>(t2, entry);
    }

    public boolean isSuccess() {
        return this.error == null;
    }

    private Response(T t2, Cache.Entry entry) {
        this.intermediate = false;
        this.result = t2;
        this.cacheEntry = entry;
        this.error = null;
    }
}
