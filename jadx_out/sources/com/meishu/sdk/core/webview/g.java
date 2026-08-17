package com.meishu.sdk.core.webview;

import android.text.TextUtils;
import com.meishu.sdk.core.utils.LogUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public final List<com.meishu.sdk.core.webview.listener.g> f32116a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<String, Integer> f32117b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public final List<String> f32118c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d, reason: collision with root package name */
    public String f32119d;

    /* renamed from: e, reason: collision with root package name */
    public final String f32120e;

    public g(String str) {
        this.f32120e = str;
        this.f32119d = str;
    }

    public void a(com.meishu.sdk.core.webview.listener.a aVar) {
        if (!(aVar instanceof com.meishu.sdk.core.webview.listener.g) || this.f32116a.contains(aVar)) {
            return;
        }
        this.f32116a.add((com.meishu.sdk.core.webview.listener.g) aVar);
    }

    public void a(String str, int i2) {
        try {
            if (!TextUtils.isEmpty(str) && a(str) == -1) {
                LogUtil.dev("H5LoadSate", "recordErrorUrl:" + str);
                this.f32117b.put(str, Integer.valueOf(i2));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int a(String str) {
        try {
            if (TextUtils.isEmpty(str) || !this.f32117b.containsKey(str)) {
                return -1;
            }
            return this.f32117b.get(str).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }
}
