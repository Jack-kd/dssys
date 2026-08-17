package com.sigmob.sdk.mraid;

import android.util.Base64;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ai;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1309a {

    /* renamed from: a, reason: collision with root package name */
    public final String f37860a = "AppInfoJS";

    /* renamed from: b, reason: collision with root package name */
    private final WeakReference<C1311c> f37861b;

    public C1309a(C1311c c1311c) {
        this.f37861b = new WeakReference<>(c1311c);
    }

    public C1311c a() {
        return this.f37861b.get();
    }

    @JavascriptInterface
    public String addMacro(JSONObject jSONObject) {
        try {
            BaseAdUnit baseAdUnitB = b();
            String string = jSONObject.has(f.a.f3242b) ? jSONObject.getString(f.a.f3242b) : null;
            String string2 = jSONObject.has(f.a.f3244d) ? jSONObject.getString(f.a.f3244d) : null;
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) string) && !com.sigmob.sdk.base.utils.s.a((CharSequence) string2)) {
                baseAdUnitB.getMacroCommon().addMarcoKey(string, string2);
                return a(200, "addMacro success", (Object) null);
            }
            return a(300, "key or value is empty", (Object) null);
        } catch (Throwable th) {
            return a(500, "addMacro add fail " + th.getMessage(), (Object) null);
        }
    }

    @JavascriptInterface
    public String excuteRewardAdTrack(JSONObject jSONObject) {
        String str;
        try {
            BaseAdUnit baseAdUnitB = b();
            String string = jSONObject.getString(NotificationCompat.CATEGORY_EVENT);
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) string, (CharSequence) "click")) {
                com.sigmob.sdk.base.utils.d.a("AppInfoJS", baseAdUnitB);
            }
            int iB = com.sigmob.sdk.base.network.h.b(baseAdUnitB, string, true);
            if (iB == 0) {
                return a(200, "excuteRewardAdTrack success", (Object) null);
            }
            if (iB == -1) {
                str = "event is empty";
            } else {
                if (iB != -2) {
                    return a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "unknown error: " + iB, (Object) null);
                }
                str = string + " can't find in trackers";
            }
            return a(300, str, (Object) null);
        } catch (Throwable th) {
            return a(500, "unknown error: " + th.getMessage(), (Object) null);
        }
    }

    @JavascriptInterface
    public String func(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.has("func") ? jSONObject.getString("func") : null;
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) string)) {
                return a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "func is empty", (Object) null);
            }
            ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(this, string.replace(":", ""));
            methodBuilder.addParam(JSONObject.class, jSONObject);
            return (String) methodBuilder.execute();
        } catch (Throwable th) {
            return a(500, th.getMessage(), (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01b7  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getAppInfo(org.json.JSONObject r9) {
        /*
            Method dump skipped, instructions count: 980
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.mraid.C1309a.getAppInfo(org.json.JSONObject):java.lang.String");
    }

    @JavascriptInterface
    public String hello(JSONObject jSONObject) {
        try {
            return jSONObject.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    @JavascriptInterface
    public String javascriptAddDcLog(final JSONObject jSONObject) {
        try {
            if (jSONObject == null) {
                return a(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "not params", (Object) null);
            }
            if (!jSONObject.has(PointParamKey._AC_TYPE)) {
                return a(300, "_ac_type is empty", (Object) null);
            }
            String string = jSONObject.getString(PointParamKey._AC_TYPE);
            final BaseAdUnit baseAdUnitB = b();
            ad.a(string, baseAdUnitB, (LoadAdRequest) null, new ad.a() { // from class: com.sigmob.sdk.mraid.A
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1309a.a(jSONObject, baseAdUnitB, obj);
                }
            });
            return a(200, "add dc log success", (Object) null);
        } catch (Throwable th) {
            return a(500, th.toString(), (Object) null);
        }
    }

    @JavascriptInterface
    public String mraidJsLoaded() {
        InterfaceC1312d interfaceC1312d;
        C1311c c1311cA = a();
        if (c1311cA != null && (interfaceC1312d = c1311cA.f37892d) != null) {
            interfaceC1312d.b();
        }
        return null;
    }

    @JavascriptInterface
    public void postMessage(final String str) {
        com.sigmob.sdk.base.utils.k.c("AppInfoJS", "postMessage: raw = " + str, new Object[0]);
        final C1311c c1311cA = a();
        if (c1311cA == null) {
            return;
        }
        c1311cA.f37893e.post(new Runnable() { // from class: com.sigmob.sdk.mraid.B
            @Override // java.lang.Runnable
            public final void run() {
                this.f37842b.a(str, c1311cA);
            }
        });
    }

    @JavascriptInterface
    public String tracking(JSONObject jSONObject) {
        try {
            BaseAdUnit baseAdUnitB = b();
            String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("urls");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    ai aiVar = new ai(jSONArrayOptJSONArray.optString(i2), strOptString, baseAdUnitB.getRequestId());
                    aiVar.setRetryNum(Integer.valueOf(baseAdUnitB.getTrackingRetryNum()));
                    aiVar.setSource("js");
                    com.sigmob.sdk.base.network.h.a((AdTracker) aiVar, baseAdUnitB, false);
                }
                return a(200, "tracking success.", (Object) null);
            }
            return a(300, "urls is empty.", (Object) null);
        } catch (Throwable th) {
            return a(500, "unknown error: " + th.getMessage(), (Object) null);
        }
    }

    public static String a(int i2, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i2);
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
                jSONObject.put("message", str);
            }
            if (obj != null) {
                jSONObject.put("data", obj);
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    public BaseAdUnit b() {
        C1311c c1311cA = a();
        if (c1311cA == null) {
            return null;
        }
        return c1311cA.f37891c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, C1311c c1311c) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            c1311c.a(jSONObject.optString(NotificationCompat.CATEGORY_EVENT), jSONObject.optString("subEvent"), jSONObject.optJSONObject("args"));
        } catch (Exception e2) {
            com.sigmob.sdk.base.utils.k.f("AppInfoJS", "postMessage: error = " + e2.getMessage(), new Object[0]);
        }
        c1311c.e(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(JSONObject jSONObject, BaseAdUnit baseAdUnit, Object obj) {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.equalsIgnoreCase(com.sigmob.sdk.base.n.f36450m)) {
                try {
                    try {
                        JSONObject jSONObject2 = new JSONObject(jSONObject.optString(next));
                        Iterator<String> itKeys2 = jSONObject2.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            map.put(next2, jSONObject2.optString(next2));
                        }
                    } catch (Exception unused) {
                        map.put(com.sigmob.sdk.base.n.f36450m, Base64.encodeToString(jSONObject.getString(com.sigmob.sdk.base.n.f36450m).getBytes(), 2));
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            } else if (!next.equalsIgnoreCase(PointParamKey._AC_TYPE)) {
                try {
                    map.put(next, jSONObject.getString(next));
                } catch (Throwable unused2) {
                }
            }
        }
        map.put(com.sigmob.sdk.base.n.f36449l, "js");
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            String str = (String) map.get("sub_category");
            if (com.sigmob.sdk.base.utils.v.b(baseAdUnit) && com.sigmob.sdk.base.utils.s.a(str, "click")) {
                ClickCommon clickCommon = baseAdUnit.getClickCommon();
                if (com.sigmob.sdk.base.utils.v.b(clickCommon)) {
                    map.put(ClickCommon.CLICK_LOSE_RATE, String.valueOf(clickCommon.click_lose_rate));
                    map.put(ClickCommon.CLICK_CB_STATE, String.valueOf(clickCommon.click_cb_state));
                }
            }
            pointEntitySigmob.setOptions(map);
        }
    }
}
