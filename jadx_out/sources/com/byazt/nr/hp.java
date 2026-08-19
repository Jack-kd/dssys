package com.byazt.nr;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.anythink.core.common.g.c;
import com.byazt.he.j;
import com.byazt.oda.DeviceInfoUtils;
import com.byazt.oda.a;
import com.byazt.oda.e;
import com.byazt.oda.eb;
import com.byazt.oda.gu;
import com.byazt.oda.l;
import com.byazt.oda.q;
import com.byazt.pg.jl;
import com.byazt.pg.o;
import com.byazt.yb.jx;
import com.byazt.ym.ATSKeep;
import com.byazt.ymw.ns;
import com.umeng.analytics.pro.bv;
import java.text.DecimalFormat;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 28})
@ATSKeep
/* loaded from: classes3.dex */
public class hp implements jl, Function {
    public static final int DEVICE_OS_ANDROID_TYPE = 1;
    public static final int MAIN_VERSION = 7600;
    public static volatile boolean hp;
    public static AtomicBoolean mIsNeedUpdateIp = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public volatile String f23740a;

    /* renamed from: b, reason: collision with root package name */
    public volatile String f23741b;
    public volatile String cx;

    /* renamed from: d, reason: collision with root package name */
    public Context f23742d;
    public volatile long di;

    /* renamed from: e, reason: collision with root package name */
    public volatile String f23743e;
    public volatile String eb;
    public volatile String ec;
    public volatile String gu;

    /* renamed from: j, reason: collision with root package name */
    public volatile String f23744j = "";
    public volatile String jl;
    public volatile String jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile String f23745k;

    /* renamed from: l, reason: collision with root package name */
    public volatile String f23746l;

    /* renamed from: n, reason: collision with root package name */
    public volatile String f23747n;
    public String ns;

    /* renamed from: o, reason: collision with root package name */
    public jx f23748o;

    /* renamed from: q, reason: collision with root package name */
    public volatile String f23749q;

    /* renamed from: s, reason: collision with root package name */
    public volatile String f23750s;
    public volatile String sz;

    /* renamed from: u, reason: collision with root package name */
    public volatile String f23751u;

    /* renamed from: v, reason: collision with root package name */
    public volatile String f23752v;
    public volatile String vv;

    /* renamed from: w, reason: collision with root package name */
    public volatile String f23753w;
    public j wv;
    public volatile String xs;
    public volatile String zy;

