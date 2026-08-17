package com.byazt.bh;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.lc.a;
import com.byazt.ye.gu;
import com.bytedance.pangle.log.ZeusLogger;
import com.umeng.analytics.pro.cl;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1348, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f18544a;
    public String eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public List<File> f18545j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public String f18546l;

    /* renamed from: w, reason: collision with root package name */
    public File f18547w;

    public static hp hp(JSONObject jSONObject, File file, List<File> list) {
        hp hpVar = new hp();
        hpVar.hp = jSONObject.optString(cl.f49059n);
        hpVar.f18546l = jSONObject.optString("package_name");
        hpVar.jx = jSONObject.optJSONObject("adn_adapter_md5");
        hpVar.eb = jSONObject.optString("alias_package_name");
        hpVar.f18545j = list;
        hpVar.f18547w = file;
        hpVar.f18544a = jSONObject;
        return hpVar;
    }

    private boolean q() throws NoSuchAlgorithmException, IOException {
        JSONObject jSONObject;
        List<File> list = this.f18545j;
        boolean z2 = false;
        if (list == null || list.size() == 0 || (jSONObject = this.jx) == null || jSONObject.length() == 0) {
            StringBuilder sb = new StringBuilder("DexPluginConfig check md5 fail, packageName=");
            sb.append(this.f18546l);
            sb.append(" dexlist is ");
            sb.append(this.f18545j);
            sb.append(" dexlist size is ");
            List<File> list2 = this.f18545j;
            sb.append(list2 == null ? -1 : list2.size());
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        int size = this.f18545j.size();
        int length = this.jx.length();
        for (File file : this.f18545j) {
            String strHp = a.hp(file);
            if (strHp != null) {
                strHp = strHp.toLowerCase();
            }
            String strHp2 = hp(file.getName());
            if (TextUtils.equals(strHp2, strHp)) {
                size--;
                length--;
            } else {
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginConfig check md5 fail, packageName=" + this.f18546l + "downloadFileMd5=" + strHp + " configMd5=" + strHp2);
            }
        }
        if (size == 0 && length == 0) {
            z2 = true;
        }
        StringBuilder sb2 = new StringBuilder("DexPluginConfig check md5 ");
        sb2.append(z2 ? cb.f11292o : "fail");
        sb2.append(", packageName=");
        sb2.append(this.f18546l);
        sb2.append(" fileSize=");
        sb2.append(size);
        sb2.append(" configFileSize=");
        sb2.append(length);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, sb2.toString());
        return z2;
    }

    private boolean s() {
        JSONObject jSONObject;
        Map<String, JSONObject> mapW = gu.hp().w();
        if (mapW != null && mapW.size() > 0 && (jSONObject = mapW.get(this.f18546l)) != null && jSONObject.has("packageName") && TextUtils.equals(jSONObject.optString("packageName"), this.f18546l)) {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName success , packageName=" + this.f18546l);
            return true;
        }
        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName fail, packageName=" + this.f18546l + ", packageManager=" + mapW);
        return false;
    }

    public JSONObject a() {
        return this.f18544a;
    }

    public String eb() {
        return this.eb;
    }

    public List<File> j() {
        return this.f18545j;
    }

    public int jx() {
        if (TextUtils.isEmpty(this.hp)) {
            return -1;
        }
        String strReplace = this.hp.replace(i.f2495E, "");
        if (TextUtils.isEmpty(strReplace)) {
            return -1;
        }
        try {
            return Integer.valueOf(strReplace).intValue();
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public String l() {
        return this.f18546l;
    }

    public String toString() {
        return "DexPluginConfig{mVersion='" + this.hp + "', mPackageName='" + this.f18546l + "'}";
    }

    public File w() {
        return this.f18547w;
    }

    public boolean hp() {
        return s() && q();
    }

    public String hp(String str) {
        JSONObject jSONObject;
        if (!TextUtils.isEmpty(str) && (jSONObject = this.jx) != null && jSONObject.has(str)) {
            return this.jx.optString(str);
        }
        return "";
    }
}
