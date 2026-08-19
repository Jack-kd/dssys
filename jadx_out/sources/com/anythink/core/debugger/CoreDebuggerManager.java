package com.anythink.core.debugger;

import android.content.Context;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.bo;
import com.anythink.core.common.h.v;
import com.anythink.core.common.m.f;
import com.anythink.core.common.m.s;
import com.anythink.core.common.m.t;
import com.anythink.core.debugger.api.DebuggerAdSourceInfo;
import com.anythink.core.debugger.api.DebuggerDeviceInfo;
import com.anythink.core.debugger.api.DebuggerPlacementInfo;
import com.anythink.core.debugger.api.DebuggerSdkInfo;
import com.anythink.core.debugger.api.IDeviceInfoGetter;
import com.anythink.core.debugger.api.IOnlinePlcCfgGetter;
import com.anythink.core.debugger.api.ISdkInfoGetter;
import com.anythink.core.e.c;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import com.anythink.core.e.p;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class CoreDebuggerManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8620a = "anythink_debug_place_strategy_obj";

    /* renamed from: b, reason: collision with root package name */
    private static volatile CoreDebuggerManager f8621b;

    /* renamed from: c, reason: collision with root package name */
    private final DebuggerDeviceInfo f8622c = new DebuggerDeviceInfo();

    /* renamed from: d, reason: collision with root package name */
    private final DebuggerSdkInfo f8623d = new DebuggerSdkInfo();

    private CoreDebuggerManager() {
    }

    public static CoreDebuggerManager getInstance() {
        if (f8621b == null) {
            synchronized (CoreDebuggerManager.class) {
                try {
                    if (f8621b == null) {
                        f8621b = new CoreDebuggerManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8621b;
    }

    public DebuggerSdkInfo getSdkInfo() {
        return this.f8623d;
    }

    public void reqPlacementConfig(Context context, String str, final IOnlinePlcCfgGetter iOnlinePlcCfgGetter) {
        this.f8623d.setDebugKey(str);
        v vVar = new v(this.f8623d.getAppId(), this.f8623d.getAppKey());
        vVar.a(str);
        vVar.c(i.ac.f2553h);
        new c().a(context, vVar, new com.anythink.core.common.m.c() { // from class: com.anythink.core.debugger.CoreDebuggerManager.1
            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str2, AdError adError) {
                IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                if (iOnlinePlcCfgGetter2 != null) {
                    iOnlinePlcCfgGetter2.onOnlinePlcCfgError(str2);
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                if (iOnlinePlcCfgGetter2 != null) {
                    iOnlinePlcCfgGetter2.onOnlinePlcCfgCallback(DebuggerPlacementInfo.create(obj, null));
                }
            }
        });
    }

    public void reqPlacementGroupInfo(Context context, String str, String str2, final IOnlinePlcCfgGetter iOnlinePlcCfgGetter) {
        new t(context, new bo(this.f8623d.getAppId(), this.f8623d.getAppKey(), str, str2)).a(0, (s) new com.anythink.core.common.m.c() { // from class: com.anythink.core.debugger.CoreDebuggerManager.2
            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str3, AdError adError) {
                IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                if (iOnlinePlcCfgGetter2 != null) {
                    iOnlinePlcCfgGetter2.onOnlinePlcCfgError(str3);
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                if (iOnlinePlcCfgGetter2 != null) {
                    iOnlinePlcCfgGetter2.onOnlinePlcCfgCallback(DebuggerPlacementInfo.create(obj));
                }
            }
        });
    }

    public void reqPlacementStrategy(final Context context, final String str, String str2, JSONObject jSONObject, final IOnlinePlcCfgGetter iOnlinePlcCfgGetter) {
        bo boVar = new bo(this.f8623d.getAppId(), this.f8623d.getAppKey(), str, str2);
        boVar.a(jSONObject);
        boVar.a(i.ac.f2553h);
        new p().a(context, boVar, new com.anythink.core.common.m.c() { // from class: com.anythink.core.debugger.CoreDebuggerManager.3
            @Override // com.anythink.core.common.m.s
            public final void onLoadError(int i2, String str3, AdError adError) {
                IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                if (iOnlinePlcCfgGetter2 != null) {
                    iOnlinePlcCfgGetter2.onOnlinePlcCfgError(str3);
                }
            }

            @Override // com.anythink.core.common.m.s
            public final void onLoadFinish(int i2, Object obj) {
                try {
                    m mVarA = m.a(str, (JSONObject) obj);
                    if (mVarA != null) {
                        mVarA.bs();
                        o.a(context).a(str, mVarA, null, 0);
                        if (iOnlinePlcCfgGetter != null) {
                            DebuggerPlacementInfo debuggerPlacementInfoCreate = DebuggerPlacementInfo.create(null, mVarA);
                            DebuggerAdSourceInfo.Builder builder = new DebuggerAdSourceInfo.Builder();
                            JSONArray jSONArrayAy = mVarA.ay();
                            String string = HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
                            DebuggerAdSourceInfo.Builder onlineUnitGroupListStr = builder.setNormalUnitGroupListStr(jSONArrayAy != null ? mVarA.ay().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setAdxUnitGroupListStr(mVarA.Z() != null ? mVarA.Z().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setC2sHeadBiddingUnitGroupListStr(mVarA.aB() != null ? mVarA.aB().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setS2sHeadBiddingUnitGroupListStr(mVarA.aA() != null ? mVarA.aA().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setAdxOpenUnitGroupListStr(mVarA.aI() != null ? mVarA.aI().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setCustomInHouseHeadBiddingUnitGroupListStr(mVarA.P() != null ? mVarA.P().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setDefaultUnitGroupListStr(mVarA.K() != null ? mVarA.K().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setDirectlyUnitGroupListStr(mVarA.aH() != null ? mVarA.aH().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setC2sDynamicPriceAdSourceListStr(mVarA.bt() != null ? mVarA.bt().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setS2sDynamicPriceAdSourceListStr(mVarA.bu() != null ? mVarA.bu().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).setOnlineUnitGroupListStr(mVarA.az() != null ? mVarA.az().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                            if (mVarA.X() != null) {
                                string = mVarA.X().toString();
                            }
                            debuggerPlacementInfoCreate.setDebuggerAdSourceInfo(onlineUnitGroupListStr.setFbInHouseHeadBiddingUnitGroupListStr(string).build());
                            iOnlinePlcCfgGetter.onOnlinePlcCfgCallback(debuggerPlacementInfoCreate);
                        }
                    }
                } catch (Throwable th) {
                    IOnlinePlcCfgGetter iOnlinePlcCfgGetter2 = iOnlinePlcCfgGetter;
                    if (iOnlinePlcCfgGetter2 != null) {
                        iOnlinePlcCfgGetter2.onOnlinePlcCfgError("request debug place strategy error: " + th.getMessage());
                    }
                }
            }
        });
    }

    public void setDeviceInfoGetter(Context context, IDeviceInfoGetter iDeviceInfoGetter) {
        if (iDeviceInfoGetter != null) {
            if (this.f8622c.getDeviceInfoJsonObj() != null) {
                iDeviceInfoGetter.onDeviceInfoCallback(this.f8622c);
                return;
            }
            try {
                JSONObject jSONObjectA = f.a(-1);
                JSONObject jSONObjectB = f.b(-1);
                Iterator<String> itKeys = jSONObjectB.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectA.put(next, jSONObjectB.opt(next));
                }
                this.f8622c.setDeviceInfoJsonObj(jSONObjectA);
            } catch (Throwable unused) {
            }
            iDeviceInfoGetter.onDeviceInfoCallback(this.f8622c);
        }
    }

    public void setSdkInfoGetter(ISdkInfoGetter iSdkInfoGetter) {
        com.anythink.core.common.d.s sVarB = com.anythink.core.common.d.s.b();
        if (iSdkInfoGetter != null) {
            this.f8623d.setInitSdk(sVarB.V());
            this.f8623d.setAppId(sVarB.p());
            this.f8623d.setAppKey(sVarB.q());
            this.f8623d.setDeniedUploadDeviceInfo(sVarB.f());
            this.f8623d.setHaveLoadAd(sVarB.f2958c);
            this.f8623d.setHavePreInitNetwork(sVarB.P());
            this.f8623d.setVersionName(ATSDK.getSDKVersionName());
            iSdkInfoGetter.onSdkInfoCallback(this.f8623d);
        }
    }
}
