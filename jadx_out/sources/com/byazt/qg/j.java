package com.byazt.qg;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.sz;
import com.byazt.uhg.a;
import com.byazt.uhg.e;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uid.w;
import com.byazt.xci.mp;
import com.byazt.ymw.eb;
import com.byazt.ymw.vv;
import com.byazt.zf.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1908, 38})
/* loaded from: classes3.dex */
public class j implements hp {
    public static final AtomicInteger hp = new AtomicInteger(0);

    /* renamed from: a, reason: collision with root package name */
    public String f24692a;

    /* renamed from: j, reason: collision with root package name */
    public List<com.byazt.zf.hp> f24693j = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public HashMap<String, HashMap<String, byte[]>> f24695w = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public AtomicInteger f24694l = new AtomicInteger(0);
    public final ExecutorService jx = w.hp();

    private j(jx jxVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        j jVar;
        String str5;
        String str6;
        JSONObject jSONObject2;
        String str7;
        String str8;
        if (jxVar != null) {
            if (jxVar.hp()) {
                jVar = this;
                str5 = str;
                str6 = str2;
                jSONObject2 = jSONObject;
                str7 = str3;
                str8 = str4;
                com.byazt.zf.l lVar = new com.byazt.zf.l(jVar, str5, str6, jSONObject2, str7, str8);
                lVar.l();
                jVar.f24693j.add(lVar);
            } else {
                jVar = this;
                str5 = str;
                str6 = str2;
                jSONObject2 = jSONObject;
                str7 = str3;
                str8 = str4;
            }
            if (jxVar.l()) {
                String str9 = str8;
                String str10 = str7;
                JSONObject jSONObject3 = jSONObject2;
                com.byazt.zf.jx jxVar2 = new com.byazt.zf.jx(this, str5, str6, jSONObject3, str10, str9);
                jVar = this;
                str8 = str9;
                jxVar2.l();
                jVar.f24693j.add(jxVar2);
            }
            jVar.f24692a = str8;
            hp.incrementAndGet();
            hp((WebView) null, jVar.f24692a);
        }
    }

    public static boolean jx() {
        return true;
    }

    public void j() {
        if (!this.f24693j.isEmpty()) {
            Iterator<com.byazt.zf.hp> it = this.f24693j.iterator();
            while (it.hasNext()) {
                it.next().jx();
            }
        }
        this.f24693j.clear();
    }

    @Override // com.byazt.qg.hp
    public AtomicInteger l() {
        return this.f24694l;
    }

    @Override // com.byazt.qg.hp
    public HashMap<String, HashMap<String, byte[]>> hp() {
        return this.f24695w;
    }

