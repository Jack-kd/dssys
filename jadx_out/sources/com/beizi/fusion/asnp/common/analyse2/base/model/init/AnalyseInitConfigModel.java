package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.beizi.fusion.a7;
import com.beizi.fusion.ac;
import com.beizi.fusion.al;
import com.beizi.fusion.asnp.common.analyse2.base.model.Analyse2JsonLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdCommon;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseAdEventLog;
import com.beizi.fusion.asnp.common.analyse2.base.model.biz.AnalyseSimpleLog;
import com.beizi.fusion.asnp.common.v2.crash.ScopeCrashLog;
import com.beizi.fusion.k2;
import com.beizi.fusion.lg;
import com.beizi.fusion.ng;
import com.beizi.fusion.qn;
import com.beizi.fusion.s8;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseInitConfigModel extends AnalyseBasicReceiveLog {

    @ng(key = "access_key")
    private final String accessKey;

    @ng(key = "config_version_md5")
    private String configVersionMd5;

    @ng(key = "lastUpdateTime")
    private String lastUpdateTime;

    @ng(key = "log_version")
    private final String logVersion;

    @ng(key = "app_id")
    private String mAppID;

    @ng(key = "custom_id")
    private String mBizID;

    @ng(key = "hex_id")
    private String mHex;

    @ng(key = "start_id")
    private String mStartID;

    @ng(key = "sdk")
    private AnalyseSDKModel sdkModel;

    @ng(key = "logStrategy")
    private AnalyseLogStrategyModel strategyModel;

    @ng(key = be.f48810m)
    private AnalyseUserModel userModel;

    public static class Analyse2FinalLog extends Analyse2JsonLog implements k2 {

        /* renamed from: a, reason: collision with root package name */
        private String f13010a;

        /* renamed from: b, reason: collision with root package name */
        private String f13011b;

        /* renamed from: c, reason: collision with root package name */
        private String f13012c;

        @ng(key = "config_version_md5")
        private String configVersionMd5;

        @ng(key = "crash")
        private List<ScopeCrashLog> crashLogs;

        /* renamed from: d, reason: collision with root package name */
        private String f13013d;

        /* renamed from: e, reason: collision with root package name */
        private String f13014e;

        /* renamed from: f, reason: collision with root package name */
        private String f13015f;

        /* renamed from: g, reason: collision with root package name */
        private String f13016g;

        /* renamed from: i, reason: collision with root package name */
        private String f13017i;

        @ng(key = "event_list")
        private List<k2.c> initLogs;

        /* renamed from: j, reason: collision with root package name */
        private String[] f13018j;

        @ng(key = "lastUpdateTime")
        private String lastUpdateTime;

        @ng(key = "app_id")
        private String mAppID;

        @ng(key = "app")
        private AnalyseAppInfo mAppInfo;

        @ng(key = "custom_id")
        private String mBizID;

        @ng(key = "configuration")
        private AnalyseConfigInfo mConfigInfo;

        @ng(key = "device")
        private AnalyseDevInfo mDevInfo;

        @ng(key = "hex_id")
        private String mHex;

        @ng(key = "sdk")
        private AnalyseSDKInfo mSDKInfo;

        @ng(key = "start_id")
        private String mStartID;

        @ng(key = be.f48810m)
        private AnalyseUserInfo mUserInfo;

        @ng(key = "session_list")
        private List<k2.b> sessionLogs;

        @ng(key = "log_version")
        private final String logVersion = "2.0.0";

        @ng(key = "access_key")
        private final String accessKey = "sdk";

        public Analyse2FinalLog(AnalyseInitConfigModel analyseInitConfigModel) {
            this.f13010a = "";
            this.f13011b = "";
            this.f13012c = "";
            this.f13013d = "";
            this.f13014e = "";
            this.f13015f = "";
            this.f13016g = "";
            this.f13017i = "";
            this.mStartID = analyseInitConfigModel.mStartID;
            this.mAppID = analyseInitConfigModel.mAppID;
            this.mBizID = analyseInitConfigModel.mBizID;
            this.lastUpdateTime = analyseInitConfigModel.lastUpdateTime;
            this.configVersionMd5 = analyseInitConfigModel.configVersionMd5;
            if (analyseInitConfigModel.strategyModel != null) {
                this.f13010a = analyseInitConfigModel.strategyModel.getVersion();
                this.f13011b = analyseInitConfigModel.strategyModel.getCustomData();
            }
            if (analyseInitConfigModel.userModel != null) {
                this.f13012c = analyseInitConfigModel.userModel.d();
                this.f13013d = analyseInitConfigModel.userModel.c();
                this.f13014e = analyseInitConfigModel.userModel.e();
                this.f13016g = analyseInitConfigModel.userModel.a();
                this.f13017i = analyseInitConfigModel.userModel.b();
            }
            if (analyseInitConfigModel.sdkModel != null) {
                this.f13015f = analyseInitConfigModel.sdkModel.a();
            }
        }

        public void b(Map map) {
            if (this.mSDKInfo == null || map == null || map.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                if (entry != null) {
                    arrayList.add(new AnalyseAdapterInfo((String) entry.getKey(), (String) entry.getValue()));
                }
            }
            this.mSDKInfo.d(arrayList);
        }

        @Override // com.beizi.fusion.k2
        public void c(List list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AnalyseSimpleLog analyseSimpleLog = (AnalyseSimpleLog) it.next();
                if (analyseSimpleLog != null) {
                    arrayList.add(analyseSimpleLog.a());
                }
            }
            this.initLogs = arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            if (TextUtils.isEmpty(this.mHex)) {
                this.mHex = qn.a(this.mStartID) + "";
            }
            if (this.mConfigInfo == null) {
                this.mConfigInfo = new AnalyseConfigInfo(this.f13010a, this.f13011b);
            }
            if (this.mUserInfo == null) {
                this.mUserInfo = new AnalyseUserInfo(this.f13012c, this.f13013d, this.f13014e);
            }
            if (this.mAppInfo == null) {
                this.mAppInfo = new AnalyseAppInfo(context);
            }
            if (this.mSDKInfo == null) {
                this.mSDKInfo = new AnalyseSDKInfo(this.f13015f);
            }
            if (this.mDevInfo == null) {
                this.mDevInfo = new AnalyseDevInfo((ac) a7.a().b(context), this.f13016g, this.f13017i);
            }
        }

        @Override // com.beizi.fusion.k2
        public void a(List list) {
            this.mBizID = "crash";
            this.crashLogs = list;
        }

        @Override // com.beizi.fusion.k2
        public void a(Map map) {
            if (map == null || map.isEmpty()) {
                return;
            }
            Collection collectionValues = map.values();
            if (collectionValues.isEmpty()) {
                return;
            }
            this.sessionLogs = new ArrayList(collectionValues.size());
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                k2.b bVarA = a((LinkedList) it.next());
                if (bVarA != null) {
                    this.sessionLogs.add(bVarA);
                }
            }
        }

        @Override // com.beizi.fusion.k2
        public void a(String[] strArr) {
            if (strArr == null || strArr.length <= 0) {
                return;
            }
            this.f13018j = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        @Override // com.beizi.fusion.k2
        public byte[] a() {
            String[] strArr;
            lg analyseGsonObject = getAnalyseGsonObject();
            if (analyseGsonObject != null && (strArr = this.f13018j) != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        analyseGsonObject.a(str);
                    }
                }
            }
            return s8.a(getAnalyseGsonObject());
        }

        private k2.b a(LinkedList linkedList) {
            AnalyseAdEventLog analyseAdEventLog;
            AnalyseAdCommon analyseAdCommonB;
            if (linkedList == null || linkedList.isEmpty() || (analyseAdEventLog = (AnalyseAdEventLog) linkedList.get(0)) == null || (analyseAdCommonB = analyseAdEventLog.b()) == null) {
                return null;
            }
            k2.b bVarA = analyseAdCommonB.a();
            bVarA.b(linkedList);
            return bVarA;
        }
    }

    public static final class AnalyseAdapterInfo extends Analyse2JsonLog {

        @ng(key = "adapter")
        private String name;

        @ng(key = cl.f49059n)
        private String version;

        private AnalyseAdapterInfo(String str, String str2) {
            this.name = str;
            this.version = str2;
        }
    }

    public static final class AnalyseAppInfo extends Analyse2JsonLog {

        @ng(key = "app_name")
        private String appName;

        @ng(key = "app_version")
        private String appVersion;

        @ng(key = "bundle_id")
        private String bundleID;

        @ng(key = "install_time")
        private String installTime;

        @ng(key = "update_time")
        private String updateTime;

        private AnalyseAppInfo(Context context) {
            this.appName = al.c(context);
            this.appVersion = al.d(context);
            this.bundleID = context.getPackageName();
            this.installTime = al.a(context) + "";
            this.updateTime = al.b(context) + "";
        }
    }

    public static final class AnalyseConfigInfo extends Analyse2JsonLog {

        @ng(key = "custom_data")
        private String mCustomData;

        @ng(key = cl.f49059n)
        private String mVersionMD5;

        private AnalyseConfigInfo(String str, String str2) {
            this.mVersionMD5 = str;
            this.mCustomData = str2;
        }
    }

    public static class AnalyseDevInfo extends Analyse2JsonLog {

        @ng(key = "brand")
        private String brand;

        @ng(key = bv.f48889P)
        private String carrier;

        @ng(key = "connection_type")
        private String connectType;

        @ng(key = bv.f48888O)
        private String country;

        @ng(key = bv.f48883J)
        private String deviceName;

        @ng(key = bv.ac)
        private String deviceType;

        @ng(key = "hard_disk_size")
        private String diskSize;

        @ng(key = "file_mark")
        private String fileMark;

        /* renamed from: h, reason: collision with root package name */
        @ng(key = "h")
        private String f13019h;

        @ng(key = "lang")
        private String language;

        @ng(key = "make")
        private String make;

        @ng(key = "physical_memory")
        private String memory;

        @ng(key = "model")
        private String model;

        @ng(key = "oaid")
        private String oaid;

        @ng(key = bv.f48923x)
        private String os;

        @ng(key = "osv")
        private String osv;

        @ng(key = "said")
        private String said;

        @ng(key = "zone")
        private String timezone;

        @ng(key = "user_agent")
        private String ua;

        @ng(key = "update_mark")
        private String updateMark;

        /* renamed from: w, reason: collision with root package name */
        @ng(key = "w")
        private String f13020w;

        private AnalyseDevInfo(ac acVar, String str, String str2) {
            this.deviceName = acVar.b();
            this.deviceType = acVar.y() + "";
            this.said = str2;
            this.os = acVar.B() + "";
            this.country = acVar.s();
            this.timezone = acVar.F();
            this.language = acVar.D();
            this.connectType = acVar.a() + "";
            this.carrier = acVar.q();
            this.osv = acVar.j();
            this.oaid = str;
            this.model = acVar.g();
            this.f13020w = acVar.C() + "";
            this.f13019h = acVar.u() + "";
            this.make = acVar.e();
            this.brand = acVar.h();
            this.updateMark = acVar.A();
            this.fileMark = acVar.r();
            this.diskSize = acVar.l();
            this.ua = acVar.d();
            this.memory = acVar.n();
        }
    }

    public static final class AnalyseSDKInfo extends Analyse2JsonLog {

        @ng(key = "adapter")
        private List<AnalyseAdapterInfo> adapters;

        @ng(key = cl.f49059n)
        private String mVersion;

        /* JADX INFO: Access modifiers changed from: private */
        public void d(List list) {
            this.adapters = list;
        }

        private AnalyseSDKInfo(String str) {
            this.mVersion = str;
        }
    }

    public static final class AnalyseUserInfo extends Analyse2JsonLog {

        @ng(key = ATAdConst.KEY.USER_CUSTOM_DATA)
        private String customData;

        @ng(key = "lmt")
        private String lmt;

        @ng(key = "user_id")
        private String userID;

        private AnalyseUserInfo(String str, String str2, String str3) {
            this.userID = str;
            this.customData = str2;
            this.lmt = str3;
        }
    }

    public AnalyseInitConfigModel(JSONObject jSONObject) {
        super(jSONObject);
        this.logVersion = "2.0.0";
        this.accessKey = "sdk";
    }

    public String a() {
        return this.mStartID;
    }

    public AnalyseLogStrategyModel b() {
        return this.strategyModel;
    }

    public k2 a(Context context, Map map) {
        Analyse2FinalLog analyse2FinalLog;
        synchronized (this) {
            analyse2FinalLog = new Analyse2FinalLog(this);
            analyse2FinalLog.a(context);
            analyse2FinalLog.b(map);
        }
        return analyse2FinalLog;
    }
}
