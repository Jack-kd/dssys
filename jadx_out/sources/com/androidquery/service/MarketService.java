package com.androidquery.service;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.Html;
import com.androidquery.AQuery;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Constants;
import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.internal.a;
import com.byazt.rx.BaseConstants;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.cl;
import java.util.Locale;
import org.json.JSONObject;
import org.xml.sax.XMLReader;

/* loaded from: classes.dex */
public class MarketService {
    private static final String BULLET = "•";
    public static final int MAJOR = 2;
    public static final int MINOR = 1;
    public static final int REVISION = 0;
    private static final String SKIP_VERSION = "aqs.skip";
    private static ApplicationInfo ai;
    private static PackageInfo pi;
    private Activity act;
    private AQuery aq;
    private boolean completed;
    private boolean fetch;
    private boolean force;
    private int progress;
    private String rateUrl;
    private String updateUrl;
    private String version;
    private long expire = 720000;
    private int level = 0;
    private Handler handler = new Handler();
    private String locale = Locale.getDefault().toString();

    public class Handler implements DialogInterface.OnClickListener, Html.TagHandler {
        private Handler() {
        }

        private void cb(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
            if (MarketService.this.completed) {
                return;
            }
            MarketService.this.completed = true;
            MarketService.this.progress = 0;
            MarketService.this.callback(str, jSONObject, ajaxStatus);
        }

        public void detailCb(String str, String str2, AjaxStatus ajaxStatus) {
            if (str2 == null || str2.length() <= 1000) {
                return;
            }
            String queryUrl = MarketService.this.getQueryUrl();
            AjaxCallback ajaxCallback = new AjaxCallback();
            ajaxCallback.url(queryUrl).type(JSONObject.class).handler(this, "marketCb");
            ajaxCallback.param(a.f10882f, str2);
            MarketService.this.aq.progress(MarketService.this.progress).ajax(ajaxCallback);
        }

        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z2, String str, Editable editable, XMLReader xMLReader) {
            if ("li".equals(str)) {
                if (!z2) {
                    editable.append("\n");
                    return;
                }
                editable.append("  ");
                editable.append(MarketService.BULLET);
                editable.append("  ");
            }
        }

        public void marketCb(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
            if (MarketService.this.act.isFinishing()) {
                return;
            }
            if (jSONObject == null) {
                cb(str, jSONObject, ajaxStatus);
                return;
            }
            String strOptString = jSONObject.optString("status");
            if (!"1".equals(strOptString)) {
                if ("0".equals(strOptString)) {
                    ajaxStatus.invalidate();
                    return;
                } else {
                    cb(str, jSONObject, ajaxStatus);
                    return;
                }
            }
            if (jSONObject.has("dialog")) {
                cb(str, jSONObject, ajaxStatus);
            }
            if (!MarketService.this.fetch && jSONObject.optBoolean("fetch", false) && ajaxStatus.getSource() == 1) {
                MarketService.this.fetch = true;
                String strOptString2 = jSONObject.optString("marketUrl", null);
                AjaxCallback ajaxCallback = new AjaxCallback();
                ajaxCallback.url(strOptString2).type(String.class).handler(this, "detailCb");
                MarketService.this.aq.progress(MarketService.this.progress).ajax(ajaxCallback);
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            if (i2 == -3) {
                MarketService.setSkipVersion(MarketService.this.act, MarketService.this.version);
            } else if (i2 == -2) {
                MarketService.openUrl(MarketService.this.act, MarketService.this.updateUrl);
            } else {
                if (i2 != -1) {
                    return;
                }
                MarketService.openUrl(MarketService.this.act, MarketService.this.rateUrl);
            }
        }
    }

    public MarketService(Activity activity) {
        this.act = activity;
        this.aq = new AQuery(activity);
        String marketUrl = getMarketUrl();
        this.rateUrl = marketUrl;
        this.updateUrl = marketUrl;
    }

    private Drawable getAppIcon() {
        return getApplicationInfo().loadIcon(this.act.getPackageManager());
    }

    private String getAppId() {
        return getApplicationInfo().packageName;
    }

    private ApplicationInfo getApplicationInfo() {
        if (ai == null) {
            ai = this.act.getApplicationInfo();
        }
        return ai;
    }

    private String getHost() {
        return "https://androidquery.appspot.com";
    }

    private String getMarketUrl() {
        return BaseConstants.MARKET_PREFIX + getAppId();
    }

