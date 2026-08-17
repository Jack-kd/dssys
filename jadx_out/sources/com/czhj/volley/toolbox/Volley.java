package com.czhj.volley.toolbox;

import android.content.Context;
import com.czhj.volley.Network;
import com.czhj.volley.RequestQueue;

/* loaded from: classes3.dex */
public class Volley {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29701a = "volley";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f29702b;

    private static RequestQueue a(Context context, Network network) {
        RequestQueue requestQueue = new RequestQueue(network);
        requestQueue.start();
        return requestQueue;
    }

    public static boolean isEnableOkhttp3() {
        return f29702b;
    }

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, null);
    }

    public static void setEnableOkhttp3(boolean z2) {
        f29702b = z2;
    }

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        return a(context, baseHttpStack == null ? new BasicNetwork(new HurlStack()) : new BasicNetwork(baseHttpStack));
    }
}
