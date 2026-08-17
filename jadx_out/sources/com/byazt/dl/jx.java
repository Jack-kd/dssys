package com.byazt.dl;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.text.TextUtils;
import com.byazt.aw.w;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 33, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile jx hp;
    public Map<String, com.byazt.tgw.hp> jx = new ConcurrentHashMap();

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ctq.jx f19163l = com.byazt.lto.hp.j();

    private jx() {
    }

    private void a() {
        String string = this.f19163l.getString("adn_init_config", null);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (!string.startsWith("[") && !string.startsWith("{")) {
            string = com.byazt.zg.hp.l(string, com.byazt.zg.l.hp());
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            l(new JSONObject(string));
        } catch (Throwable unused) {
        }
    }

    private Set<String> eb() {
        HashSet hashSet = new HashSet();
        if (this.jx.size() != 0) {
            for (Map.Entry<String, com.byazt.tgw.hp> entry : this.jx.entrySet()) {
                com.byazt.tgw.hp value = entry.getValue();
                if (value != null && !value.w()) {
                    hashSet.add(entry.getKey());
                }
            }
        }
        return hashSet;
    }

    private void jx(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        w.j(new Runnable() { // from class: com.byazt.dl.jx.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.fqv.l.hp().hp(jSONObject);
            }
        });
    }

    private void l(JSONObject jSONObject) {
        this.jx.clear();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
            com.byazt.tgw.hp hpVarHp = com.byazt.tgw.hp.hp(next, jSONObjectOptJSONObject);
            if (jSONObjectOptJSONObject != null && hpVarHp != null) {
                this.jx.put(next, hpVarHp);
            }
        }
    }

    public boolean j() {
        if (this.jx.size() == 0) {
            a();
        }
        return this.jx.isEmpty();
    }

    public synchronized void w() {
        try {
            Context context = com.byazt.di.l.getContext();
            if (context == null) {
                return;
            }
            Set<String> setEb = eb();
            if (setEb.size() == 0) {
                return;
            }
            int i2 = context.getApplicationInfo().targetSdkVersion;
            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ 聚合 接入信息 start ---------------------");
            com.byazt.aw.l.hp("TTMediationSDK_SDK_Init", "当前接入的聚合 SDK版本是：" + com.byazt.rt.l.l());
            List<String> listHp = hp(context);
            if (listHp != null) {
                for (String str : setEb) {
                    if (!MediationConstant.ADN_UNITY.equals(str) && !MediationConstant.ADN_MINTEGRAL.equals(str) && !MediationConstant.ADN_XIAOMI.equals(str)) {
                        if (listHp.contains(str)) {
                            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "已按要求接入三方广告sdk【" + str + "】");
                        } else {
                            com.byazt.aw.l.j("TTMediationSDK_SDK_Init", "未按要求接入三方广告sdk【" + str + "】，请检查接入配置");
                        }
                    }
                }
            }
            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ GroMore 接入信息 end ---------------------");
            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 start ---------------------");
            for (String str2 : setEb) {
                if (!TextUtils.equals(str2, MediationConstant.ADN_PANGLE) && !TextUtils.equals(str2, MediationConstant.ADN_UNITY) && !TextUtils.equals(str2, MediationConstant.ADN_MINTEGRAL)) {
                    com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(str2);
                    if (jVarHp != null) {
                        jVarHp.checkVersion();
                    } else {
                        com.byazt.aw.l.j("TTMediationSDK_InitChecker", "没有引入" + str2 + "Adapter,请检查相关引入情况");
                    }
                }
            }
            com.byazt.aw.l.l("TTMediationSDK_SDK_Init", "------------------ GroMore 版本信息 end ---------------------");
        } catch (Throwable th) {
            throw th;
        }
    }

    public static jx hp() {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public Map<String, com.byazt.tgw.hp> jx() {
        if (this.jx.size() == 0) {
            a();
        }
        return new ConcurrentHashMap(this.jx);
    }

    public void hp(final JSONObject jSONObject) {
        if (jSONObject != null) {
            l(jSONObject);
            if (com.byazt.di.l.l().jx()) {
                w.j(new Runnable() { // from class: com.byazt.dl.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String string = jSONObject.toString();
                        if (TextUtils.isEmpty(string)) {
                            return;
                        }
                        jx.this.f19163l.put("adn_init_config", string);
                    }
                });
            } else {
                String string = jSONObject.toString();
                if (!TextUtils.isEmpty(string)) {
                    this.f19163l.put("adn_init_config", string);
                }
            }
        }
        jx(jSONObject);
    }

    public List<com.byazt.tgw.hp> l() {
        if (this.jx.size() == 0) {
            a();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, com.byazt.tgw.hp>> it = this.jx.entrySet().iterator();
        while (it.hasNext()) {
            com.byazt.tgw.hp value = it.next().getValue();
            if (value != null && value.w()) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public com.byazt.tgw.hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.jx.size() == 0) {
            a();
        }
        return this.jx.get(str);
    }

    public boolean l(String str) {
        com.byazt.tgw.hp hpVar;
        if (this.jx.size() == 0) {
            a();
        }
        Map<String, com.byazt.tgw.hp> map = this.jx;
        return (map == null || (hpVar = map.get(str)) == null || !hpVar.w()) ? false : true;
    }

    private List<String> hp(Context context) {
        List<ProviderInfo> listQueryContentProviders = context.getPackageManager().queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072);
        if (listQueryContentProviders == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        context.getPackageName();
        Iterator<ProviderInfo> it = listQueryContentProviders.iterator();
        while (it.hasNext()) {
            String str = it.next().name;
            str.getClass();
            switch (str) {
                case "com.baidu.mobads.sdk.api.BdFileProvider":
                    arrayList.add("baidu");
                    break;
                case "com.mbridge.msdk.foundation.tools.MBFileProvider":
                    arrayList.add(MediationConstant.ADN_MINTEGRAL);
                    break;
                case "com.sigmob.sdk.SigmobFileProvider":
                case "com.sigmob.sdk.SigmobFileV4Provider":
                    arrayList.add("sigmob");
                    break;
                case "com.tencent.klevin.utils.FileProvider":
                    arrayList.add(MediationConstant.ADN_KLEVIN);
                    break;
                case "com.bykv.vk.openvk.TTFileProvider":
                case "com.bytedance.sdk.openadsdk.TTFileProvider":
                    arrayList.add(MediationConstant.ADN_PANGLE);
                    break;
                case "com.kwad.sdk.api.proxy.app.AdSdkFileProvider":
                    arrayList.add(MediationConstant.ADN_KS);
                    break;
                case "com.unity":
                    arrayList.add(MediationConstant.ADN_UNITY);
                    break;
                case "com.qq.e.comm.GDTFileProvider":
                    arrayList.add(MediationConstant.ADN_GDT);
                    break;
            }
        }
        return arrayList;
    }
}