    private PackageInfo getPackageInfo() {
        if (pi == null) {
            try {
                pi = this.act.getPackageManager().getPackageInfo(getAppId(), 0);
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        return pi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getQueryUrl() {
        String str = getHost() + "/api/market?app=" + getAppId() + "&locale=" + this.locale + "&version=" + getVersion() + "&code=" + getVersionCode() + "&aq=" + Constants.VERSION;
        if (!this.force) {
            return str;
        }
        return str + "&force=true";
    }

    private static String getSkipVersion(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(SKIP_VERSION, null);
    }

    private String getVersion() {
        return getPackageInfo().versionName;
    }

    private int getVersionCode() {
        return getPackageInfo().versionCode;
    }

    private boolean isActive() {
        return !this.act.isFinishing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean openUrl(Activity activity, String str) {
        if (str == null) {
            return false;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean outdated(String str, int i2) {
        if (str.equals(getSkipVersion(this.act))) {
            return false;
        }
        String version = getVersion();
        int versionCode = getVersionCode();
        if (version.equals(str) || versionCode > i2) {
            return false;
        }
        return requireUpdate(version, str, this.level);
    }

    private static String patchBody(String str) {
        return "<small>" + str + "</small>";
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean requireUpdate(java.lang.String r6, java.lang.String r7, int r8) {
        /*
            r5 = this;
            java.lang.String r0 = "\\."
            boolean r1 = r6.equals(r7)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            r1 = 1
            java.lang.String[] r6 = r6.split(r0)     // Catch: java.lang.Exception -> L51
            java.lang.String[] r7 = r7.split(r0)     // Catch: java.lang.Exception -> L51
            int r0 = r6.length     // Catch: java.lang.Exception -> L51
            r3 = 3
            if (r0 < r3) goto L53
            int r0 = r7.length     // Catch: java.lang.Exception -> L51
            if (r0 >= r3) goto L1b
            goto L53
        L1b:
            r0 = 2
            if (r8 == 0) goto L23
            if (r8 == r1) goto L32
            if (r8 == r0) goto L41
            return r1
        L23:
            int r8 = r6.length     // Catch: java.lang.Exception -> L51
            int r8 = r8 - r1
            r8 = r6[r8]     // Catch: java.lang.Exception -> L51
            int r4 = r7.length     // Catch: java.lang.Exception -> L51
            int r4 = r4 - r1
            r4 = r7[r4]     // Catch: java.lang.Exception -> L51
            boolean r8 = r8.equals(r4)     // Catch: java.lang.Exception -> L51
            if (r8 != 0) goto L32
            return r1
        L32:
            int r8 = r6.length     // Catch: java.lang.Exception -> L51
            int r8 = r8 - r0
            r8 = r6[r8]     // Catch: java.lang.Exception -> L51
            int r4 = r7.length     // Catch: java.lang.Exception -> L51
            int r4 = r4 - r0
            r0 = r7[r4]     // Catch: java.lang.Exception -> L51
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Exception -> L51
            if (r8 != 0) goto L41
            return r1
        L41:
            int r8 = r6.length     // Catch: java.lang.Exception -> L51
            int r8 = r8 - r3
            r6 = r6[r8]     // Catch: java.lang.Exception -> L51
            int r8 = r7.length     // Catch: java.lang.Exception -> L51
            int r8 = r8 - r3
            r7 = r7[r8]     // Catch: java.lang.Exception -> L51
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L51
            if (r6 != 0) goto L50
            return r1
        L50:
            return r2
        L51:
            r6 = move-exception
            goto L54
        L53:
            return r1
        L54:
            com.androidquery.util.AQUtility.report(r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.service.MarketService.requireUpdate(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setSkipVersion(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SKIP_VERSION, str).commit();
    }

    public void callback(String str, JSONObject jSONObject, AjaxStatus ajaxStatus) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString(cl.f49059n, "0");
        int iOptInt = jSONObject.optInt("code", 0);
        AQUtility.debug(cl.f49059n, getVersion() + "->" + strOptString + ":" + getVersionCode() + "->" + iOptInt);
        AQUtility.debug("outdated", Boolean.valueOf(outdated(strOptString, iOptInt)));
        if (this.force || outdated(strOptString, iOptInt)) {
            showUpdateDialog(jSONObject);
        }
    }

    public void checkVersion() {
        String queryUrl = getQueryUrl();
        AjaxCallback ajaxCallback = new AjaxCallback();
        ajaxCallback.url(queryUrl).type(JSONObject.class).handler(this.handler, "marketCb").fileCache(!this.force).expire(this.expire);
        this.aq.progress(this.progress).ajax(ajaxCallback);
    }

    public MarketService expire(long j2) {
        this.expire = j2;
        return this;
    }

    public MarketService force(boolean z2) {
        this.force = z2;
        return this;
    }

    public MarketService level(int i2) {
        this.level = i2;
        return this;
    }

    public MarketService locale(String str) {
        this.locale = str;
        return this;
    }

    public MarketService progress(int i2) {
        this.progress = i2;
        return this;
    }

    public MarketService rateUrl(String str) {
        this.rateUrl = str;
        return this;
    }

    public void showUpdateDialog(JSONObject jSONObject) {
        if (jSONObject != null && this.version == null && isActive()) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("dialog");
            String strOptString = jSONObjectOptJSONObject.optString(n.f36454q, "Update");
            String strOptString2 = jSONObjectOptJSONObject.optString("skip", "Skip");
            String strOptString3 = jSONObjectOptJSONObject.optString("rate", "Rate");
            String strOptString4 = jSONObjectOptJSONObject.optString("wbody", "");
            String strOptString5 = jSONObjectOptJSONObject.optString(g.a.f3271h, "Update Available");
            AQUtility.debug("wbody", strOptString4);
            this.version = jSONObject.optString(cl.f49059n, null);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.act).setIcon(getAppIcon()).setTitle(strOptString5).setPositiveButton(strOptString3, this.handler).setNeutralButton(strOptString2, this.handler).setNegativeButton(strOptString, this.handler).create();
            alertDialogCreate.setMessage(Html.fromHtml(patchBody(strOptString4), null, this.handler));
            this.aq.show(alertDialogCreate);
        }
    }

    public MarketService updateUrl(String str) {
        this.updateUrl = str;
        return this;
    }
}
