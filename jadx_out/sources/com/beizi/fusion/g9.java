package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.model.GlobalConfig;
import com.beizi.fusion.model.IncentiveConfig;
import com.beizi.fusion.model.ResponseInfo;

/* loaded from: classes2.dex */
public class g9 {

    /* renamed from: a, reason: collision with root package name */
    private Context f14056a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f14057b = true;

    public g9(Context context, String str) {
        if (str == null) {
            return;
        }
        this.f14056a = context;
        a(str);
    }

    private void a(String str) {
        try {
            String strA = j2.a(tg.b(), str);
            if (TextUtils.isEmpty(strA)) {
                this.f14057b = false;
                return;
            }
            String strB = v8.b(strA);
            if (!TextUtils.isEmpty(strB) && !strB.equalsIgnoreCase("null")) {
                String str2 = (String) go.a(this.f14056a, "globalConfig", (Object) "");
                if (TextUtils.isEmpty(str2)) {
                    go.b(this.f14056a, "globalConfig", j2.b(tg.b(), strB));
                }
                String strA2 = j2.a(tg.b(), str2);
                GlobalConfig globalConfigObjectFromData = GlobalConfig.objectFromData(strB);
                GlobalConfig globalConfigObjectFromData2 = GlobalConfig.objectFromData(strA2);
                if (globalConfigObjectFromData != null) {
                    ResponseInfo.getInstance(this.f14056a).setGlobalConfig(globalConfigObjectFromData);
                    if (!TextUtils.isEmpty(globalConfigObjectFromData.getConfigVersion())) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setConfigVersion(globalConfigObjectFromData.getConfigVersion());
                        }
                        if (ResponseInfo.getInstance(this.f14056a).getManager() == null) {
                            ResponseInfo.getInstance(this.f14056a).setConfigVersion(globalConfigObjectFromData.getConfigVersion());
                        }
                    }
                    if (globalConfigObjectFromData.getExpireTime() > 0) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setExpireTime(globalConfigObjectFromData.getExpireTime());
                        }
                        ResponseInfo.getInstance(this.f14056a).setExpireTime(globalConfigObjectFromData.getExpireTime());
                    }
                    if (globalConfigObjectFromData.getMaxValidTime() > 0) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setMaxValidTime(globalConfigObjectFromData.getMaxValidTime());
                        }
                        ResponseInfo.getInstance(this.f14056a).setMaxValidTime(globalConfigObjectFromData.getMaxValidTime());
                    }
                    if (globalConfigObjectFromData.getConfigurator() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setConfigurator(globalConfigObjectFromData.getConfigurator());
                        }
                        if (ResponseInfo.getInstance(this.f14056a).getManager() == null) {
                            ResponseInfo.getInstance(this.f14056a).setConfigurator(globalConfigObjectFromData.getConfigurator());
                        }
                    }
                    if (globalConfigObjectFromData.getMessenger() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setMessenger(globalConfigObjectFromData.getMessenger());
                        }
                        if (ResponseInfo.getInstance(this.f14056a).getManager() == null) {
                            ResponseInfo.getInstance(this.f14056a).setMessenger(globalConfigObjectFromData.getMessenger());
                        }
                    }
                    if (globalConfigObjectFromData.getManager() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setManager(globalConfigObjectFromData.getManager());
                        }
                        if (ResponseInfo.getInstance(this.f14056a).getManager() == null) {
                            ResponseInfo.getInstance(this.f14056a).setManager(globalConfigObjectFromData.getManager());
                        }
                    }
                    if (globalConfigObjectFromData.getTaskConfig() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setTaskConfig(globalConfigObjectFromData.getTaskConfig());
                        }
                        ResponseInfo.getInstance(this.f14056a).setTaskConfig(globalConfigObjectFromData.getTaskConfig());
                    }
                    if (globalConfigObjectFromData.getAdPlusConfig() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setAdPlusConfig(globalConfigObjectFromData.getAdPlusConfig());
                        }
                        ResponseInfo.getInstance(this.f14056a).setAdPlusConfig(globalConfigObjectFromData.getAdPlusConfig());
                        yq.a(this.f14056a);
                    }
                    IncentiveConfig incentiveConfig = globalConfigObjectFromData.getIncentiveConfig();
                    if (incentiveConfig != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setIncentiveConfig(incentiveConfig);
                        }
                        ResponseInfo.getInstance(this.f14056a).setIncentiveConfig(incentiveConfig);
                    }
                    if (!TextUtils.isEmpty(globalConfigObjectFromData.getCrashUrl())) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setCrashUrl(globalConfigObjectFromData.getCrashUrl());
                        }
                        ResponseInfo.getInstance(this.f14056a).setCrashUrl(globalConfigObjectFromData.getCrashUrl());
                    }
                    String strObjectToJson = GlobalConfig.objectToJson(globalConfigObjectFromData2);
                    if (TextUtils.isEmpty(strObjectToJson)) {
                        return;
                    }
                    go.b(this.f14056a, "globalConfig", j2.b(tg.b(), strObjectToJson));
                    return;
                }
                return;
            }
            this.f14057b = false;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean a() {
        return this.f14057b;
    }
}