    public WebResourceResponse l(WebView webView, final l lVar, WebResourceResponse webResourceResponse) {
        String strL;
        if (lVar != null && (strL = lVar.l()) != null && TextUtils.equals(strL, "get")) {
            if (sz.l().nr() == 1) {
                WebResourceResponse webResourceResponseHp = hp(sz.getContext(), this.f24692a, lVar);
                if (webResourceResponseHp != null) {
                    webResourceResponseHp.getResponseHeaders().put("Access-Control-Allow-Origin", "*");
                    return webResourceResponseHp;
                }
            } else {
                hp(new Runnable() { // from class: com.byazt.qg.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        j.this.hp(sz.getContext(), j.this.f24692a, lVar);
                    }
                });
            }
        }
        return webResourceResponse;
    }

    public static jx hp(mp mpVar, Context context) {
        boolean z2 = false;
        boolean z3 = mpVar.i() == 1;
        boolean zHp = com.byazt.evz.l.hp(mpVar.wv() / 100.0f, false);
        boolean z4 = sz.l().pc() == 1;
        boolean z5 = vv.j(context) || !(sz.l().gd() == 1);
        boolean zJx = jx();
        boolean z6 = z3 && z4 && z5 && zJx;
        if (zHp && z4 && zJx) {
            z2 = true;
        }
        jx jxVar = new jx();
        jxVar.hp(z6);
        jxVar.l(z2);
        return jxVar;
    }

    public static String l(Context context) {
        return eb.l(context, false, null).getAbsolutePath() + File.separator + ".lp_cache";
    }

    public static j hp(Context context, mp mpVar, String str) {
        JSONObject jSONObjectQ_;
        jx jxVarHp = hp(mpVar, context);
        if ((!jxVarHp.hp() && !jxVarHp.l()) || (jSONObjectQ_ = mpVar.q_()) == null) {
            return null;
        }
        String strOptString = jSONObjectQ_.optString("cid");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        String strOptString2 = jSONObjectQ_.optString("req_id");
        if (TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new j(jxVarHp, strOptString, strOptString2, jSONObjectQ_, mpVar.w_(), str);
    }

    public WebResourceResponse hp(WebView webView, l lVar, WebResourceResponse webResourceResponse) {
        Iterator<com.byazt.zf.hp> it = this.f24693j.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (it.next().hp(webView)) {
                z2 = true;
            }
        }
        return !z2 ? webResourceResponse : l(webView, lVar, webResourceResponse);
    }

    @Override // com.byazt.qg.hp
    public void hp(final Runnable runnable) {
        this.jx.submit(new Runnable() { // from class: com.byazt.qg.j.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (j.this.jx) {
                    try {
                        runnable.run();
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public WebResourceResponse hp(final Context context, final String str, final l lVar) {
        WebResourceResponse webResourceResponse;
        final Pair<WebResourceResponse, WebResourceResponse> pairHp;
        final Pair<WebResourceResponse, e> pairHp2 = hp(lVar);
        if (pairHp2 == null || (webResourceResponse = (WebResourceResponse) pairHp2.first) == null) {
            return null;
        }
        Iterator<com.byazt.zf.hp> it = this.f24693j.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (it.next().hp((e) pairHp2.second)) {
                z2 = true;
            }
        }
        if (!z2 || (pairHp = hp(webResourceResponse)) == null) {
            return null;
        }
        for (final com.byazt.zf.hp hpVar : this.f24693j) {
            hpVar.hp(lVar, (WebResourceResponse) pairHp.second, (e) pairHp2.second, new hp.InterfaceC0435hp() { // from class: com.byazt.qg.j.3
                @Override // com.byazt.zf.hp.InterfaceC0435hp
                public void hp(boolean z3, final Map<String, Object> map) {
                    if (z3) {
                        j.this.hp(new Runnable() { // from class: com.byazt.qg.j.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    AtomicBoolean atomicBoolean = hpVar.f28403w;
                                    if (atomicBoolean == null || atomicBoolean.get()) {
                                        return;
                                    }
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    j.this.hp(context, str, lVar, (WebResourceResponse) pairHp.second, (e) pairHp2.second, map, hpVar);
                                } catch (Throwable unused) {
                                }
                            }
                        });
                    }
                }
            });
        }
        return (WebResourceResponse) pairHp.first;
    }

    public void hp(Context context, String str, l lVar, WebResourceResponse webResourceResponse, e eVar, Map<String, Object> map, com.byazt.zf.hp hpVar) {
        if (hpVar.hp(eVar)) {
            sz.l().tw();
            if (sz.l().tw() == 1) {
                hpVar.hp(context, str, lVar, webResourceResponse, eVar, map);
            } else {
                hpVar.l(context, str, lVar, webResourceResponse, eVar, map);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Pair<android.webkit.WebResourceResponse, android.webkit.WebResourceResponse> hp(android.webkit.WebResourceResponse r13) {
        /*
            r12 = this;
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 0
            java.io.InputStream r2 = r13.getData()     // Catch: java.lang.Exception -> L27
            int r2 = com.byazt.bo.l.hp(r2, r0)     // Catch: java.lang.Exception -> L27
            r3 = -1
            if (r2 == r3) goto L24
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch: java.lang.Exception -> L27
            byte[] r3 = r0.toByteArray()     // Catch: java.lang.Exception -> L27
            r2.<init>(r3)     // Catch: java.lang.Exception -> L27
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Exception -> L28
            byte[] r4 = r0.toByteArray()     // Catch: java.lang.Exception -> L28
            r3.<init>(r4)     // Catch: java.lang.Exception -> L28
            goto L2c
        L24:
            r2 = r1
            r3 = r2
            goto L2c
        L27:
            r2 = r1
        L28:
            r0.close()     // Catch: java.lang.Throwable -> L2b
        L2b:
            r3 = r1
        L2c:
            boolean r0 = jx()
            if (r0 == 0) goto L7f
            android.webkit.WebResourceResponse r4 = new android.webkit.WebResourceResponse
            java.lang.String r5 = r13.getMimeType()
            java.lang.String r6 = r13.getEncoding()
            int r7 = r13.getStatusCode()
            java.lang.String r8 = r13.getReasonPhrase()
            java.util.Map r9 = r13.getResponseHeaders()
            r0 = 0
            if (r2 != 0) goto L52
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream
            byte[] r1 = new byte[r0]
            r2.<init>(r1)
        L52:
            r10 = r2
            r4.<init>(r5, r6, r7, r8, r9, r10)
            android.webkit.WebResourceResponse r5 = new android.webkit.WebResourceResponse
            java.lang.String r6 = r13.getMimeType()
            java.lang.String r7 = r13.getEncoding()
            int r8 = r13.getStatusCode()
            java.lang.String r9 = r13.getReasonPhrase()
            java.util.Map r10 = r13.getResponseHeaders()
            if (r3 != 0) goto L75
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream
            byte[] r13 = new byte[r0]
            r3.<init>(r13)
        L75:
            r11 = r3
            r5.<init>(r6, r7, r8, r9, r10, r11)
            android.util.Pair r13 = new android.util.Pair
            r13.<init>(r4, r5)
            return r13
        L7f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qg.j.hp(android.webkit.WebResourceResponse):android.util.Pair");
    }

    private Pair<WebResourceResponse, e> hp(l lVar) {
        if (jx() && lVar != null) {
            try {
                jl jlVarA = com.byazt.cm.w.hp().l().a();
                k.hp hpVar = new k.hp();
                Map<String, String> mapJx = lVar.jx();
                if (mapJx != null) {
                    for (String str : mapJx.keySet()) {
                        hpVar.l(str, mapJx.get(str));
                    }
                }
                hpVar.hp(lVar.hp().toString());
                u uVarL = jlVarA.hp(hpVar.l()).l();
                int iJx = uVarL.jx();
                if (iJx == 200) {
                    HashMap map = new HashMap();
                    a aVarEb = uVarL.eb();
                    if (aVarEb != null) {
                        for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                            map.put(aVarEb.hp(i2), aVarEb.l(i2));
                        }
                    }
                    InputStream inputStreamJx = uVarL.a().jx();
                    e eVarHp = hp(map);
                    return new Pair<>(new WebResourceResponse(eVarHp.hp() + ServiceReference.DELIMITER + eVarHp.l(), eVarHp.jx() == null ? null : eVarHp.jx().toString(), iJx, hp(iJx), map, inputStreamJx), eVarHp);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.byazt.uhg.e hp(java.util.Map<java.lang.String, java.lang.String> r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L2f
            java.lang.String r0 = "Content-Type"
            boolean r1 = r3.containsKey(r0)
            if (r1 == 0) goto L11
            java.lang.Object r3 = r3.get(r0)
            java.lang.String r3 = (java.lang.String) r3
            goto L30
        L11:
            java.lang.String r0 = "content-type"
            boolean r1 = r3.containsKey(r0)
            if (r1 == 0) goto L20
            java.lang.Object r3 = r3.get(r0)
            java.lang.String r3 = (java.lang.String) r3
            goto L30
        L20:
            java.lang.String r0 = "CONTENT-TYPE"
            boolean r1 = r3.containsKey(r0)
            if (r1 == 0) goto L2f
            java.lang.Object r3 = r3.get(r0)
            java.lang.String r3 = (java.lang.String) r3
            goto L30
        L2f:
            r3 = 0
        L30:
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            if (r0 == 0) goto L38
            java.lang.String r3 = "text/html; charset=UTF-8"
        L38:
            com.byazt.uhg.e r3 = com.byazt.uhg.e.hp(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qg.j.hp(java.util.Map):com.byazt.uhg.e");
    }

    public static void hp(Context context) {
        if (jx()) {
            try {
                File file = new File(l(context));
                if (System.currentTimeMillis() - file.lastModified() <= 3000 || !file.exists()) {
                    return;
                }
                com.byazt.bo.hp.l(l(context));
            } catch (Throwable unused) {
            }
        }
    }

    public void hp(WebView webView, String str) {
        if (vv.hp(str)) {
            this.f24694l.incrementAndGet();
            this.f24694l.get();
            Iterator<com.byazt.zf.hp> it = this.f24693j.iterator();
            while (it.hasNext()) {
                it.next().hp(str);
            }
        }
    }

    private String hp(int i2) {
        if (i2 == 100) {
            return "Continue";
        }
        if (i2 != 101) {
            switch (i2) {
                case 200:
                    return cb.f11288k;
                case 201:
                    return "Created";
                case 202:
                    return "Accepted";
                case 203:
                    return "Non-Authoritative Information";
                case 204:
                    return "No Content";
                case 205:
                    return "Reset Content";
                case 206:
                    return "Partial Content";
                default:
                    switch (i2) {
                        case MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL /* 400 */:
                            return "Bad Request";
                        case 401:
                            return "Unauthorized";
                        case 402:
                            return "Payment Required";
                        case 403:
                            return "Forbidden";
                        case 404:
                            return "Not Found";
                        case 405:
                            return "Method Not Allowed";
                        case 406:
                            return "Not Acceptable";
                        case 407:
                            return "Proxy Authentication Required";
                        case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                            return "Request Time-out";
                        case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                            return "Conflict";
                        case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                            return "Gone";
                        case TTAdConstant.IMAGE_CODE /* 411 */:
                            return "Length Required";
                        case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                            return "Precondition Failed";
                        case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                            return "Request Entity Too Large";
                        case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                            return "Request-URI Too Large";
                        case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                            return "Unsupported Media Type";
                        case 416:
                            return "Requested range not satisfiable";
                        case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                            return "Expectation Failed";
                        default:
                            switch (i2) {
                                case 500:
                                    return "Internal Server Error";
                                case MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE /* 501 */:
                                    return "Not Implemented";
                                case 502:
                                    return "Bad Gateway";
                                case 503:
                                    return "Service Unavailable";
                                case com.sigmob.sdk.archives.tar.e.f35439E /* 504 */:
                                    return "Gateway Time-out";
                                case 505:
                                    return "HTTP Version not supported";
                                default:
                                    return "";
                            }
                    }
            }
        }
        return "Switching Protocols";
    }
}
