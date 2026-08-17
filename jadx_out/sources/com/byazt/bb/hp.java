package com.byazt.bb;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 93, 28})
/* loaded from: classes2.dex */
public class hp {
    public Context hp;
    public Map<String, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aj.w f18457l;

    public hp(@NonNull Context context, @NonNull com.byazt.aj.w wVar) {
        this.hp = context;
        this.f18457l = wVar;
    }

    @Nullable
    public Map<String, Object> hp() {
        Map<String, Object> mapHp = this.f18457l.hp();
        if (mapHp == null) {
            mapHp = new HashMap<>(4);
        }
        if (hp(mapHp)) {
            try {
                PackageInfo packageInfo = this.hp.getPackageManager().getPackageInfo(this.hp.getPackageName(), 128);
                mapHp.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, packageInfo.versionName);
                mapHp.put("version_code", Integer.valueOf(packageInfo.versionCode));
                if (mapHp.get("update_version_code") == null) {
                    Bundle bundle = packageInfo.applicationInfo.metaData;
                    Object obj = bundle != null ? bundle.get("UPDATE_VERSION_CODE") : null;
                    if (obj == null) {
                        obj = mapHp.get("version_code");
                    }
                    mapHp.put("update_version_code", obj);
                    return mapHp;
                }
            } catch (Throwable unused) {
                mapHp.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, com.byazt.kw.hp.w(this.hp));
                mapHp.put("version_code", Integer.valueOf(com.byazt.kw.hp.a(this.hp)));
                if (mapHp.get("update_version_code") == null) {
                    mapHp.put("update_version_code", mapHp.get("version_code"));
                }
            }
        }
        return mapHp;
    }

    public String j() {
        return com.byazt.kw.hp.j(this.hp);
    }

    @NonNull
    public com.byazt.aj.w jx() {
        return this.f18457l;
    }

    @Nullable
    public Map<String, Object> l() {
        if (this.jx == null) {
            this.jx = this.f18457l.eb();
        }
        return this.jx;
    }

    public String w() {
        return this.f18457l.l();
    }

    public static boolean hp(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        return ((map.containsKey("app_version") || map.containsKey(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME)) && map.containsKey("version_code") && map.containsKey("update_version_code")) ? false : true;
    }
}