    public hp(Context context, j jVar) {
        this.f23742d = context;
        this.wv = jVar;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        DeviceInfoUtils.hp(this.f23742d, new DeviceInfoUtils.ScreenStatusReceiver(this.wv), intentFilter);
        DeviceInfoUtils.hp hpVar = new DeviceInfoUtils.hp(this.wv);
        this.f23748o = hpVar;
        q.hp(hpVar, this.f23742d);
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                ns.hp();
                q.hp(new l());
            } catch (Exception unused) {
            }
        }
        com.byazt.oda.l.hp(new l.hp() { // from class: com.byazt.nr.hp.1
            @Override // com.byazt.oda.l.hp
            public void hp(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                hp.this.cx = str;
            }

            @Override // com.byazt.oda.l.hp
            public void l(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                hp.this.f23741b = str;
            }
        });
    }

    private boolean j() {
        return this.wv.a() && this.wv.jx() >= 7100;
    }

    private boolean jx() {
        return this.wv.a() && this.wv.jx() < 7600;
    }

    private boolean w() {
        return this.wv.a() && this.wv.jx() >= 7500;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -3:
                ats_setAtsField((SparseArray) sparseArray.get(1));
                return null;
            case -2:
                return ats_getAtsField();
            case -1:
                release();
                return null;
            case 0:
            default:
                return null;
            case 1:
                return getAndroidId();
            case 2:
                return getDeviceModel();
            case 3:
                return getDeviceName();
            case 4:
                return getLanguage();
            case 5:
                return getLocalLanguage();
            case 6:
                return getMcc();
            case 7:
                return getMnc();
            case 8:
                return Integer.valueOf(getOs());
            case 9:
                return getOsVersion();
            case 10:
                return getTimeZone();
            case 11:
                return getVendor();
            case 12:
                return getBoot();
            case 13:
                return getCarrierName();
            case 14:
                return getCompilingTime();
            case 15:
                return getBuildSerial();
            case 16:
                return getUserAgent();
            case 17:
                return getRom();
            case 18:
                return Integer.valueOf(getTimeZoneInt());
            case 19:
                return Integer.valueOf(getDeviceType(((Boolean) sparseArray.get(1)).booleanValue()));
            case 20:
                return getWebViewUA(((Boolean) sparseArray.get(1)).booleanValue());
            case 21:
                return getNewIpAddrs(((Boolean) sparseArray.get(1)).booleanValue());
            case 22:
                return getWifiMac((Boolean) sparseArray.get(1));
            case 23:
                com.byazt.yb.hp location = getLocation(((Boolean) sparseArray.get(1)).booleanValue());
                return location != null ? new com.byazt.yb.l(location) : location;
            case 24:
                return getImei((Boolean) sparseArray.get(1));
            case 25:
                return getMacAddress((Boolean) sparseArray.get(1));
            case 26:
                return getSSID((Boolean) sparseArray.get(1));
            case 27:
                return getImsi((Boolean) sparseArray.get(1));
            case 28:
                return getRomInfo();
            case 29:
                return Integer.valueOf(getDisplayDpi());
            case 30:
                return Integer.valueOf(getScreenHeight());
            case 31:
                return Integer.valueOf(getScreenWidth());
            case 32:
                return getMcc2();
            case 33:
                return getMnc2();
            case 34:
                return getAsyncWifiMac();
            case 35:
                return getSimOperator();
            case 36:
                return Integer.valueOf(getRealNetworkType(((Long) sparseArray.get(1)).longValue()));
            case 37:
                Object jVar = sparseArray.get(1);
                if (jVar != null) {
                    jVar = new com.byazt.yb.j((Function) jVar);
                }
                registerNetworkMonitor((jx) jVar);
                return null;
            case 38:
                Object jVar2 = sparseArray.get(1);
                if (jVar2 != null) {
                    jVar2 = new com.byazt.yb.j((Function) jVar2);
                }
                removeNetworkMonitor((jx) jVar2);
                return null;
            case 39:
                return getEmuiInfo();
            case 40:
                return Boolean.valueOf(isScreenOn());
            case 41:
                return Float.valueOf(getScreenBright());
            case 42:
                return getIpInfoMap(((Boolean) sparseArray.get(1)).booleanValue());
            case 43:
                return getNetworkSignalType(((Integer) sparseArray.get(1)).intValue());
            case 44:
                return getActiveSimOperatorStr();
            case 45:
                return getSimOperatorCode();
            case 46:
                return Long.valueOf(getUnlockTime());
        }
    }

    public SparseArray ats_getAtsField() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(1, this.f23746l);
        sparseArray.put(2, this.jx);
        sparseArray.put(3, this.f23744j);
        sparseArray.put(4, this.f23753w);
        sparseArray.put(5, this.f23740a);
        sparseArray.put(6, this.eb);
        sparseArray.put(7, this.f23750s);
        sparseArray.put(8, this.f23749q);
        sparseArray.put(9, this.f23743e);
        sparseArray.put(10, this.gu);
        sparseArray.put(11, this.jl);
        sparseArray.put(12, this.zy);
        sparseArray.put(13, this.f23745k);
        sparseArray.put(14, this.f23752v);
        sparseArray.put(15, this.f23751u);
        sparseArray.put(16, this.xs);
        sparseArray.put(18, this.vv);
        sparseArray.put(19, this.ec);
        sparseArray.put(20, this.sz);
        sparseArray.put(21, this.f23747n);
        sparseArray.put(24, this.ns);
        sparseArray.put(25, mIsNeedUpdateIp);
        sparseArray.put(26, this.cx);
        sparseArray.put(27, this.f23741b);
        sparseArray.put(28, Long.valueOf(this.di));
        return sparseArray;
    }

    public void ats_setAtsField(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (obj != null) {
            this.f23746l = (String) obj;
        }
        Object obj2 = sparseArray.get(2);
        if (obj2 != null) {
            this.jx = (String) obj2;
        }
        Object obj3 = sparseArray.get(3);
        if (obj3 != null) {
            this.f23744j = (String) obj3;
        }
        Object obj4 = sparseArray.get(4);
        if (obj4 != null) {
            this.f23753w = (String) obj4;
        }
        Object obj5 = sparseArray.get(5);
        if (obj5 != null) {
            this.f23740a = (String) obj5;
        }
        Object obj6 = sparseArray.get(6);
        if (obj6 != null) {
            this.eb = (String) obj6;
        }
        Object obj7 = sparseArray.get(7);
        if (obj7 != null) {
            this.f23750s = (String) obj7;
        }
        Object obj8 = sparseArray.get(8);
        if (obj8 != null) {
            this.f23749q = (String) obj8;
        }
        Object obj9 = sparseArray.get(9);
        if (obj9 != null) {
            this.f23743e = (String) obj9;
        }
        Object obj10 = sparseArray.get(10);
        if (obj10 != null) {
            this.gu = (String) obj10;
        }
        Object obj11 = sparseArray.get(11);
        if (obj11 != null) {
            this.jl = (String) obj11;
        }
        Object obj12 = sparseArray.get(12);
        if (obj12 != null) {
            this.zy = (String) obj12;
        }
        Object obj13 = sparseArray.get(13);
        if (obj13 != null) {
            this.f23745k = (String) obj13;
        }
        Object obj14 = sparseArray.get(14);
        if (obj14 != null) {
            this.f23752v = (String) obj14;
        }
        Object obj15 = sparseArray.get(15);
        if (obj15 != null) {
            this.f23751u = (String) obj15;
        }
        Object obj16 = sparseArray.get(16);
        if (obj16 != null) {
            this.xs = (String) obj16;
        }
        Object obj17 = sparseArray.get(18);
        if (obj17 != null) {
            this.vv = (String) obj17;
        }
        Object obj18 = sparseArray.get(19);
        if (obj18 != null) {
            this.ec = (String) obj18;
        }
        Object obj19 = sparseArray.get(20);
        if (obj19 != null) {
            this.sz = (String) obj19;
        }
        Object obj20 = sparseArray.get(21);
        if (obj20 != null) {
            this.f23747n = (String) obj20;
        }
        Object obj21 = sparseArray.get(24);
        if (obj21 != null) {
            this.ns = (String) obj21;
        }
        Object obj22 = sparseArray.get(25);
        if (obj22 != null) {
            mIsNeedUpdateIp = (AtomicBoolean) obj22;
        }
        Object obj23 = sparseArray.get(26);
        if (obj23 != null) {
            this.cx = (String) obj23;
        }
        Object obj24 = sparseArray.get(27);
        if (obj24 != null) {
            this.f23741b = (String) obj24;
        }
        Object obj25 = sparseArray.get(28);
        if (obj25 != null) {
            this.di = ((Long) obj25).longValue();
        }
    }

    @Override // com.byazt.pg.jl
    public String getActiveSimOperatorStr() {
        return eb.hp(this.f23742d, this.wv.hp());
    }

    @Override // com.byazt.pg.jl
    public String getAndroidId() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getAndroidId();
        }
        if (!TextUtils.isEmpty(this.f23746l)) {
            return this.f23746l;
        }
        com.byazt.he.l customController = this.wv.hp().getCustomController();
        if (customController != null && !customController.isCanUseAndroidId()) {
            return customController.getAndroidId();
        }
        if (hp) {
            return this.f23746l;
        }
        synchronized (this) {
            try {
                if (hp) {
                    return this.f23746l;
                }
                this.f23746l = com.byazt.oda.jx.jx(this.f23742d);
                hp = true;
                return this.f23746l;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.pg.jl
    public String getAsyncWifiMac() {
        return com.byazt.oda.jx.l(this.wv.hp(), this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String getBoot() {
        String string;
        double dCurrentTimeMillis = (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d;
        try {
            string = new Formatter().format("%.6f", Double.valueOf(dCurrentTimeMillis)).toString();
        } catch (Exception unused) {
            string = "";
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return new DecimalFormat("#0.000000").format(dCurrentTimeMillis);
        } catch (Exception unused2) {
            return string;
        }
    }

    @Override // com.byazt.pg.jl
    public String getBuildSerial() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getBuildSerial();
        }
        if (TextUtils.isEmpty(this.zy)) {
            this.zy = com.byazt.oda.jx.hp(this.wv.hp());
        }
        return this.zy;
    }

    @Override // com.byazt.pg.jl
    public String getCarrierName() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getCarrierName();
        }
        if (TextUtils.isEmpty(this.f23745k)) {
            this.f23745k = com.byazt.oda.jx.q(this.wv.hp(), this.f23742d);
        }
        return this.f23745k;
    }

    @Override // com.byazt.pg.jl
    public String getCompilingTime() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getCompilingTime();
        }
        if (TextUtils.isEmpty(this.f23752v)) {
            this.f23752v = String.valueOf(Build.TIME);
        }
        return this.f23752v;
    }

    @Override // com.byazt.pg.jl
    public String getDeviceModel() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getDeviceModel();
        }
        if (TextUtils.isEmpty(this.jx)) {
            this.jx = Build.MODEL;
        }
        return this.jx;
    }

    @Override // com.byazt.pg.jl
    public String getDeviceName() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getDeviceName();
        }
        if (this.f23742d == null) {
            return "";
        }
        if (!TextUtils.isEmpty(this.f23744j)) {
            return this.f23744j;
        }
        this.f23744j = Settings.Global.getString(this.f23742d.getContentResolver(), bv.f48883J);
        return this.f23744j;
    }

    @Override // com.byazt.pg.jl
    public int getDeviceType(boolean z2) {
        o oVarL;
        return (j() && jx() && (oVarL = l()) != null) ? oVarL.getDeviceType(z2) : DeviceInfoUtils.hp(this.f23742d, z2, this.wv.hp(), this.wv.l());
    }

    @Override // com.byazt.pg.jl
    public int getDisplayDpi() {
        return gu.l(this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String getEmuiInfo() {
        return a.l(this.wv.hp());
    }

    @Override // com.byazt.pg.jl
    public String getImei(Boolean bool) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getImei(bool);
        }
        if (TextUtils.isEmpty(this.f23749q)) {
            this.f23749q = com.byazt.oda.jx.hp(bool, this.wv.hp(), this.f23742d);
        }
        return this.f23749q;
    }

    @Override // com.byazt.pg.jl
    public String getImsi(Boolean bool) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getImsi(bool);
        }
        if (TextUtils.isEmpty(this.jl)) {
            this.jl = com.byazt.oda.jx.l(bool, this.wv.hp(), this.f23742d);
        }
        return this.jl;
    }

    @Override // com.byazt.pg.jl
    public Map<String, String> getIpInfoMap(boolean z2) {
        return com.byazt.oda.l.hp(z2, this.wv.hp(), this.wv.w(), this.wv.l(), this.wv);
    }

    @Override // com.byazt.pg.jl
    public String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    @Override // com.byazt.pg.jl
    public String getLocalLanguage() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    @Override // com.byazt.pg.jl
    public com.byazt.yb.hp getLocation(boolean z2) {
        o oVarL;
        return (j() && jx() && (oVarL = l()) != null) ? oVarL.getLocation() : com.byazt.oda.hp.hp(this.f23742d, z2, this.wv.hp(), this.wv.l());
    }

    @Override // com.byazt.pg.jl
    public String getMacAddress(Boolean bool) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getMacAddress(bool);
        }
        if (TextUtils.isEmpty(this.f23747n)) {
            this.f23747n = com.byazt.oda.jx.hp(bool, this.wv.hp(), this.wv.w(), this.wv.l(), this.wv);
        }
        return this.f23747n;
    }

    @Override // com.byazt.pg.jl
    public String getMcc() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getMcc();
        }
        if (TextUtils.isEmpty(this.f23753w)) {
            this.f23753w = com.byazt.oda.jx.w(this.wv.hp(), this.f23742d);
        }
        return this.f23753w;
    }

    @Override // com.byazt.pg.jl
    public String getMcc2() {
        o oVarL;
        if (w() && jx() && (oVarL = l()) != null) {
            return oVarL.getMcc2();
        }
        if (TextUtils.isEmpty(this.eb)) {
            this.eb = com.byazt.oda.jx.a(this.wv.hp(), this.f23742d);
        }
        return this.eb;
    }

    @Override // com.byazt.pg.jl
    public String getMnc() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getMnc();
        }
        if (TextUtils.isEmpty(this.f23740a)) {
            this.f23740a = com.byazt.oda.jx.eb(this.wv.hp(), this.f23742d);
        }
        return this.f23740a;
    }

    @Override // com.byazt.pg.jl
    public String getMnc2() {
        o oVarL;
        if (w() && jx() && (oVarL = l()) != null) {
            return oVarL.getMnc2();
        }
        if (TextUtils.isEmpty(this.f23750s)) {
            this.f23750s = com.byazt.oda.jx.s(this.wv.hp(), this.f23742d);
        }
        return this.f23750s;
    }

    @Override // com.byazt.pg.jl
    public String getNetworkSignalType(int i2) {
        return DeviceInfoUtils.hp(i2, this.wv.hp(), this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String[] getNewIpAddrs(boolean z2) throws JSONException {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getNewIpAddrs(z2);
        }
        if (hp()) {
            return new String[]{this.cx, this.f23741b};
        }
        String[] strArrHp = com.byazt.oda.l.hp(z2, mIsNeedUpdateIp, this.wv.hp(), this.wv.w(), this.wv.l(), this.wv);
        this.di = System.currentTimeMillis();
        if (strArrHp.length >= 2) {
            this.cx = strArrHp[0];
            this.f23741b = strArrHp[1];
        }
        return strArrHp;
    }

    @Override // com.byazt.pg.jl
    public int getOs() {
        return 1;
    }

    @Override // com.byazt.pg.jl
    public String getOsVersion() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getOsVersion();
        }
        if (TextUtils.isEmpty(this.f23751u)) {
            this.f23751u = Build.VERSION.RELEASE;
        }
        return this.f23751u;
    }

    @Override // com.byazt.pg.jl
    public int getRealNetworkType(long j2) {
        return q.hp(this.f23742d, j2);
    }

    @Override // com.byazt.pg.jl
    public String getRom() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getRom();
        }
        if (TextUtils.isEmpty(this.ec)) {
            this.ec = a.hp(this.wv.hp());
        }
        return this.ec;
    }

    @Override // com.byazt.pg.jl
    public String getRomInfo() {
        if (TextUtils.isEmpty(this.ns)) {
            this.ns = a.jx();
        }
        return this.ns;
    }

    @Override // com.byazt.pg.jl
    public String getSSID(Boolean bool) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getSSID(bool);
        }
        if (TextUtils.isEmpty(this.f23743e)) {
            this.f23743e = com.byazt.oda.jx.jx(bool, this.wv.hp(), this.f23742d);
        }
        return this.f23743e;
    }

    @Override // com.byazt.pg.jl
    public float getScreenBright() {
        return DeviceInfoUtils.eb(this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public int getScreenHeight() {
        return gu.j(this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public int getScreenWidth() {
        return gu.jx(this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String getSimOperator() {
        return com.byazt.oda.jx.j(this.wv.hp(), this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String getSimOperatorCode() {
        return eb.hp(this.wv.hp(), this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public String getTimeZone() {
        try {
            return TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.byazt.pg.jl
    public int getTimeZoneInt() {
        return DeviceInfoUtils.hp();
    }

    @Override // com.byazt.pg.jl
    public long getUnlockTime() {
        return DeviceInfoUtils.l();
    }

    @Override // com.byazt.pg.jl
    public String getUserAgent() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getUserAgent();
        }
        if (TextUtils.isEmpty(this.vv)) {
            this.vv = e.hp();
        }
        return this.vv;
    }

    @Override // com.byazt.pg.jl
    public String getVendor() {
        o oVarL;
        if (jx() && (oVarL = l()) != null) {
            return oVarL.getVendor();
        }
        if (TextUtils.isEmpty(this.xs)) {
            this.xs = Build.MANUFACTURER;
        }
        return this.xs;
    }

    @Override // com.byazt.pg.jl
    public String getWebViewUA(boolean z2) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null && !z2) {
            return oVarL.getWebViewUA();
        }
        if (TextUtils.isEmpty(this.sz)) {
            this.sz = e.hp(this.f23742d, this.wv.hp(), z2, this.wv.s(), this.wv.l());
        }
        return this.sz;
    }

    @Override // com.byazt.pg.jl
    public String getWifiMac(Boolean bool) {
        o oVarL;
        if (j() && jx() && (oVarL = l()) != null) {
            return oVarL.getWifiMac(bool);
        }
        if (TextUtils.isEmpty(this.gu)) {
            this.gu = com.byazt.oda.jx.j(bool, this.wv.hp(), this.f23742d);
        }
        return this.gu;
    }

    @Override // com.byazt.pg.jl
    public boolean isScreenOn() {
        return DeviceInfoUtils.a(this.f23742d);
    }

    @Override // com.byazt.pg.jl
    public void registerNetworkMonitor(jx jxVar) {
        q.hp(jxVar, this.f23742d);
    }

    public void release() {
        DeviceInfoUtils.jx(this.f23742d);
        DeviceInfoUtils.j(this.f23742d);
        DeviceInfoUtils.w(this.f23742d);
        com.byazt.oda.l.hp((l.hp) null);
        q.hp(this.f23748o);
        this.f23748o = null;
    }

    @Override // com.byazt.pg.jl
    public void removeNetworkMonitor(jx jxVar) {
        q.hp(jxVar);
    }

    private boolean hp() {
        return (mIsNeedUpdateIp.get() || DeviceInfoUtils.hp(this.di, c.f3507a) || TextUtils.isEmpty(this.cx)) ? false : true;
    }

    private o l() {
        return (o) com.byazt.ym.j.getService("device_info");
    }
}
