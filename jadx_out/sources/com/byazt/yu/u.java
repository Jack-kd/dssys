package com.byazt.yu;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.byazt.kc.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28311a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28312w;

    public u(Context context, s sVar) {
        super(false, false);
        this.f28312w = context;
        this.f28311a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        int i2;
        ApplicationInfo applicationInfo;
        int i3;
        String packageName = this.f28312w.getPackageName();
        PackageInfo packageInfo = null;
        if (TextUtils.isEmpty(this.f28311a.yr())) {
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        } else {
            if (com.byazt.gt.e.f20599l) {
                com.byazt.gt.e.hp("has zijie pkg", null);
            }
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, this.f28311a.yr());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            packageInfo = this.f28312w.getPackageManager().getPackageInfo(packageName, 0);
        } catch (Throwable unused) {
        }
        if (packageInfo != null) {
            try {
                i2 = packageInfo.versionCode;
            } catch (Throwable th) {
                com.byazt.gt.e.l(th);
                return false;
            }
        } else {
            i2 = 0;
        }
        if (TextUtils.isEmpty(this.f28311a.dy())) {
            jSONObject.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        } else {
            jSONObject.put("app_version", this.f28311a.dy());
        }
        if (TextUtils.isEmpty(this.f28311a.xh())) {
            jSONObject.put("app_version_minor", "");
        } else {
            jSONObject.put("app_version_minor", this.f28311a.xh());
        }
        if (this.f28311a.hq() != 0) {
            jSONObject.put("version_code", this.f28311a.hq());
        } else {
            jSONObject.put("version_code", i2);
        }
        if (this.f28311a.ud() != 0) {
            jSONObject.put("update_version_code", this.f28311a.ud());
        } else {
            jSONObject.put("update_version_code", i2);
        }
        if (this.f28311a.nu() != 0) {
            jSONObject.put("manifest_version_code", this.f28311a.nu());
        } else {
            jSONObject.put("manifest_version_code", i2);
        }
        if (!TextUtils.isEmpty(this.f28311a.wv())) {
            jSONObject.put("app_name", this.f28311a.wv());
        }
        if (!TextUtils.isEmpty(this.f28311a.lv())) {
            jSONObject.put("tweaked_channel", this.f28311a.lv());
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (i3 = applicationInfo.labelRes) <= 0) {
            return true;
        }
        jSONObject.put(bv.f48918s, this.f28312w.getString(i3));
        return true;
    }
}
