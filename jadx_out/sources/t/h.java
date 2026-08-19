package t;

import android.content.Intent;
import com.baidu.oauth.sdkbqt.auth.i;
import com.baidu.oauth.sdkbqt.view.WebViewActivity;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h implements i.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f52774a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f52775b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f52776c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WebViewActivity f52777d;

    public h(WebViewActivity webViewActivity, String str, String str2, String str3) {
        this.f52777d = webViewActivity;
        this.f52774a = str;
        this.f52775b = str2;
        this.f52776c = str3;
    }

    @Override // com.baidu.oauth.sdkbqt.auth.i.d
    public void a(String str) throws JSONException {
        JSONObject jSONObject;
        int iOptInt;
        o.d.b(WebViewActivity.f11844h, "the url of BdOauthWebCallback is " + str);
        Intent intent = new Intent();
        try {
            jSONObject = new JSONObject(str);
            iOptInt = jSONObject.optInt("errNo");
        } catch (JSONException e2) {
            o.d.c(e2);
            WebViewActivity webViewActivity = this.f52777d;
            webViewActivity.setResult(0, webViewActivity.h(-201));
        }
        if (iOptInt == -301) {
            WebViewActivity webViewActivity2 = this.f52777d;
            webViewActivity2.setResult(0, webViewActivity2.h(-205));
            this.f52777d.finish();
            return;
        }
        String str2 = "1";
        if (iOptInt == 80103 || iOptInt == 80104) {
            o.d.b(WebViewActivity.f11844h, "oauth_sso_hash is old, just need generate a new value");
            HashMap map = new HashMap();
            map.put("client", "android");
            map.put("clientfrom", "native");
            map.put("suppcheck", "1");
            map.put("oauth_redirect_uri", this.f52774a);
            map.put("getauthorizationcode", "1");
            this.f52777d.f11849d.n(this.f52775b, map);
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("accessToken", jSONObject.optString("access_token"));
        jSONObject2.put("openid", jSONObject.optString("openid"));
        jSONObject2.put("expiresIn", jSONObject.optString("expires_in"));
        jSONObject2.put("scope", this.f52776c);
        jSONObject2.put("code", jSONObject.optString("authorization_code"));
        if (!this.f52777d.f11845f) {
            str2 = "0";
        }
        jSONObject2.put("showLogin", str2);
        jSONObject.put("state", jSONObject.optString("state"));
        intent.putExtra("extra_oauth_result_json", jSONObject2.toString());
        this.f52777d.setResult(-1, intent);
        this.f52777d.finish();
    }
}
