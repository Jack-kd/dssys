package com.byazt.qg;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1908, 34})
/* loaded from: classes3.dex */
public class l {
    public Uri hp;
    public Map<String, String> jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24704l;

    public l(WebResourceRequest webResourceRequest, String str) {
        if (webResourceRequest != null) {
            this.hp = webResourceRequest.getUrl();
            this.f24704l = webResourceRequest.getMethod();
            this.jx = webResourceRequest.getRequestHeaders();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.hp = Uri.parse(str);
        this.f24704l = "GET";
    }

    public Uri hp() {
        return this.hp;
    }

    public Map<String, String> jx() {
        return this.jx;
    }

    public String l() {
        return this.f24704l;
    }
}
