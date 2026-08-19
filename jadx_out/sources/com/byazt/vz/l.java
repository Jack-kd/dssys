package com.byazt.vz;

import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.byazt.ikh.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 34})
/* loaded from: classes3.dex */
public final class l extends hp {
    public final com.byazt.ikh.l hp;

    /* renamed from: l, reason: collision with root package name */
    public final WebViewImpl f26843l;

    public l(Object obj, String str, com.byazt.ikh.l lVar, WebViewImpl webViewImpl) {
        super(obj, str);
        this.hp = lVar;
        this.f26843l = webViewImpl;
    }

    private boolean hp(JSONObject jSONObject) {
        JSONObject jSONObjectL = l(jSONObject, "addWebviewListener");
        if (jSONObjectL == null) {
            return false;
        }
        String strOptString = jSONObjectL.optString(NotificationCompat.CATEGORY_EVENT);
        if (strOptString == null || strOptString.length() <= 0) {
            return true;
        }
        this.hp.hp(this.f26843l, strOptString);
        com.byazt.ikh.hp.hp(this.f26843l, strOptString);
        return true;
    }

    private boolean j(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectL = l(jSONObject, "pushWebview");
        if (jSONObjectL == null) {
            return false;
        }
        int iHp = this.hp.hp(jSONObjectL.optString("url"));
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("error_code", Integer.valueOf(iHp));
            jSONObject2.putOpt("result", Boolean.valueOf(iHp == 0));
        } catch (Exception unused) {
        }
        this.f26843l.hp(l(), jSONObject.optString("__callback_id"), jSONObject2);
        return true;
    }

    private boolean jx(JSONObject jSONObject) {
        JSONObject jSONObjectL = l(jSONObject, "sendWebviewEvent");
        if (jSONObjectL == null) {
            return false;
        }
        String strOptString = jSONObjectL.optString(NotificationCompat.CATEGORY_EVENT);
        if (strOptString == null) {
            return true;
        }
        Object objOpt = jSONObjectL.opt("param");
        this.hp.hp(this.f26843l, l(), strOptString, objOpt);
        com.byazt.ikh.hp.hp(this.f26843l, l(), strOptString, objOpt);
        return true;
    }

    private boolean l(JSONObject jSONObject) {
        JSONObject jSONObjectL = l(jSONObject, "removeWebviewListener");
        if (jSONObjectL == null) {
            return false;
        }
        String strOptString = jSONObjectL.optString(NotificationCompat.CATEGORY_EVENT);
        if (strOptString == null || strOptString.length() <= 0) {
            return true;
        }
        this.hp.l(this.f26843l, strOptString);
        com.byazt.ikh.hp.l(this.f26843l, strOptString);
        return true;
    }

    private boolean w(JSONObject jSONObject) throws JSONException {
        if (!hp(jSONObject, "popWebview")) {
            return false;
        }
        j jVarHp = this.hp.hp();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("error_code", Integer.valueOf(jVarHp == null ? 1 : 0));
            jSONObject2.putOpt("result", Boolean.valueOf(jVarHp != null));
        } catch (Exception unused) {
        }
        this.f26843l.hp(l(), jSONObject.optString("__callback_id"), jSONObject2);
        return true;
    }

    @Override // com.byazt.vz.hp
    @JavascriptInterface
    public Object invokeMethod(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.contains("popWebview")) {
            if (w(new JSONObject(str))) {
                return null;
            }
        } else if (str.contains("pushWebview")) {
            if (j(new JSONObject(str))) {
                return null;
            }
        } else if (str.contains("addWebviewListener")) {
            if (hp(new JSONObject(str))) {
                return null;
            }
        } else {
            if (!str.contains("removeWebviewListener")) {
                if (str.contains("sendWebviewEvent")) {
                    if (jx(new JSONObject(str))) {
                        return null;
                    }
                }
                return super.invokeMethod(str);
            }
            if (l(new JSONObject(str))) {
                return null;
            }
        }
        return super.invokeMethod(str);
    }

    private boolean hp(JSONObject jSONObject, String str) {
        return jSONObject.optString("func").equals(str);
    }

    private JSONObject l(JSONObject jSONObject, String str) {
        if (hp(jSONObject, str)) {
            return jSONObject.optJSONObject("params");
        }
        return null;
    }
}
