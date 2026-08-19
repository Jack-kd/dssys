package com.smartdigimkt.x2;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.a.b;
import com.anythink.core.common.f.g;
import com.sigmob.sdk.base.common.C1244a;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewBaseScreenATView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class f implements b {

    /* renamed from: a, reason: collision with root package name */
    public a f45103a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.c2.d f45104b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.m3.c f45105c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.l3.a f45106d;

    public static void a(Object obj, String str, Throwable th) throws JSONException {
        if (obj != null) {
            com.smartdigimkt.w2.a.a(obj, "call method " + str + " fail with exception:" + th.getMessage());
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void checkDataFetchState(Object obj, String str) throws JSONException {
        try {
            String strOptString = new JSONObject(str).optString(g.a.f3270g, "");
            if (TextUtils.isEmpty(strOptString)) {
                com.smartdigimkt.w2.a.a(obj, "pkg_name empty");
                return;
            }
            boolean zC = k.c(SDKContext.getInstance().d(), strOptString);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", zC ? 1 : 2);
            com.smartdigimkt.w2.a.a(obj, jSONObject);
        } catch (Throwable th) {
            a(obj, "checkDataFetchState", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void controlShakeView(Object obj, String str) throws JSONException {
        try {
            if (!z.d(this.f45106d)) {
                com.smartdigimkt.w2.a.a(obj, "not support shake");
                return;
            }
            int iOptInt = new JSONObject(str).optInt("control_show", 0);
            a aVar = this.f45103a;
            if (aVar == null) {
                com.smartdigimkt.w2.a.a(obj, "bridgeListener empty");
            } else {
                aVar.a(iOptInt);
                com.smartdigimkt.w2.a.b(obj, "");
            }
        } catch (Throwable th) {
            a(obj, "notifyClose", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void h5ShowException(Object obj, String str) throws JSONException {
        if (obj instanceof com.smartdigimkt.w2.d) {
            try {
                WTWebView wTWebView = ((com.smartdigimkt.w2.d) obj).f44874a;
                if (wTWebView == null) {
                    com.smartdigimkt.w2.a.a(obj, "WTWebView empty");
                } else {
                    wTWebView.h5ShowException(str);
                    com.smartdigimkt.w2.a.b(obj, "");
                }
            } catch (Throwable th) {
                a(obj, "h5ShowException", th);
            }
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void initSuccess(Object obj, String str) throws JSONException {
        String string;
        if (obj instanceof com.smartdigimkt.w2.d) {
            try {
                WTWebView wTWebView = ((com.smartdigimkt.w2.d) obj).f44874a;
                if (wTWebView == null) {
                    com.smartdigimkt.w2.a.a(obj, "WTWebView empty");
                    return;
                }
                wTWebView.jsCallInitSuccess();
                try {
                    Context contextD = SDKContext.getInstance().d();
                    com.smartdigimkt.m3.e eVar = this.f45105c.f41832w;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("js_bridge_version", 3);
                    jSONObject.put("os_platform", 1);
                    int i2 = h.i(contextD) + k.e(contextD);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("screen_width", h.j(contextD));
                    jSONObject2.put("screen_height", i2);
                    int i3 = this.f45106d.f41628b;
                    if (i3 == 1 || i3 == 3 || i3 == 4) {
                        jSONObject2.put("top_padding", k.e(contextD));
                    } else {
                        jSONObject2.put("top_padding", 0);
                    }
                    jSONObject.put("device_info", jSONObject2);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, h.j(contextD));
                    jSONObject3.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, i2);
                    HashMap map = this.f45106d.f41645s;
                    if (map != null) {
                        int iIntValue = ((Integer) k.a((Map) map, ATAdConst.KEY.AD_WIDTH, (Object) 0)).intValue();
                        if (iIntValue > 0) {
                            jSONObject3.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, iIntValue);
                        }
                        int iIntValue2 = ((Integer) k.a((Map) this.f45106d.f41645s, ATAdConst.KEY.AD_HEIGHT, (Object) 0)).intValue();
                        if (iIntValue2 > 0) {
                            jSONObject3.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, iIntValue2);
                        }
                        int iIntValue3 = ((Integer) k.a((Map) this.f45106d.f41645s, "orientation", (Object) 0)).intValue();
                        if (iIntValue3 > 0) {
                            jSONObject3.put(ATAdConst.KEY.AD_ORIENTATION, iIntValue3);
                        }
                    }
                    jSONObject.put("adview_info", jSONObject3);
                    JSONObject jSONObject4 = new JSONObject();
                    if (!TextUtils.isEmpty(this.f45106d.f41639m)) {
                        try {
                            jSONObject4 = new JSONObject(this.f45106d.f41639m);
                        } catch (Throwable unused) {
                        }
                    }
                    jSONObject.put("content_data", jSONObject4);
                    jSONObject.put("format", this.f45106d.f41628b);
                    jSONObject.put("is_preload", wTWebView.isPreload() ? "1" : "2");
                    jSONObject.put("lang", Locale.getDefault().getLanguage());
                    JSONObject jSONObject5 = new JSONObject();
                    if (eVar != null) {
                        try {
                            jSONObject5 = new JSONObject(eVar.f41983w1);
                        } catch (Throwable unused2) {
                        }
                    }
                    jSONObject.put("settings", jSONObject5);
                    string = jSONObject.toString();
                } catch (Throwable unused3) {
                    string = "";
                }
                if (TextUtils.isEmpty(string)) {
                    com.smartdigimkt.w2.a.a(obj, "");
                } else {
                    com.smartdigimkt.w2.a.b(obj, string);
                    wTWebView.offerDataInject();
                }
            } catch (Throwable th) {
                a(obj, "initSuccess", th);
            }
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void notifyClick(Object obj, String str) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("cl_s_type", 0);
            int iOptInt2 = jSONObject.optInt("cl_area", 0);
            a aVar = this.f45103a;
            if (aVar == null) {
                com.smartdigimkt.w2.a.a(obj, "bridgeListener empty");
            } else {
                aVar.a(iOptInt, iOptInt2);
                com.smartdigimkt.w2.a.b(obj, "");
            }
        } catch (Throwable th) {
            a(obj, "notifyClick", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void notifyClose(Object obj, String str) throws JSONException {
        try {
            int iOptInt = new JSONObject(str).optInt(b.C0047b.f2179a, 0);
            a aVar = this.f45103a;
            if (aVar == null) {
                com.smartdigimkt.w2.a.a(obj, "bridgeListener empty");
            } else {
                aVar.b(iOptInt);
                com.smartdigimkt.w2.a.b(obj, "");
            }
        } catch (Throwable th) {
            a(obj, "notifyClose", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void notifyReward(Object obj, String str) throws JSONException {
        try {
            a aVar = this.f45103a;
            if (aVar == null || !(aVar instanceof com.smartdigimkt.j2.b)) {
                if (aVar == null) {
                    com.smartdigimkt.w2.a.a(obj, "bridgeListener empty");
                    return;
                } else {
                    com.smartdigimkt.w2.a.a(obj, "bridgeListener type error");
                    return;
                }
            }
            WTWebViewBaseScreenATView wTWebViewBaseScreenATView = ((com.smartdigimkt.j2.b) aVar).f41098a;
            int i2 = WTWebViewBaseScreenATView.f43966D0;
            wTWebViewBaseScreenATView.x();
            com.smartdigimkt.w2.a.b(obj, "");
        } catch (Throwable th) {
            a(obj, "notifyReward", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047 A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #2 {all -> 0x001c, blocks: (B:4:0x0006, B:6:0x000d, B:8:0x0013, B:19:0x0034, B:22:0x003c, B:24:0x0043, B:23:0x0040, B:25:0x0047), top: B:34:0x0006 }] */
    @Override // com.smartdigimkt.x2.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openInWebView(java.lang.Object r6, java.lang.String r7) throws org.json.JSONException {
        /*
            r5 = this;
            java.lang.String r0 = ""
            boolean r1 = r6 instanceof com.smartdigimkt.w2.d
            if (r1 == 0) goto L52
            r1 = r6
            com.smartdigimkt.w2.d r1 = (com.smartdigimkt.w2.d) r1     // Catch: java.lang.Throwable -> L1c
            com.smartdigimkt.sdk.basead.webtemplet.WTWebView r1 = r1.f44874a     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L1e
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L1f
            com.smartdigimkt.sdk.core.SDKContext r1 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> L1c
            android.content.Context r1 = r1.d()     // Catch: java.lang.Throwable -> L1c
            goto L1f
        L1c:
            r7 = move-exception
            goto L4d
        L1e:
            r1 = 0
        L1f:
            r2 = 1
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L32
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L32
            java.lang.String r7 = "type"
            int r7 = r3.optInt(r7, r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r4 = "url"
            java.lang.String r3 = r3.optString(r4, r0)     // Catch: java.lang.Throwable -> L33
            goto L34
        L32:
            r7 = r2
        L33:
            r3 = r0
        L34:
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L1c
            if (r4 != 0) goto L47
            if (r7 != r2) goto L40
            com.smartdigimkt.d5.e.a(r1, r3)     // Catch: java.lang.Throwable -> L1c
            goto L43
        L40:
            com.smartdigimkt.d5.e.a(r3)     // Catch: java.lang.Throwable -> L1c
        L43:
            com.smartdigimkt.w2.a.b(r6, r0)     // Catch: java.lang.Throwable -> L1c
            goto L52
        L47:
            java.lang.String r7 = "params error"
            com.smartdigimkt.w2.a.a(r6, r7)     // Catch: java.lang.Throwable -> L1c
            goto L52
        L4d:
            java.lang.String r0 = "openInWebView"
            a(r6, r0, r7)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.x2.f.openInWebView(java.lang.Object, java.lang.String):void");
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewGetProgress(Object obj, String str) {
        com.smartdigimkt.b4.e.a().a(new d(this, obj), 0L, 2);
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewInit(Object obj, String str) throws JSONException {
        com.smartdigimkt.c2.d dVar = this.f45104b;
        if (dVar == null || dVar.f39641h == null) {
            com.smartdigimkt.w2.a.a(obj, "videoComponent empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("position_x", 0);
            int iOptInt2 = jSONObject.optInt("position_y", 0);
            int iOptInt3 = jSONObject.optInt("view_width", 0);
            int iOptInt4 = jSONObject.optInt("view_height", 0);
            int iOptInt5 = jSONObject.optInt(C1244a.f35698z, 1);
            int iOptInt6 = jSONObject.optInt("right_top_corner", 0);
            int iOptInt7 = jSONObject.optInt("right_bottom_corner", 0);
            com.smartdigimkt.b4.e.a().a(new c(this, obj, iOptInt, iOptInt2, iOptInt3, iOptInt4, iOptInt5, jSONObject.optInt("left_top_corner", 0), iOptInt6, iOptInt7, jSONObject.optInt("left_bottom_corner", 0)));
        } catch (Throwable th) {
            a(obj, "playerViewInit", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewMute(Object obj, String str) throws JSONException {
        com.smartdigimkt.c2.d dVar = this.f45104b;
        if (dVar == null || dVar.f39641h == null) {
            com.smartdigimkt.w2.a.a(obj, "videoComponent empty");
            return;
        }
        try {
            boolean z2 = true;
            int iOptInt = new JSONObject(str).optInt(C1244a.f35698z, 1);
            com.smartdigimkt.c2.d dVar2 = this.f45104b;
            if (iOptInt != 1) {
                z2 = false;
            }
            dVar2.b(z2);
            com.smartdigimkt.w2.a.b(obj, "");
        } catch (Throwable th) {
            a(obj, "playerViewMute", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewPauseOrResumePlay(Object obj, String str) throws JSONException {
        com.smartdigimkt.c2.d dVar = this.f45104b;
        if (dVar == null || dVar.f39641h == null) {
            com.smartdigimkt.w2.a.a(obj, "videoComponent empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("is_resume", 1);
            boolean z2 = jSONObject.optInt("can_resume", 1) == 1;
            if (iOptInt == 1) {
                com.smartdigimkt.c2.d dVar2 = this.f45104b;
                if (z2) {
                    dVar2.f39650q = z2;
                }
                dVar2.c();
            } else {
                com.smartdigimkt.c2.d dVar3 = this.f45104b;
                dVar3.f39650q = z2;
                dVar3.b();
            }
            com.smartdigimkt.w2.a.b(obj, "");
        } catch (Throwable th) {
            a(obj, "playerViewPauseOrResumePlay", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewRelayout(Object obj, String str) throws JSONException {
        Object obj2;
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        int iOptInt4;
        int iOptInt5;
        int iOptInt6;
        int iOptInt7;
        int iOptInt8;
        com.smartdigimkt.c2.d dVar = this.f45104b;
        if (dVar == null || dVar.f39641h == null) {
            com.smartdigimkt.w2.a.a(obj, "videoComponent empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            iOptInt = jSONObject.optInt("position_x", 0);
            iOptInt2 = jSONObject.optInt("position_y", 0);
            iOptInt3 = jSONObject.optInt("view_width", 0);
            iOptInt4 = jSONObject.optInt("view_height", 0);
            iOptInt5 = jSONObject.optInt("right_top_corner", 0);
            iOptInt6 = jSONObject.optInt("right_bottom_corner", 0);
            iOptInt7 = jSONObject.optInt("left_top_corner", 0);
            iOptInt8 = jSONObject.optInt("left_bottom_corner", 0);
            obj2 = obj;
        } catch (Throwable th) {
            th = th;
            obj2 = obj;
        }
        try {
            com.smartdigimkt.b4.e.a().a(new e(this, obj2, iOptInt, iOptInt2, iOptInt3, iOptInt4, iOptInt7, iOptInt5, iOptInt6, iOptInt8));
        } catch (Throwable th2) {
            th = th2;
            a(obj2, "playerViewRelayout", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void playerViewRemove(Object obj, String str) throws JSONException {
        BasePlayerView basePlayerView;
        com.smartdigimkt.c2.d dVar = this.f45104b;
        if (dVar == null || (basePlayerView = dVar.f39641h) == null) {
            com.smartdigimkt.w2.a.a(obj, "videoComponent empty");
            return;
        }
        try {
            if (basePlayerView.getParent() != null) {
                ((ViewGroup) dVar.f39641h.getParent()).removeView(dVar.f39641h);
                dVar.f39641h = null;
            }
            com.smartdigimkt.w2.a.b(obj, "");
        } catch (Throwable th) {
            a(obj, "playerViewRemove", th);
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void renderSuccess(Object obj, String str) throws JSONException {
        if (obj instanceof com.smartdigimkt.w2.d) {
            try {
                WTWebView wTWebView = ((com.smartdigimkt.w2.d) obj).f44874a;
                if (wTWebView == null) {
                    com.smartdigimkt.w2.a.a(obj, "WTWebView empty");
                } else {
                    wTWebView.renderSuccess();
                    com.smartdigimkt.w2.a.b(obj, "");
                }
            } catch (Throwable th) {
                a(obj, "renderSuccess", th);
            }
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void sendEventDA(Object obj, String str) throws JSONException {
        if (obj instanceof com.smartdigimkt.w2.d) {
            try {
                WTWebView wTWebView = ((com.smartdigimkt.w2.d) obj).f44874a;
                if (wTWebView == null) {
                    com.smartdigimkt.w2.a.a(obj, "WTWebView empty");
                } else {
                    wTWebView.sendEventDA(str);
                    com.smartdigimkt.w2.a.b(obj, "");
                }
            } catch (Throwable th) {
                a(obj, "sendEventDA", th);
            }
        }
    }

    @Override // com.smartdigimkt.x2.b
    public final void showFeedbackDialog(Object obj, String str) throws JSONException {
        a aVar = this.f45103a;
        if (aVar == null) {
            com.smartdigimkt.w2.a.a(obj, "bridgeListener empty");
        } else {
            aVar.b();
            com.smartdigimkt.w2.a.b(obj, "");
        }
    }
}
