package com.czhj.sdk.common.network;

import com.czhj.volley.toolbox.HurlStack;

/* loaded from: classes3.dex */
class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29395a = "mp_tmpl_advertising_id";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29396b = "mp_tmpl_do_not_track";

    @Override // com.czhj.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String str) {
        if (!str.contains(f29395a)) {
            str.contains(f29396b);
        }
        return str;
    }
}
