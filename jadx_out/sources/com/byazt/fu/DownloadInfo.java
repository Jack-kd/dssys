package com.byazt.fu;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.fn.r;
import com.byazt.io.BaseException;
import com.byazt.oy.DownloadStatus;
import com.byazt.oy.EnqueueType;
import com.byazt.oy.eb;
import com.byazt.xq.a;
import com.byazt.yk.e;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.bz;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 677, 2095})
/* loaded from: classes2.dex */
public class DownloadInfo implements Parcelable {
    public static final Parcelable.Creator<DownloadInfo> CREATOR = new Parcelable.Creator<DownloadInfo>() { // from class: com.byazt.fu.DownloadInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public DownloadInfo createFromParcel(Parcel parcel) {
            return new DownloadInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public DownloadInfo[] newArray(int i2) {
            return new DownloadInfo[i2];
        }
    };
    public static final int DEFAULT_MAX_PROCESS_POST_COUNT = 100;
    public static final long DEFAULT_MIN_BYTES_INTERVAL = 1048576;
    public static final int RESERVE_STATUS_NEVER = 0;
    public static final int RESERVE_STATUS_NOW = 2;
    public static final int RESERVE_STATUS_ONCE = 1;
    public static final String TAG = "DownloadInfo";
    public boolean addListenerToSameTask;
    public AtomicLong allConnectTime;
    public int appVersionCode;
    public com.byazt.oy.hp asyncHandleStatus;
    public boolean autoResumed;
    public int backUpUrlRetryCount;
    public boolean backUpUrlUsed;
    public List<String> backUpUrls;
    public String backUpUrlsStr;
    public int bindValueCount;
    public com.byazt.oy.l byteInvalidRetryStatus;
    public int chunkCount;
    public boolean chunkDowngradeRetryUsed;
    public int curBackUpUrlIndex;
    public AtomicLong curBytes;
    public int curRetryTime;
    public JSONObject dbJsonData;
    public String dbJsonDataString;
    public boolean deleteCacheIfCheckFailed;
    public boolean distinctDirectory;
    public long downloadTime;
    public String eTag;
    public EnqueueType enqueueType;
    public StringBuffer errorBytesLog;
    public boolean expiredRedownload;
    public String extra;
    public List<jx> extraHeaders;
    public int[] extraMonitorStatus;
    public BaseException failedException;
    public String filePackageName;
    public List<String> forbiddenBackupUrls;
    public boolean force;
    public boolean forceIgnoreRecommendSize;
    public boolean headConnectionAvailable;
    public String headConnectionException;
    public int httpStatusCode;
    public String httpStatusMessage;
    public boolean httpsToHttpRetryUsed;
    public String iconUrl;
    public int id;
    public boolean ignoreDataVerify;
    public Boolean isAutoInstallWithoutNotification;
    public boolean isFirstDownload;
    public boolean isFirstSuccess;
    public boolean isForbiddenRetryed;
    public volatile boolean isSaveTempFile;
    public AtomicLong lastNotifyProgressTime;
    public boolean mDownloadFromReserveWifi;
    public int maxBytes;
    public int maxProgressCount;
    public String md5;
    public String mimeType;
    public int minProgressTimeMsInterval;
    public String monitorScene;
    public String name;
    public boolean needChunkDowngradeRetry;
    public boolean needDefaultHttpServiceBackUp;
    public boolean needHttpsToHttpRetry;
    public boolean needIndependentProcess;
    public boolean needPostProgress;
    public boolean needRetryDelay;
    public boolean needReuseChunkRunnable;
    public boolean needReuseFirstConnection;
    public boolean needSDKMonitor;
    public String networkQuality;
    public int notificationVisibility;
    public boolean onlyWifi;
    public boolean openLimitSpeed;
    public String[] outIp;
    public int[] outSize;
    public SoftReference<PackageInfo> packageInfoRef;
    public String packageName;
    public long realDownloadTime;
    public long realStartDownloadTime;
    public int retryCount;
    public eb retryDelayStatus;
    public String retryDelayTimeArray;

    @Deprecated
    public int retryScheduleMinutes;
    public String savePath;
    public boolean showNotification;
    public boolean showNotificationForAutoResumed;
    public boolean showNotificationForNetworkResumed;
    public JSONObject spData;
    public long startDownloadTime;
    public AtomicInteger status;
    public int statusAtDbInit;
    public boolean successByCache;
    public boolean supportPartial;
    public String taskId;
    public ConcurrentHashMap<String, Object> tempCacheData;
    public volatile List<r> tempFileSaveCompleteCallbacks;
    public String tempPath;
    public long throttleNetSpeed;
    public String title;
    public long totalBytes;
    public long ttnetProtectTimeout;
    public String url;

    @com.byazt.kj.hp(hp = {0, 1, 677, 1334})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f20098a;
        public long as;

        /* renamed from: b, reason: collision with root package name */
        public boolean f20099b;
        public boolean cx;

        /* renamed from: d, reason: collision with root package name */
        public String f20100d;
        public boolean dy;

        /* renamed from: e, reason: collision with root package name */
        public String[] f20101e;
        public String ea;
        public String eb;
        public boolean ec;
        public int[] gu;
        public boolean hd;
        public String hp;
        public long hq;

        /* renamed from: j, reason: collision with root package name */
        public String f20103j;
        public int jl;
        public String jx;

        /* renamed from: k, reason: collision with root package name */
        public boolean f20104k;
        public boolean kg;
        public boolean ky;

        /* renamed from: l, reason: collision with root package name */
        public String f20105l;
        public boolean lv;

        /* renamed from: m, reason: collision with root package name */
        public JSONObject f20106m;
        public boolean mp;

        /* renamed from: ms, reason: collision with root package name */
        public String f20107ms;

        /* renamed from: n, reason: collision with root package name */
        public String f20108n;
        public int nd;
        public boolean ns;
        public String nu;

        /* renamed from: o, reason: collision with root package name */
        public boolean f20109o;
        public boolean pu;

        /* renamed from: q, reason: collision with root package name */
        public int f20110q;
        public int[] rz;

        /* renamed from: s, reason: collision with root package name */
        public List<jx> f20112s;

        /* renamed from: u, reason: collision with root package name */
        public int f20113u;
        public boolean ud;
        public boolean vq;
        public List<String> vv;

        /* renamed from: w, reason: collision with root package name */
        public String f20115w;
        public String wv;
        public boolean xh;
        public int xs;

        /* renamed from: y, reason: collision with root package name */
        public long f20116y;
        public String yr;
        public boolean zx;
        public int zy;

        /* renamed from: v, reason: collision with root package name */
        public boolean f20114v = true;
        public boolean sz = true;
        public boolean di = true;

        /* renamed from: r, reason: collision with root package name */
        public EnqueueType f20111r = EnqueueType.ENQUEUE_NONE;

        /* renamed from: f, reason: collision with root package name */
        public boolean f20102f = true;

        public hp() {
        }

        public hp a(String str) {
            this.f20115w = str;
            return this;
        }

        public hp e(String str) {
            this.wv = str;
            return this;
        }

        public hp eb(String str) {
            this.eb = str;
            return this;
        }

        public hp ec(boolean z2) {
            this.hd = z2;
            return this;
        }

        public hp gu(String str) {
            this.nu = str;
            return this;
        }

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp j(String str) {
            this.ea = str;
            return this;
        }

        public hp jl(boolean z2) {
            this.lv = z2;
            return this;
        }

        public hp jx(String str) {
            this.jx = str;
            return this;
        }

        public hp k(boolean z2) {
            this.ky = z2;
            return this;
        }

        public hp l(String str) {
            this.f20105l = str;
            return this;
        }

        public hp n(boolean z2) {
            this.vq = z2;
            return this;
        }

        public hp ns(boolean z2) {
            this.sz = z2;
            return this;
        }

        public hp q(boolean z2) {
            this.f20109o = z2;
            return this;
        }

        public hp s(String str) {
            this.f20108n = str;
            return this;
        }

        public hp sz(boolean z2) {
            this.zx = z2;
            return this;
        }

        public hp u(boolean z2) {
            this.mp = z2;
            return this;
        }

        public hp v(boolean z2) {
            this.xh = z2;
            return this;
        }

        public hp vv(boolean z2) {
            this.kg = z2;
            return this;
        }

        public hp w(String str) {
            this.f20103j = str;
            return this;
        }

        public hp xs(boolean z2) {
            this.f20102f = z2;
            return this;
        }

        public hp zy(boolean z2) {
            this.pu = z2;
            return this;
        }

        public hp a(boolean z2) {
            this.cx = z2;
            return this;
        }

        public hp e(boolean z2) {
            this.ud = z2;
            return this;
        }

        public hp eb(boolean z2) {
            this.f20099b = z2;
            return this;
        }

        public hp gu(boolean z2) {
            this.dy = z2;
            return this;
        }

        public hp hp(boolean z2) {
            this.f20098a = z2;
            return this;
        }

        public hp j(int i2) {
            this.f20113u = i2;
            return this;
        }

        public hp jl(String str) {
            this.yr = str;
            return this;
        }

        public hp jx(int i2) {
            this.zy = i2;
            return this;
        }

        public hp l(int i2) {
            this.jl = i2;
            return this;
        }

        public hp q(String str) {
            this.f20100d = str;
            return this;
        }

        public hp s(boolean z2) {
            this.di = z2;
            return this;
        }

        public hp w(int i2) {
            this.xs = i2;
            return this;
        }

        public hp zy(String str) {
            this.f20107ms = str;
            return this;
        }

        public hp a(int i2) {
            this.nd = i2;
            return this;
        }

        public hp hp(List<jx> list) {
            this.f20112s = list;
            return this;
        }

        public hp j(boolean z2) {
            this.ns = z2;
            return this;
        }

        public hp jx(boolean z2) {
            this.f20114v = z2;
            return this;
        }

        public hp l(boolean z2) {
            this.f20104k = z2;
            return this;
        }

        public hp w(boolean z2) {
            this.ec = z2;
            return this;
        }

        public hp hp(int i2) {
            this.f20110q = i2;
            return this;
        }

        public hp jx(long j2) {
            this.f20116y = j2;
            return this;
        }

        public hp l(List<String> list) {
            this.vv = list;
            return this;
        }

        public hp hp(String[] strArr) {
            this.f20101e = strArr;
            return this;
        }

        public hp l(int[] iArr) {
            this.rz = iArr;
            return this;
        }

        public hp(String str) {
            this.jx = str;
        }

        public hp hp(int[] iArr) {
            this.gu = iArr;
            return this;
        }

        public hp l(long j2) {
            this.as = j2;
            return this;
        }

        public hp hp(long j2) {
            this.hq = j2;
            return this;
        }

        public hp hp(EnqueueType enqueueType) {
            this.f20111r = enqueueType;
            return this;
        }

        public hp hp(JSONObject jSONObject) {
            this.f20106m = jSONObject;
            return this;
        }

        public DownloadInfo hp() {
            return new DownloadInfo(this);
        }
    }

    private void convertEnqueueType(int i2) {
        EnqueueType enqueueType = EnqueueType.ENQUEUE_HEAD;
        if (i2 == enqueueType.ordinal()) {
            this.enqueueType = enqueueType;
            return;
        }
        EnqueueType enqueueType2 = EnqueueType.ENQUEUE_TAIL;
        if (i2 == enqueueType2.ordinal()) {
            this.enqueueType = enqueueType2;
        } else {
            this.enqueueType = EnqueueType.ENQUEUE_NONE;
        }
    }

    private void convertRetryDelayStatus(int i2) {
        eb ebVar = eb.DELAY_RETRY_WAITING;
        if (i2 == ebVar.ordinal()) {
            this.retryDelayStatus = ebVar;
            return;
        }
        eb ebVar2 = eb.DELAY_RETRY_DOWNLOADING;
        if (i2 == ebVar2.ordinal()) {
            this.retryDelayStatus = ebVar2;
            return;
        }
        eb ebVar3 = eb.DELAY_RETRY_DOWNLOADED;
        if (i2 == ebVar3.ordinal()) {
            this.retryDelayStatus = ebVar3;
        } else {
            this.retryDelayStatus = eb.DELAY_RETRY_NONE;
        }
    }

    private JSONObject convertStrToJson(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new JSONObject(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void ensureDBJsonData() {
        if (this.dbJsonData == null) {
            synchronized (this) {
                try {
                    if (this.dbJsonData == null) {
                        if (TextUtils.isEmpty(this.dbJsonDataString)) {
                            this.dbJsonData = new JSONObject();
                        } else {
                            this.dbJsonData = new JSONObject(this.dbJsonDataString);
                            this.dbJsonDataString = null;
                        }
                    }
                } catch (Throwable unused) {
                    this.dbJsonData = new JSONObject();
                } finally {
                }
            }
        }
    }

    private void ensureSpData() {
        if (this.spData == null) {
            Context contextMp = com.byazt.yk.jx.mp();
            if (contextMp != null) {
                String string = com.byazt.rz.l.l(contextMp, "sp_download_info", 0).getString(Long.toString(getId()), "");
                if (!TextUtils.isEmpty(string)) {
                    try {
                        this.spData = new JSONObject(string);
                    } catch (JSONException unused) {
                    }
                }
            }
            if (this.spData == null) {
                this.spData = new JSONObject();
            }
        }
    }

    private void ensureTempCacheData() {
        if (this.tempCacheData == null) {
            synchronized (this) {
                try {
                    if (this.tempCacheData == null) {
                        this.tempCacheData = new ConcurrentHashMap<>();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private String getBackUpUrlsStr() {
        List<String> list;
        if (this.backUpUrlsStr == null && (list = this.backUpUrls) != null && !list.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (String str : this.backUpUrls) {
                    if (!TextUtils.isEmpty(str)) {
                        jSONArray.put(str);
                    }
                }
                this.backUpUrlsStr = jSONArray.toString();
            } catch (Exception unused) {
            }
        }
        if (this.backUpUrlsStr == null) {
            this.backUpUrlsStr = "";
        }
        return this.backUpUrlsStr;
    }

    private String getDBJsonDataString() {
        String string;
        String str = this.dbJsonDataString;
        if (str != null) {
            return str;
        }
        ensureDBJsonData();
        synchronized (this.dbJsonData) {
            string = this.dbJsonData.toString();
            this.dbJsonDataString = string;
        }
        return string;
    }

    private int getReserveWifiStatus() {
        ensureSpData();
        try {
            return this.spData.optInt("pause_reserve_on_wifi", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    private void mergeAuxiliaryJSONObject(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        ensureDBJsonData();
        synchronized (this.dbJsonData) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = jSONObject.opt(next);
                    if (!this.dbJsonData.has(next) && objOpt != null) {
                        this.dbJsonData.put(next, objOpt);
                    }
                }
            } catch (Exception unused) {
            }
            this.dbJsonDataString = null;
        }
        parseMonitorSetting();
    }

    private void parseMonitorSetting() {
        ensureDBJsonData();
        this.needSDKMonitor = this.dbJsonData.optBoolean("need_sdk_monitor", false);
        this.monitorScene = this.dbJsonData.optString("monitor_scene", "");
        JSONArray jSONArrayOptJSONArray = this.dbJsonData.optJSONArray("extra_monitor_status");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return;
        }
        this.extraMonitorStatus = new int[jSONArrayOptJSONArray.length()];
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            this.extraMonitorStatus[i2] = jSONArrayOptJSONArray.optInt(i2);
        }
    }

    private void putMonitorSetting() {
        safePutToDBJsonData("need_sdk_monitor", Boolean.valueOf(this.needSDKMonitor));
        safePutToDBJsonData("monitor_scene", this.monitorScene);
        try {
            JSONArray jSONArray = new JSONArray();
            int[] iArr = this.extraMonitorStatus;
            if (iArr != null && iArr.length > 0) {
                int i2 = 0;
                while (true) {
                    int[] iArr2 = this.extraMonitorStatus;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    jSONArray.put(iArr2[i2]);
                    i2++;
                }
            }
            safePutToDBJsonData("extra_monitor_status", jSONArray);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void refreshBackupUrls(boolean z2) {
        List<String> list = this.forbiddenBackupUrls;
        if (list == null || list.size() <= z2) {
            return;
        }
        List<String> list2 = this.backUpUrls;
        if (list2 == null) {
            this.backUpUrls = new ArrayList();
        } else {
            list2.clear();
        }
        this.backUpUrlUsed = false;
        this.curBackUpUrlIndex = 0;
        for (int i2 = z2; i2 < this.forbiddenBackupUrls.size(); i2++) {
            this.backUpUrls.add(this.forbiddenBackupUrls.get(i2));
        }
    }

    private void setBackUpUrlsStr(String str) {
        if (TextUtils.isEmpty(str) || getStatus() == -3) {
            return;
        }
        this.backUpUrlsStr = str;
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strOptString = jSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        arrayList.add(strOptString);
                    }
                }
                this.backUpUrls = arrayList;
            }
        } catch (Exception unused) {
        }
    }

    public void addErrorBytesLog(long j2, int i2, String str) {
        try {
            if (com.byazt.nu.hp.hp()) {
                if (this.errorBytesLog == null) {
                    this.errorBytesLog = new StringBuffer();
                }
                if (this.errorBytesLog.length() != 0) {
                    this.errorBytesLog.append(",");
                }
                StringBuffer stringBuffer = this.errorBytesLog;
                stringBuffer.append("[type:");
                stringBuffer.append(i2);
                stringBuffer.append(",bytes:");
                stringBuffer.append(j2);
                stringBuffer.append(",method:");
                stringBuffer.append(str);
                stringBuffer.append("]");
            }
        } catch (Exception unused) {
        }
    }

    public void bindValue(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        this.bindValueCount = 0;
        sQLiteStatement.clearBindings();
        int i2 = this.bindValueCount + 1;
        this.bindValueCount = i2;
        sQLiteStatement.bindLong(i2, this.id);
        int i3 = this.bindValueCount + 1;
        this.bindValueCount = i3;
        String str = this.url;
        if (str == null) {
            str = "";
        }
        sQLiteStatement.bindString(i3, str);
        int i4 = this.bindValueCount + 1;
        this.bindValueCount = i4;
        String str2 = this.savePath;
        if (str2 == null) {
            str2 = "";
        }
        sQLiteStatement.bindString(i4, str2);
        int i5 = this.bindValueCount + 1;
        this.bindValueCount = i5;
        String str3 = this.tempPath;
        if (str3 == null) {
            str3 = "";
        }
        sQLiteStatement.bindString(i5, str3);
        int i6 = this.bindValueCount + 1;
        this.bindValueCount = i6;
        String str4 = this.name;
        if (str4 == null) {
            str4 = "";
        }
        sQLiteStatement.bindString(i6, str4);
        int i7 = this.bindValueCount + 1;
        this.bindValueCount = i7;
        sQLiteStatement.bindLong(i7, this.chunkCount);
        int i8 = this.bindValueCount + 1;
        this.bindValueCount = i8;
        sQLiteStatement.bindLong(i8, getStatus());
        int i9 = this.bindValueCount + 1;
        this.bindValueCount = i9;
        sQLiteStatement.bindLong(i9, getCurBytes());
        int i10 = this.bindValueCount + 1;
        this.bindValueCount = i10;
        sQLiteStatement.bindLong(i10, this.totalBytes);
        int i11 = this.bindValueCount + 1;
        this.bindValueCount = i11;
        String str5 = this.eTag;
        if (str5 == null) {
            str5 = "";
        }
        sQLiteStatement.bindString(i11, str5);
        int i12 = this.bindValueCount + 1;
        this.bindValueCount = i12;
        sQLiteStatement.bindLong(i12, this.onlyWifi ? 1L : 0L);
        int i13 = this.bindValueCount + 1;
        this.bindValueCount = i13;
        sQLiteStatement.bindLong(i13, this.force ? 1L : 0L);
        int i14 = this.bindValueCount + 1;
        this.bindValueCount = i14;
        sQLiteStatement.bindLong(i14, this.retryCount);
        int i15 = this.bindValueCount + 1;
        this.bindValueCount = i15;
        String str6 = this.extra;
        if (str6 == null) {
            str6 = "";
        }
        sQLiteStatement.bindString(i15, str6);
        int i16 = this.bindValueCount + 1;
        this.bindValueCount = i16;
        String str7 = this.mimeType;
        if (str7 == null) {
            str7 = "";
        }
        sQLiteStatement.bindString(i16, str7);
        int i17 = this.bindValueCount + 1;
        this.bindValueCount = i17;
        String str8 = this.title;
        if (str8 == null) {
            str8 = "";
        }
        sQLiteStatement.bindString(i17, str8);
        int i18 = this.bindValueCount + 1;
        this.bindValueCount = i18;
        sQLiteStatement.bindLong(i18, this.showNotification ? 1L : 0L);
        int i19 = this.bindValueCount + 1;
        this.bindValueCount = i19;
        sQLiteStatement.bindLong(i19, this.notificationVisibility);
        int i20 = this.bindValueCount + 1;
        this.bindValueCount = i20;
        sQLiteStatement.bindLong(i20, this.isFirstDownload ? 1L : 0L);
        int i21 = this.bindValueCount + 1;
        this.bindValueCount = i21;
        sQLiteStatement.bindLong(i21, this.isFirstSuccess ? 1L : 0L);
        int i22 = this.bindValueCount + 1;
        this.bindValueCount = i22;
        sQLiteStatement.bindLong(i22, this.needHttpsToHttpRetry ? 1L : 0L);
        int i23 = this.bindValueCount + 1;
        this.bindValueCount = i23;
        sQLiteStatement.bindLong(i23, this.downloadTime);
        int i24 = this.bindValueCount + 1;
        this.bindValueCount = i24;
        String str9 = this.packageName;
        if (str9 == null) {
            str9 = "";
        }
        sQLiteStatement.bindString(i24, str9);
        int i25 = this.bindValueCount + 1;
        this.bindValueCount = i25;
        String str10 = this.md5;
        if (str10 == null) {
            str10 = "";
        }
        sQLiteStatement.bindString(i25, str10);
        int i26 = this.bindValueCount + 1;
        this.bindValueCount = i26;
        sQLiteStatement.bindLong(i26, this.needRetryDelay ? 1L : 0L);
        int i27 = this.bindValueCount + 1;
        this.bindValueCount = i27;
        sQLiteStatement.bindLong(i27, this.curRetryTime);
        int i28 = this.bindValueCount + 1;
        this.bindValueCount = i28;
        sQLiteStatement.bindLong(i28, this.retryDelayStatus.ordinal());
        int i29 = this.bindValueCount + 1;
        this.bindValueCount = i29;
        sQLiteStatement.bindLong(i29, this.needDefaultHttpServiceBackUp ? 1L : 0L);
        int i30 = this.bindValueCount + 1;
        this.bindValueCount = i30;
        sQLiteStatement.bindLong(i30, this.needReuseChunkRunnable ? 1L : 0L);
        int i31 = this.bindValueCount + 1;
        this.bindValueCount = i31;
        String str11 = this.retryDelayTimeArray;
        if (str11 == null) {
            str11 = "";
        }
        sQLiteStatement.bindString(i31, str11);
        int i32 = this.bindValueCount + 1;
        this.bindValueCount = i32;
        sQLiteStatement.bindLong(i32, this.needChunkDowngradeRetry ? 1L : 0L);
        int i33 = this.bindValueCount + 1;
        this.bindValueCount = i33;
        sQLiteStatement.bindString(i33, getBackUpUrlsStr());
        int i34 = this.bindValueCount + 1;
        this.bindValueCount = i34;
        sQLiteStatement.bindLong(i34, this.backUpUrlRetryCount);
        int i35 = this.bindValueCount + 1;
        this.bindValueCount = i35;
        sQLiteStatement.bindLong(i35, this.realDownloadTime);
        int i36 = this.bindValueCount + 1;
        this.bindValueCount = i36;
        sQLiteStatement.bindLong(i36, this.retryScheduleMinutes);
        int i37 = this.bindValueCount + 1;
        this.bindValueCount = i37;
        sQLiteStatement.bindLong(i37, this.needIndependentProcess ? 1L : 0L);
        int i38 = this.bindValueCount + 1;
        this.bindValueCount = i38;
        sQLiteStatement.bindString(i38, getDBJsonDataString());
        int i39 = this.bindValueCount + 1;
        this.bindValueCount = i39;
        String str12 = this.iconUrl;
        if (str12 == null) {
            str12 = "";
        }
        sQLiteStatement.bindString(i39, str12);
        int i40 = this.bindValueCount + 1;
        this.bindValueCount = i40;
        sQLiteStatement.bindLong(i40, this.appVersionCode);
        int i41 = this.bindValueCount + 1;
        this.bindValueCount = i41;
        String str13 = this.taskId;
        sQLiteStatement.bindString(i41, str13 != null ? str13 : "");
    }

    public boolean cacheExpierd() {
        if (isDownloaded()) {
            return a.j(this);
        }
        return true;
    }

    public boolean canNotifyProgress() {
        long j2 = this.lastNotifyProgressTime.get();
        return j2 == 0 || SystemClock.uptimeMillis() - j2 > 20;
    }

    public boolean canReStartAsyncTask() {
        return getStatus() != -3 && this.asyncHandleStatus == com.byazt.oy.hp.ASYNC_HANDLE_WAITING;
    }

    public boolean canReplaceHttpForRetry() {
        return !TextUtils.isEmpty(this.url) && this.url.startsWith("https") && this.needHttpsToHttpRetry && !this.httpsToHttpRetryUsed;
    }

    public boolean canShowNotification() {
        boolean z2 = this.autoResumed;
        if (!z2 && this.showNotification) {
            return true;
        }
        if (z2) {
            return this.showNotificationForAutoResumed || this.showNotificationForNetworkResumed;
        }
        return false;
    }

    public boolean canSkipStatusHandler() {
        com.byazt.oy.hp hpVar;
        int status = getStatus();
        return status == 7 || this.retryDelayStatus == eb.DELAY_RETRY_WAITING || status == 8 || (hpVar = this.asyncHandleStatus) == com.byazt.oy.hp.ASYNC_HANDLE_WAITING || hpVar == com.byazt.oy.hp.ASYNC_HANDLE_RESTART || this.byteInvalidRetryStatus == com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_RESTART;
    }

    public boolean canStartRetryDelayTask() {
        return isNeedRetryDelay() && getStatus() != -3 && this.retryDelayStatus == eb.DELAY_RETRY_WAITING;
    }

    public void changeSkipStatus() {
        com.byazt.oy.hp hpVar;
        int status = getStatus();
        if (status == 7 || this.retryDelayStatus == eb.DELAY_RETRY_WAITING) {
            setRetryDelayStatus(eb.DELAY_RETRY_DOWNLOADING);
        }
        if (status == 8 || (hpVar = this.asyncHandleStatus) == com.byazt.oy.hp.ASYNC_HANDLE_WAITING || hpVar == com.byazt.oy.hp.ASYNC_HANDLE_RESTART) {
            setAsyncHandleStatus(com.byazt.oy.hp.ASYNC_HANDLE_DOWNLOADING);
        }
        if (this.byteInvalidRetryStatus == com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_RESTART) {
            setByteInvalidRetryStatus(com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_DOWNLOADING);
        }
    }

    public int checkMd5Status() {
        return a.l(getSavePath(), getName(), this.md5);
    }

    public boolean checkMd5Valid() {
        return a.jx(getSavePath(), getName(), this.md5);
    }

    public void clearSpData() {
        Context contextMp = com.byazt.yk.jx.mp();
        if (contextMp != null) {
            try {
                com.byazt.rz.l.l(contextMp, "sp_download_info", 0).edit().remove(Integer.toString(getId())).apply();
            } catch (Throwable unused) {
            }
        }
    }

    public void copyFromCacheData(DownloadInfo downloadInfo, boolean z2) {
        if (downloadInfo == null) {
            return;
        }
        setChunkCount(downloadInfo.getChunkCount());
        setTotalBytes(downloadInfo.getTotalBytes());
        setCurBytes(downloadInfo.getCurBytes(), true);
        this.realDownloadTime = downloadInfo.realDownloadTime;
        if (downloadInfo.canSkipStatusHandler() || canSkipStatusHandler()) {
            this.curRetryTime = downloadInfo.getCurRetryTime();
        } else {
            this.curRetryTime = 0;
            this.isForbiddenRetryed = false;
            this.backUpUrlUsed = false;
            this.curBackUpUrlIndex = 0;
            this.httpsToHttpRetryUsed = false;
        }
        seteTag(downloadInfo.geteTag());
        if (z2) {
            setStatus(downloadInfo.getStatus());
        }
        this.isFirstDownload = downloadInfo.getIsFirstDownload();
        this.isFirstSuccess = downloadInfo.isFirstSuccess();
        this.retryDelayStatus = downloadInfo.getRetryDelayStatus();
        mergeAuxiliaryJSONObject(downloadInfo.dbJsonData);
    }

    public void copyTaskIdFromCacheData(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.taskId = downloadInfo.getTaskId();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equalsTask(DownloadInfo downloadInfo) {
        String str;
        String str2;
        return (downloadInfo == null || (str = this.url) == null || !str.equals(downloadInfo.getUrl()) || (str2 = this.savePath) == null || !str2.equals(downloadInfo.getSavePath())) ? false : true;
    }

    public void erase() {
        setCurBytes(0L, true);
        this.totalBytes = 0L;
        this.chunkCount = 1;
        this.downloadTime = 0L;
        this.realStartDownloadTime = 0L;
        this.realDownloadTime = 0L;
        this.curRetryTime = 0;
        this.isFirstDownload = true;
        this.isFirstSuccess = true;
        this.backUpUrlUsed = false;
        this.httpsToHttpRetryUsed = false;
        this.eTag = null;
        this.failedException = null;
        this.tempCacheData = null;
        this.packageInfoRef = null;
    }

    public void generateTaskId() {
        this.taskId = UUID.randomUUID().toString();
    }

    public long getAllConnectTime() {
        ensureDBJsonData();
        if (this.allConnectTime == null) {
            this.allConnectTime = new AtomicLong(this.dbJsonData.optLong("dbjson_key_all_connect_time"));
        }
        return this.allConnectTime.get();
    }

    public int getAntiHijackErrorCode(int i2) {
        ensureDBJsonData();
        return this.dbJsonData.optInt("anti_hijack_error_code", i2);
    }

    public int getAppVersionCode() {
        return this.appVersionCode;
    }

    public com.byazt.oy.hp getAsyncHandleStatus() {
        return this.asyncHandleStatus;
    }

    public String getBackUpUrl() {
        List<String> list;
        int i2;
        if (!this.backUpUrlUsed || (list = this.backUpUrls) == null || list.size() <= 0 || (i2 = this.curBackUpUrlIndex) < 0 || i2 >= this.backUpUrls.size()) {
            return "";
        }
        String str = this.backUpUrls.get(this.curBackUpUrlIndex);
        return !TextUtils.isEmpty(str) ? str : "";
    }

    public int getBackUpUrlRetryCount() {
        return this.backUpUrlRetryCount;
    }

    public List<String> getBackUpUrls() {
        return this.backUpUrls;
    }

    public int getBindValueCount() {
        return this.bindValueCount;
    }

    public com.byazt.oy.l getByteInvalidRetryStatus() {
        return this.byteInvalidRetryStatus;
    }

    public String getCacheControl() {
        ensureSpData();
        try {
            return this.spData.optString("cache-control", null);
        } catch (Exception unused) {
            return null;
        }
    }

    public long getCacheExpiredTime() {
        ensureSpData();
        try {
            return this.spData.optLong("cache-control/expired_time", -1L);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public int getChunkCount() {
        return this.chunkCount;
    }

    public String getConnectionUrl() {
        List<String> list;
        int i2;
        List<String> list2;
        String str = this.url;
        if (getStatus() == 8 && (list2 = this.forbiddenBackupUrls) != null && !list2.isEmpty() && !this.backUpUrlUsed) {
            return this.forbiddenBackupUrls.get(0);
        }
        if (!this.backUpUrlUsed || (list = this.backUpUrls) == null || list.size() <= 0 || (i2 = this.curBackUpUrlIndex) < 0 || i2 >= this.backUpUrls.size()) {
            return (!TextUtils.isEmpty(this.url) && this.url.startsWith("https") && this.needHttpsToHttpRetry && this.httpsToHttpRetryUsed) ? this.url.replaceFirst("https", "http") : str;
        }
        String str2 = this.backUpUrls.get(this.curBackUpUrlIndex);
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }

    public int getCurBackUpUrlIndex() {
        return this.curBackUpUrlIndex;
    }

    public long getCurBytes() {
        AtomicLong atomicLong = this.curBytes;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return 0L;
    }

    public int getCurRetryTime() {
        return this.curRetryTime;
    }

    public int getCurRetryTimeInTotal() {
        int i2 = this.curRetryTime;
        if (!this.backUpUrlUsed) {
            return i2;
        }
        int i3 = i2 + this.retryCount;
        int i4 = this.curBackUpUrlIndex;
        return i4 > 0 ? i3 + (i4 * this.backUpUrlRetryCount) : i3;
    }

    public int getDBJsonInt(String str) {
        ensureDBJsonData();
        return this.dbJsonData.optInt(str);
    }

    public String getDBJsonString(String str) {
        ensureDBJsonData();
        return this.dbJsonData.optString(str);
    }

    public long getDownloadPrepareTime() {
        ensureDBJsonData();
        return this.dbJsonData.optLong("dbjson_key_download_prepare_time");
    }

    public int getDownloadProcess() {
        if (this.totalBytes <= 0) {
            return 0;
        }
        if (getCurBytes() > this.totalBytes) {
            return 100;
        }
        return (int) ((getCurBytes() * 100) / this.totalBytes);
    }

    public String getDownloadSettingString() {
        ensureDBJsonData();
        return this.dbJsonData.optString("download_setting");
    }

    public double getDownloadSpeed() {
        double curBytes = getCurBytes() / 1048576.0d;
        double realDownloadTime = getRealDownloadTime() / 1000.0d;
        if (curBytes <= 0.0d || realDownloadTime <= 0.0d) {
            return -1.0d;
        }
        return curBytes / realDownloadTime;
    }

    public long getDownloadTime() {
        return this.downloadTime;
    }

    public EnqueueType getEnqueueType() {
        return this.enqueueType;
    }

    public String getErrorBytesLog() {
        StringBuffer stringBuffer = this.errorBytesLog;
        return (stringBuffer == null || stringBuffer.length() == 0) ? "" : this.errorBytesLog.toString();
    }

    public int getExecutorGroup() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("executor_group", 2);
    }

    public long getExpectFileLength() {
        ensureDBJsonData();
        return this.dbJsonData.optLong("dbjson_key_expect_file_length");
    }

    public String getExtra() {
        return this.extra;
    }

    public List<jx> getExtraHeaders() {
        return this.extraHeaders;
    }

    public int[] getExtraMonitorStatus() {
        return this.extraMonitorStatus;
    }

    public BaseException getFailedException() {
        return this.failedException;
    }

    public int getFailedResumeCount() {
        ensureSpData();
        return this.spData.optInt("failed_resume_count", 0);
    }

    public String getFilePackageName() {
        return this.filePackageName;
    }

    public long getFirstSpeedTime() {
        ensureDBJsonData();
        return this.dbJsonData.optLong("dbjson_key_first_speed_time");
    }

    public List<String> getForbiddenBackupUrls() {
        return this.forbiddenBackupUrls;
    }

    public String getHeadConnectionException() {
        return this.headConnectionException;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public String getHttpStatusMessage() {
        return this.httpStatusMessage;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public int getId() {
        if (this.id == 0) {
            this.id = com.byazt.yk.jx.hp(this);
        }
        return this.id;
    }

    public boolean getIsFirstDownload() {
        return this.isFirstDownload;
    }

    public long getLastDownloadTime() {
        ensureDBJsonData();
        return this.dbJsonData.optLong("dbjson_last_start_download_time", 0L);
    }

    public long getLastFailedResumeTime() {
        ensureSpData();
        return this.spData.optLong("last_failed_resume_time", 0L);
    }

    public String getLastModified() {
        ensureSpData();
        try {
            return this.spData.optString("last-modified", null);
        } catch (Exception unused) {
            return null;
        }
    }

    public long getLastUninstallResumeTime() {
        ensureSpData();
        return this.spData.optLong("last_unins_resume_time", 0L);
    }

    public int getLinkMode() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("link_mode");
    }

    public int getMaxBytes() {
        return this.maxBytes;
    }

    public int getMaxProgressCount() {
        return this.maxProgressCount;
    }

    public String getMd5() {
        return this.md5;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public long getMinByteIntervalForPostToMainThread(long j2) {
        int i2 = this.maxProgressCount;
        if (i2 <= 0) {
            i2 = 100;
        }
        long j3 = j2 / (i2 + 1);
        if (j3 <= 0) {
            return 1048576L;
        }
        return j3;
    }

    public int getMinProgressTimeMsInterval() {
        int i2 = this.minProgressTimeMsInterval;
        if (i2 < 1000) {
            return 1000;
        }
        return i2;
    }

    public String getMonitorScene() {
        return this.monitorScene;
    }

    public String getName() {
        return this.name;
    }

    public String getNetworkQuality() {
        return this.networkQuality;
    }

    public int getNotificationVisibility() {
        return this.notificationVisibility;
    }

    public boolean getOpenLimitSpeed() {
        return this.openLimitSpeed;
    }

    public String[] getOutIp() {
        return this.outIp;
    }

    public int[] getOutSize() {
        return this.outSize;
    }

    public PackageInfo getPackageInfo() {
        SoftReference<PackageInfo> softReference = this.packageInfoRef;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getPausedResumeCount() {
        ensureSpData();
        return this.spData.optInt("paused_resume_count", 0);
    }

    public int getPreconnectLevel() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("dbjson_key_preconnect_level", 0);
    }

    public long getRealDownloadTime() {
        return TimeUnit.NANOSECONDS.toMillis(this.realDownloadTime);
    }

    public int getRealStatus() {
        AtomicInteger atomicInteger = this.status;
        if (atomicInteger != null) {
            return atomicInteger.get();
        }
        return 0;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public eb getRetryDelayStatus() {
        return this.retryDelayStatus;
    }

    public String getRetryDelayTimeArray() {
        return this.retryDelayTimeArray;
    }

    public int getRetryScheduleCount() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("retry_schedule_count", 0);
    }

    public String getSavePath() {
        return this.savePath;
    }

    public int getSpIntVal(String str) {
        ensureSpData();
        return this.spData.optInt(str, 0);
    }

    public long getSpLongVal(String str) {
        ensureSpData();
        return this.spData.optLong(str, 0L);
    }

    public String getSpStringVal(String str) {
        ensureSpData();
        return this.spData.optString(str, null);
    }

    public int getStatus() {
        AtomicInteger atomicInteger = this.status;
        if (atomicInteger == null) {
            return 0;
        }
        int i2 = atomicInteger.get();
        if (i2 == -5) {
            return -2;
        }
        return i2;
    }

    public int getStatusAtDbInit() {
        return this.statusAtDbInit;
    }

    public int getTTMd5CheckStatus() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("ttmd5_check_status", -1);
    }

    public String getTargetFilePath() {
        return a.hp(this.savePath, this.name);
    }

    public String getTaskId() {
        return this.taskId;
    }

    public String getTaskKey() {
        ensureDBJsonData();
        return this.dbJsonData.optString("task_key");
    }

    public ConcurrentHashMap<String, Object> getTempCacheData() {
        ensureTempCacheData();
        return this.tempCacheData;
    }

    public String getTempFilePath() {
        return a.hp(this.savePath, this.tempPath, this.name);
    }

    public String getTempName() {
        return a.jx(this.name);
    }

    public String getTempPath() {
        return a.l(this.savePath, this.tempPath);
    }

    public long getThrottleNetSpeed() {
        return this.throttleNetSpeed;
    }

    public String getTitle() {
        return TextUtils.isEmpty(this.title) ? this.name : this.title;
    }

    public long getTotalBytes() {
        return this.totalBytes;
    }

    public int getTotalRetryCount() {
        int i2 = this.retryCount;
        List<String> list = this.backUpUrls;
        return (list == null || list.isEmpty()) ? i2 : i2 + (this.backUpUrlRetryCount * this.backUpUrls.size());
    }

    public long getTtnetProtectTimeout() {
        return this.ttnetProtectTimeout;
    }

    public int getUninstallResumeCount() {
        ensureSpData();
        return this.spData.optInt("unins_resume_count", 0);
    }

    public String getUrl() {
        return this.url;
    }

    public String geteTag() {
        return this.eTag;
    }

    public synchronized void handleTempSaveCallback(boolean z2, BaseException baseException) {
        try {
            this.isSaveTempFile = false;
            if (this.tempFileSaveCompleteCallbacks == null) {
                return;
            }
            com.byazt.nu.hp.l(TAG, "handleTempSaveCallback isSuccess " + z2 + " callback size:" + this.tempFileSaveCompleteCallbacks.size());
            for (r rVar : this.tempFileSaveCompleteCallbacks) {
                if (rVar != null) {
                    if (z2) {
                        rVar.hp();
                    } else {
                        rVar.hp(baseException);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean hasNextBackupUrl() {
        int i2;
        List<String> list = this.backUpUrls;
        if (list == null || list.size() <= 0) {
            return false;
        }
        return !this.backUpUrlUsed || ((i2 = this.curBackUpUrlIndex) >= 0 && i2 < this.backUpUrls.size() - 1);
    }

    public boolean hasPauseReservedOnWifi() {
        return (getReserveWifiStatus() & 1) > 0;
    }

    public void increaseAllConnectTime(long j2) {
        if (j2 > 0) {
            getAllConnectTime();
            safePutToDBJsonData("dbjson_key_all_connect_time", Long.valueOf(this.allConnectTime.addAndGet(j2)));
        }
    }

    public void increaseCurBytes(long j2) {
        this.curBytes.addAndGet(j2);
    }

    public void increaseDownloadPrepareTime(long j2) {
        if (j2 > 0) {
            safePutToDBJsonData("dbjson_key_download_prepare_time", Long.valueOf(getDownloadPrepareTime() + j2));
        }
    }

    public boolean isAddListenerToSameTask() {
        return this.addListenerToSameTask;
    }

    public boolean isAutoInstall() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("auto_install", 1) == 1;
    }

    public boolean isAutoInstallWithoutNotification() {
        if (this.isAutoInstallWithoutNotification == null) {
            if (TextUtils.isEmpty(this.extra)) {
                this.isAutoInstallWithoutNotification = Boolean.FALSE;
            } else {
                try {
                    this.isAutoInstallWithoutNotification = Boolean.valueOf(new JSONObject(this.extra).optBoolean("auto_install_without_notification", false));
                } catch (JSONException unused) {
                }
            }
        }
        return this.isAutoInstallWithoutNotification.booleanValue();
    }

    public boolean isAutoResumed() {
        return this.autoResumed;
    }

    public boolean isBackUpUrlUsed() {
        return this.backUpUrlUsed;
    }

    public boolean isBreakpointAvailable() {
        if (isFileDataValid()) {
            return isChunkBreakpointAvailable();
        }
        return false;
    }

    public boolean isCanResumeFromBreakPointStatus() {
        int status = getStatus();
        return status == 4 || status == 3 || status == -1 || status == 5 || status == 8 || ((status == 1 || status == 2) && getCurBytes() > 0);
    }

    public boolean isChunkBreakpointAvailable() {
        e eVarDi;
        if (this.chunkCount > 1 && (eVarDi = com.byazt.yk.jx.di()) != null) {
            List<l> listJx = eVarDi.jx(getId());
            if (listJx == null || listJx.size() != this.chunkCount) {
                return false;
            }
            long jV = 0;
            for (l lVar : listJx) {
                if (lVar != null) {
                    jV += lVar.v();
                }
            }
            if (jV != getCurBytes()) {
                setCurBytes(jV);
            }
        }
        return true;
    }

    public boolean isChunkDowngradeRetryUsed() {
        return this.chunkDowngradeRetryUsed;
    }

    public boolean isChunked() {
        return a.l(this.totalBytes);
    }

    public boolean isDeleteCacheIfCheckFailed() {
        return this.deleteCacheIfCheckFailed;
    }

    public boolean isDownloadFromReserveWifi() {
        return this.mDownloadFromReserveWifi;
    }

    public boolean isDownloadOverStatus() {
        return DownloadStatus.isDownloadOver(getStatus());
    }

    public boolean isDownloadWithWifiValid() {
        return !isOnlyWifi() || a.l(com.byazt.yk.jx.mp());
    }

    public boolean isDownloaded() {
        return a.jx(this);
    }

    public boolean isDownloadingStatus() {
        return DownloadStatus.isDownloading(getStatus());
    }

    public boolean isEntityInvalid() {
        return TextUtils.isEmpty(this.url) || TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.savePath);
    }

    public boolean isExpiredRedownload() {
        if (com.byazt.jb.hp.jx().hp("force_close_download_cache_check", 0) != 1) {
            return this.expiredRedownload;
        }
        com.byazt.nu.hp.jx("isExpiredRedownload force to false, reason(global setting) id=" + getId() + " name=" + getName());
        return false;
    }

    public boolean isFileDataExists() {
        if (isEntityInvalid()) {
            return false;
        }
        File file = new File(getTempPath(), getTempName());
        return file.exists() && !file.isDirectory();
    }

    public boolean isFileDataValid() {
        if (isEntityInvalid()) {
            return false;
        }
        File file = new File(getTempPath(), getTempName());
        boolean zExists = file.exists();
        boolean zIsDirectory = file.isDirectory();
        if (zExists && !zIsDirectory) {
            long length = file.length();
            long curBytes = getCurBytes();
            if (com.byazt.jb.hp.jx().hp("fix_file_data_valid")) {
                if (curBytes > 0) {
                    long j2 = this.totalBytes;
                    if (j2 > 0 && this.chunkCount > 0 && length >= curBytes && length <= j2) {
                        return true;
                    }
                }
                com.byazt.nu.hp.j(TAG, "isFileDataValid: cur = " + curBytes + ",totalBytes =" + this.totalBytes + ",fileLength=" + length);
                return false;
            }
            if (length > 0 && curBytes > 0) {
                long j3 = this.totalBytes;
                if (j3 > 0 && this.chunkCount > 0 && length >= curBytes && length <= j3 && curBytes < j3) {
                    return true;
                }
            }
            com.byazt.nu.hp.j(TAG, "isFileDataValid: cur = " + curBytes + ",totalBytes =" + this.totalBytes + ",fileLength=" + length);
        }
        return false;
    }

    public boolean isFirstDownload() {
        return (!this.isFirstDownload || TextUtils.isEmpty(getTempPath()) || TextUtils.isEmpty(getTempName()) || new File(getTempPath(), getTempName()).exists()) ? false : true;
    }

    public boolean isFirstSuccess() {
        return this.isFirstSuccess;
    }

    public boolean isForbiddenRetryed() {
        return this.isForbiddenRetryed;
    }

    public boolean isForce() {
        return this.force;
    }

    public boolean isForceIgnoreRecommendSize() {
        return this.forceIgnoreRecommendSize;
    }

    public boolean isHeadConnectionAvailable() {
        return this.headConnectionAvailable;
    }

    public boolean isHttpsToHttpRetryUsed() {
        return this.httpsToHttpRetryUsed;
    }

    public boolean isIgnoreDataVerify() {
        return this.ignoreDataVerify;
    }

    public boolean isNeedChunkDowngradeRetry() {
        return this.needChunkDowngradeRetry;
    }

    public boolean isNeedDefaultHttpServiceBackUp() {
        return this.needDefaultHttpServiceBackUp;
    }

    public boolean isNeedHttpsToHttpRetry() {
        return this.needHttpsToHttpRetry;
    }

    public boolean isNeedIndependentProcess() {
        return this.needIndependentProcess;
    }

    public boolean isNeedPostProgress() {
        return this.needPostProgress;
    }

    public boolean isNeedRetryDelay() {
        return false;
    }

    public boolean isNeedReuseChunkRunnable() {
        return this.needReuseChunkRunnable;
    }

    public boolean isNeedReuseFirstConnection() {
        return this.needReuseFirstConnection;
    }

    public boolean isNeedSDKMonitor() {
        return this.needSDKMonitor;
    }

    public boolean isNewTask() {
        return getStatus() == 0;
    }

    public boolean isOnlyWifi() {
        return this.onlyWifi;
    }

    public boolean isPauseReserveOnWifi() {
        return (getReserveWifiStatus() & 2) > 0;
    }

    public boolean isPauseReserveWithWifiValid() {
        if (this.mDownloadFromReserveWifi) {
            return isPauseReserveOnWifi() && a.l(com.byazt.yk.jx.mp());
        }
        return true;
    }

    public boolean isRwConcurrent() {
        ensureDBJsonData();
        return this.dbJsonData.optInt("rw_concurrent", 0) == 1;
    }

    public boolean isSavePathRedirected() {
        ensureDBJsonData();
        return this.dbJsonData.optBoolean("is_save_path_redirected", false);
    }

    public synchronized boolean isSaveTempFile() {
        return this.isSaveTempFile;
    }

    public boolean isShowNotification() {
        return this.showNotification;
    }

    public boolean isShowNotificationForAutoResumed() {
        return this.showNotificationForAutoResumed;
    }

    public boolean isShowNotificationForNetworkResumed() {
        return this.showNotificationForNetworkResumed;
    }

    public boolean isSuccessByCache() {
        return this.successByCache;
    }

    public boolean isSupportPartial() {
        return this.supportPartial;
    }

    public boolean isWaitingWifiStatus() {
        BaseException baseException = this.failedException;
        return baseException != null && baseException.getErrorCode() == 1013;
    }

    public void readFromParcel(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        this.title = parcel.readString();
        this.url = parcel.readString();
        this.savePath = parcel.readString();
        this.tempPath = parcel.readString();
        this.onlyWifi = parcel.readByte() != 0;
        this.extra = parcel.readString();
        this.extraHeaders = parcel.createTypedArrayList(jx.CREATOR);
        this.maxBytes = parcel.readInt();
        this.outIp = parcel.createStringArray();
        this.outSize = parcel.createIntArray();
        this.retryCount = parcel.readInt();
        this.backUpUrlRetryCount = parcel.readInt();
        this.force = parcel.readByte() != 0;
        this.needPostProgress = parcel.readByte() != 0;
        this.maxProgressCount = parcel.readInt();
        this.minProgressTimeMsInterval = parcel.readInt();
        this.backUpUrls = parcel.createStringArrayList();
        this.showNotification = parcel.readByte() != 0;
        this.mimeType = parcel.readString();
        this.needHttpsToHttpRetry = parcel.readByte() != 0;
        this.packageName = parcel.readString();
        this.md5 = parcel.readString();
        this.needRetryDelay = parcel.readByte() != 0;
        this.needDefaultHttpServiceBackUp = parcel.readByte() != 0;
        this.needReuseChunkRunnable = parcel.readByte() != 0;
        this.retryDelayTimeArray = parcel.readString();
        this.eTag = parcel.readString();
        this.curRetryTime = parcel.readInt();
        convertRetryDelayStatus(parcel.readInt());
        this.needReuseFirstConnection = parcel.readByte() != 0;
        this.forceIgnoreRecommendSize = parcel.readByte() != 0;
        this.networkQuality = parcel.readString();
        this.curBackUpUrlIndex = parcel.readInt();
        this.notificationVisibility = parcel.readInt();
        this.chunkCount = parcel.readInt();
        setCurBytes(parcel.readLong());
        this.totalBytes = parcel.readLong();
        setStatus(parcel.readInt());
        this.downloadTime = parcel.readLong();
        this.realDownloadTime = parcel.readLong();
        this.backUpUrlUsed = parcel.readByte() != 0;
        this.httpsToHttpRetryUsed = parcel.readByte() != 0;
        try {
            StringBuffer stringBuffer = this.errorBytesLog;
            if (stringBuffer == null) {
                this.errorBytesLog = new StringBuffer(parcel.readString());
            } else {
                stringBuffer.delete(0, stringBuffer.length()).append(parcel.readString());
            }
        } catch (Exception unused) {
        }
        this.autoResumed = parcel.readByte() != 0;
        this.showNotificationForAutoResumed = parcel.readByte() != 0;
        this.showNotificationForNetworkResumed = parcel.readByte() != 0;
        this.forbiddenBackupUrls = parcel.createStringArrayList();
        this.needIndependentProcess = parcel.readByte() != 0;
        convertEnqueueType(parcel.readInt());
        this.headConnectionAvailable = parcel.readByte() != 0;
        this.httpStatusCode = parcel.readInt();
        this.httpStatusMessage = parcel.readString();
        this.isSaveTempFile = parcel.readByte() != 0;
        this.isForbiddenRetryed = parcel.readByte() != 0;
        this.addListenerToSameTask = parcel.readByte() != 0;
        this.needChunkDowngradeRetry = parcel.readByte() != 0;
        this.chunkDowngradeRetryUsed = parcel.readByte() != 0;
        this.failedException = (BaseException) parcel.readParcelable(BaseException.class.getClassLoader());
        this.retryScheduleMinutes = parcel.readInt();
        this.dbJsonDataString = parcel.readString();
        this.supportPartial = parcel.readByte() != 0;
        this.iconUrl = parcel.readString();
        this.appVersionCode = parcel.readInt();
        this.taskId = parcel.readString();
        this.expiredRedownload = parcel.readByte() != 0;
        this.deleteCacheIfCheckFailed = parcel.readByte() != 0;
        this.successByCache = parcel.readByte() != 0;
        parseMonitorSetting();
    }

    public synchronized void registerTempFileSaveCallback(r rVar) {
        if (rVar == null) {
            return;
        }
        try {
            com.byazt.nu.hp.l(TAG, "registerTempFileSaveCallback");
            if (this.tempFileSaveCompleteCallbacks == null) {
                this.tempFileSaveCompleteCallbacks = new ArrayList();
            }
            if (!this.tempFileSaveCompleteCallbacks.contains(rVar)) {
                this.tempFileSaveCompleteCallbacks.add(rVar);
            }
        } catch (Throwable th) {
            rVar.hp(new BaseException(1038, a.l(th, "registerTempFileSaveCallback")));
        }
    }

    public void reset() {
        setCurBytes(0L, true);
        this.totalBytes = 0L;
        this.chunkCount = 1;
        this.downloadTime = 0L;
        this.realStartDownloadTime = 0L;
        this.realDownloadTime = 0L;
    }

    public void resetDataForEtagEndure(String str) {
        setCurBytes(0L, true);
        setTotalBytes(0L);
        seteTag(str);
        setChunkCount(1);
        this.downloadTime = 0L;
        this.realStartDownloadTime = 0L;
        this.realDownloadTime = 0L;
    }

    public void resetRealStartDownloadTime() {
        this.realStartDownloadTime = 0L;
    }

    public void safePutToDBJsonData(String str, Object obj) {
        ensureDBJsonData();
        synchronized (this.dbJsonData) {
            try {
                this.dbJsonData.put(str, obj);
            } catch (Exception unused) {
            }
            this.dbJsonDataString = null;
        }
    }

    public void setAddListenerToSameTask(boolean z2) {
        this.addListenerToSameTask = z2;
    }

    public void setAntiHijackErrorCode(int i2) {
        safePutToDBJsonData("anti_hijack_error_code", Integer.valueOf(i2));
    }

    public void setAppVersionCode(int i2) {
        this.appVersionCode = i2;
    }

    public void setAsyncHandleStatus(com.byazt.oy.hp hpVar) {
        this.asyncHandleStatus = hpVar;
    }

    public void setAutoResumed(boolean z2) {
        this.autoResumed = z2;
    }

    public void setByteInvalidRetryStatus(com.byazt.oy.l lVar) {
        this.byteInvalidRetryStatus = lVar;
    }

    public void setCacheControl(String str) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("cache-control", str);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public void setCacheExpiredTime(long j2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("cache-control/expired_time", j2);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public void setChunkCount(int i2) {
        this.chunkCount = i2;
    }

    public void setChunkDowngradeRetryUsed(boolean z2) {
        this.chunkDowngradeRetryUsed = z2;
    }

    public void setCurBytes(long j2) {
        AtomicLong atomicLong = this.curBytes;
        if (atomicLong != null) {
            atomicLong.set(j2);
        } else {
            this.curBytes = new AtomicLong(j2);
        }
    }

    public void setDeleteCacheIfCheckFailed() {
        this.deleteCacheIfCheckFailed = true;
    }

    public void setDownloadFromReserveWifi(boolean z2) {
        this.mDownloadFromReserveWifi = z2;
    }

    public void setDownloadTime(long j2) {
        if (j2 >= 0) {
            this.downloadTime = j2;
        }
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public void setFailedException(BaseException baseException) {
        this.failedException = baseException;
    }

    public void setFailedResumeCount(int i2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("failed_resume_count", i2);
        } catch (Exception unused) {
        }
    }

    public void setFilePackageName(String str) {
        this.filePackageName = str;
    }

    public void setFirstDownload(boolean z2) {
        this.isFirstDownload = z2;
    }

    public void setFirstSpeedTime(long j2) {
        safePutToDBJsonData("dbjson_key_first_speed_time", Long.valueOf(j2));
    }

    public void setFirstSuccess(boolean z2) {
        this.isFirstSuccess = z2;
    }

    public void setForbiddenBackupUrls(List<String> list, boolean z2) {
        this.forbiddenBackupUrls = list;
        refreshBackupUrls(z2);
    }

    public void setForbiddenRetryed() {
        this.isForbiddenRetryed = true;
    }

    public void setForceIgnoreRecommendSize(boolean z2) {
        this.forceIgnoreRecommendSize = z2;
    }

    public void setHeadConnectionException(String str) {
        this.headConnectionException = str;
    }

    public void setHttpStatusCode(int i2) {
        this.httpStatusCode = i2;
    }

    public void setHttpStatusMessage(String str) {
        this.httpStatusMessage = str;
    }

    public void setHttpsToHttpRetryUsed(boolean z2) {
        this.httpsToHttpRetryUsed = z2;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIsRwConcurrent(boolean z2) {
        safePutToDBJsonData("rw_concurrent", Integer.valueOf(z2 ? 1 : 0));
    }

    public synchronized void setIsSaveTempFile(boolean z2) {
        this.isSaveTempFile = z2;
    }

    public void setLastFailedResumeTime(long j2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("last_failed_resume_time", j2);
        } catch (Exception unused) {
        }
    }

    public void setLastModified(String str) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("last-modified", str);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public void setLastNotifyProgressTime() {
        this.lastNotifyProgressTime.set(SystemClock.uptimeMillis());
    }

    public void setLastUninstallResumeTime(long j2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("last_unins_resume_time", j2);
        } catch (Exception unused) {
        }
    }

    public void setLinkMode(int i2) {
        safePutToDBJsonData("link_mode", Integer.valueOf(i2));
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNetworkQuality(String str) {
        this.networkQuality = str;
    }

    public void setNotificationVisibility(int i2) {
        this.notificationVisibility = i2;
    }

    public void setOnlyWifi(boolean z2) {
        this.onlyWifi = z2;
    }

    public void setOpenLimitSpeed(boolean z2) {
        this.openLimitSpeed = z2;
    }

    public void setPackageInfo(PackageInfo packageInfo) {
        this.packageInfoRef = new SoftReference<>(packageInfo);
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPausedResumeCount(int i2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("paused_resume_count", i2);
        } catch (Exception unused) {
        }
    }

    public void setPreconnectLevel(int i2) {
        ensureDBJsonData();
        safePutToDBJsonData("dbjson_key_preconnect_level", Integer.valueOf(i2));
    }

    public void setRetryDelayStatus(eb ebVar) {
        this.retryDelayStatus = ebVar;
    }

    public void setRetryScheduleCount(int i2) {
        safePutToDBJsonData("retry_schedule_count", Integer.valueOf(i2));
    }

    public void setSavePath(String str) {
        this.savePath = str;
    }

    public void setSavePathRedirected(boolean z2) {
        safePutToDBJsonData("is_save_path_redirected", Boolean.valueOf(z2));
    }

    public void setShowNotification(boolean z2) {
        this.showNotification = z2;
    }

    public void setShowNotificationForAutoResumed(boolean z2) {
        this.showNotificationForAutoResumed = z2;
    }

    public void setShowNotificationForNetworkResumed(boolean z2) {
        this.showNotificationForNetworkResumed = z2;
    }

    public void setSpValue(String str, String str2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put(str, str2);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public void setStatus(int i2) {
        AtomicInteger atomicInteger = this.status;
        if (atomicInteger != null) {
            atomicInteger.set(i2);
        } else {
            this.status = new AtomicInteger(i2);
        }
    }

    public void setStatusAtDbInit(int i2) {
        this.statusAtDbInit = i2;
    }

    public void setSuccessByCache(boolean z2) {
        this.successByCache = z2;
    }

    public void setSupportPartial(boolean z2) {
        this.supportPartial = z2;
    }

    public void setTTMd5CheckStatus(int i2) {
        safePutToDBJsonData("ttmd5_check_status", Integer.valueOf(i2));
    }

    public void setThrottleNetSpeed(long j2) {
        this.throttleNetSpeed = j2;
    }

    public void setTotalBytes(long j2) {
        this.totalBytes = j2;
    }

    public void setUninstallResumeCount(int i2) throws JSONException {
        ensureSpData();
        try {
            this.spData.put("unins_resume_count", i2);
        } catch (Exception unused) {
        }
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void seteTag(String str) {
        this.eTag = str;
    }

    public void startPauseReserveOnWifi() throws JSONException {
        ensureSpData();
        try {
            this.spData.put("pause_reserve_on_wifi", 3);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public boolean statusInPause() {
        return getRealStatus() == -2 || getRealStatus() == -5;
    }

    public void stopPauseReserveOnWifi() throws JSONException {
        ensureSpData();
        try {
            this.spData.put("pause_reserve_on_wifi", 1);
            updateSpData();
        } catch (Exception unused) {
        }
    }

    public ContentValues toContentValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(bz.f48985d, Integer.valueOf(this.id));
        contentValues.put("url", this.url);
        contentValues.put("savePath", this.savePath);
        contentValues.put("tempPath", this.tempPath);
        contentValues.put("name", this.name);
        contentValues.put("chunkCount", Integer.valueOf(this.chunkCount));
        contentValues.put("status", Integer.valueOf(getStatus()));
        contentValues.put("curBytes", Long.valueOf(getCurBytes()));
        contentValues.put("totalBytes", Long.valueOf(this.totalBytes));
        contentValues.put("eTag", this.eTag);
        contentValues.put("onlyWifi", Integer.valueOf(this.onlyWifi ? 1 : 0));
        contentValues.put("force", Integer.valueOf(this.force ? 1 : 0));
        contentValues.put("retryCount", Integer.valueOf(this.retryCount));
        contentValues.put("extra", this.extra);
        contentValues.put("mimeType", this.mimeType);
        contentValues.put(g.a.f3271h, this.title);
        contentValues.put("notificationEnable", Integer.valueOf(this.showNotification ? 1 : 0));
        contentValues.put("notificationVisibility", Integer.valueOf(this.notificationVisibility));
        contentValues.put("isFirstDownload", Integer.valueOf(this.isFirstDownload ? 1 : 0));
        contentValues.put("isFirstSuccess", Integer.valueOf(this.isFirstSuccess ? 1 : 0));
        contentValues.put("needHttpsToHttpRetry", Integer.valueOf(this.needHttpsToHttpRetry ? 1 : 0));
        contentValues.put("downloadTime", Long.valueOf(this.downloadTime));
        contentValues.put("packageName", this.packageName);
        contentValues.put(TKDownloadReason.KSAD_TK_MD5, this.md5);
        contentValues.put("retryDelay", Integer.valueOf(this.needRetryDelay ? 1 : 0));
        contentValues.put("curRetryTime", Integer.valueOf(this.curRetryTime));
        contentValues.put("retryDelayStatus", Integer.valueOf(this.retryDelayStatus.ordinal()));
        contentValues.put("defaultHttpServiceBackUp", Integer.valueOf(this.needDefaultHttpServiceBackUp ? 1 : 0));
        contentValues.put("chunkRunnableReuse", Integer.valueOf(this.needReuseChunkRunnable ? 1 : 0));
        contentValues.put("retryDelayTimeArray", this.retryDelayTimeArray);
        contentValues.put("chunkDowngradeRetry", Integer.valueOf(this.needChunkDowngradeRetry ? 1 : 0));
        contentValues.put("backUpUrlsStr", getBackUpUrlsStr());
        contentValues.put("backUpUrlRetryCount", Integer.valueOf(this.backUpUrlRetryCount));
        contentValues.put("realDownloadTime", Long.valueOf(this.realDownloadTime));
        contentValues.put("retryScheduleMinutes", Integer.valueOf(this.retryScheduleMinutes));
        contentValues.put("independentProcess", Integer.valueOf(this.needIndependentProcess ? 1 : 0));
        contentValues.put("auxiliaryJsonobjectString", getDBJsonDataString());
        contentValues.put("iconUrl", this.iconUrl);
        contentValues.put("appVersionCode", Integer.valueOf(this.appVersionCode));
        contentValues.put("taskId", this.taskId);
        return contentValues;
    }

    public String toString() {
        return "DownloadInfo{id=" + this.id + ", name='" + this.name + "', title='" + this.title + "', url='" + this.url + "', savePath='" + this.savePath + "'}";
    }

    public boolean trySwitchToNextBackupUrl() {
        if (this.backUpUrlUsed) {
            this.curBackUpUrlIndex++;
        }
        List<String> list = this.backUpUrls;
        if (list != null && list.size() != 0 && this.curBackUpUrlIndex >= 0) {
            while (this.curBackUpUrlIndex < this.backUpUrls.size()) {
                if (!TextUtils.isEmpty(this.backUpUrls.get(this.curBackUpUrlIndex))) {
                    this.backUpUrlUsed = true;
                    return true;
                }
                this.curBackUpUrlIndex++;
            }
        }
        return false;
    }

    public void updateCurRetryTime(int i2) {
        int i3 = (this.backUpUrlUsed ? this.backUpUrlRetryCount : this.retryCount) - i2;
        this.curRetryTime = i3;
        if (i3 < 0) {
            this.curRetryTime = 0;
        }
    }

    public void updateDownloadTime() {
        if (this.startDownloadTime == 0) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.startDownloadTime;
        if (this.downloadTime < 0) {
            this.downloadTime = 0L;
        }
        if (jUptimeMillis > 0) {
            this.downloadTime = jUptimeMillis;
        }
    }

    public void updateRealDownloadTime(boolean z2) {
        long jNanoTime = System.nanoTime();
        long j2 = this.realStartDownloadTime;
        if (j2 <= 0) {
            if (z2) {
                this.realStartDownloadTime = jNanoTime;
                return;
            }
            return;
        }
        long j3 = jNanoTime - j2;
        if (z2) {
            this.realStartDownloadTime = jNanoTime;
        } else {
            this.realStartDownloadTime = 0L;
        }
        if (j3 > 0) {
            this.realDownloadTime += j3;
        }
    }

    public void updateRealStartDownloadTime() {
        if (this.realStartDownloadTime == 0) {
            this.realStartDownloadTime = System.nanoTime();
        }
    }

    public void updateSpData() {
        Context contextMp;
        if (this.spData == null || (contextMp = com.byazt.yk.jx.mp()) == null) {
            return;
        }
        com.byazt.rz.l.l(contextMp, "sp_download_info", 0).edit().putString(Integer.toString(getId()), this.spData.toString()).apply();
    }

    public void updateStartDownloadTime() {
        this.startDownloadTime = SystemClock.uptimeMillis();
        safePutToDBJsonData("dbjson_last_start_download_time", Long.valueOf(System.currentTimeMillis()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.title);
        parcel.writeString(this.url);
        parcel.writeString(this.savePath);
        parcel.writeString(this.tempPath);
        parcel.writeByte(this.onlyWifi ? (byte) 1 : (byte) 0);
        parcel.writeString(this.extra);
        parcel.writeTypedList(this.extraHeaders);
        parcel.writeInt(this.maxBytes);
        parcel.writeStringArray(this.outIp);
        parcel.writeIntArray(this.outSize);
        parcel.writeInt(this.retryCount);
        parcel.writeInt(this.backUpUrlRetryCount);
        parcel.writeByte(this.force ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.needPostProgress ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.maxProgressCount);
        parcel.writeInt(this.minProgressTimeMsInterval);
        parcel.writeStringList(this.backUpUrls);
        parcel.writeByte(this.showNotification ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mimeType);
        parcel.writeByte(this.needHttpsToHttpRetry ? (byte) 1 : (byte) 0);
        parcel.writeString(this.packageName);
        parcel.writeString(this.md5);
        parcel.writeByte(this.needRetryDelay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.needDefaultHttpServiceBackUp ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.needReuseChunkRunnable ? (byte) 1 : (byte) 0);
        parcel.writeString(this.retryDelayTimeArray);
        parcel.writeString(this.eTag);
        parcel.writeInt(this.curRetryTime);
        parcel.writeInt(this.retryDelayStatus.ordinal());
        parcel.writeByte(this.needReuseFirstConnection ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.forceIgnoreRecommendSize ? (byte) 1 : (byte) 0);
        parcel.writeString(this.networkQuality);
        parcel.writeInt(this.curBackUpUrlIndex);
        parcel.writeInt(this.notificationVisibility);
        parcel.writeInt(this.chunkCount);
        parcel.writeLong(getCurBytes());
        parcel.writeLong(this.totalBytes);
        parcel.writeInt(getRealStatus());
        parcel.writeLong(this.downloadTime);
        parcel.writeLong(this.realDownloadTime);
        parcel.writeByte(this.backUpUrlUsed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.httpsToHttpRetryUsed ? (byte) 1 : (byte) 0);
        StringBuffer stringBuffer = this.errorBytesLog;
        parcel.writeString(stringBuffer != null ? stringBuffer.toString() : "");
        parcel.writeByte(this.autoResumed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showNotificationForAutoResumed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showNotificationForNetworkResumed ? (byte) 1 : (byte) 0);
        parcel.writeStringList(this.forbiddenBackupUrls);
        parcel.writeByte(this.needIndependentProcess ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.enqueueType.ordinal());
        parcel.writeByte(this.headConnectionAvailable ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.httpStatusCode);
        parcel.writeString(this.httpStatusMessage);
        parcel.writeByte(this.isSaveTempFile ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isForbiddenRetryed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.addListenerToSameTask ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.needChunkDowngradeRetry ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.chunkDowngradeRetryUsed ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.failedException, i2);
        parcel.writeInt(this.retryScheduleMinutes);
        parcel.writeString(getDBJsonDataString());
        parcel.writeByte(this.supportPartial ? (byte) 1 : (byte) 0);
        parcel.writeString(this.iconUrl);
        parcel.writeInt(this.appVersionCode);
        parcel.writeString(this.taskId);
        parcel.writeByte(this.expiredRedownload ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.deleteCacheIfCheckFailed ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.successByCache ? (byte) 1 : (byte) 0);
    }

    public DownloadInfo() {
        this.needDefaultHttpServiceBackUp = true;
        this.retryDelayStatus = eb.DELAY_RETRY_NONE;
        this.needReuseFirstConnection = false;
        this.asyncHandleStatus = com.byazt.oy.hp.ASYNC_HANDLE_NONE;
        this.supportPartial = true;
        this.needSDKMonitor = true;
        this.expiredRedownload = false;
        this.deleteCacheIfCheckFailed = false;
        this.successByCache = false;
        this.chunkCount = 1;
        this.isFirstDownload = true;
        this.isFirstSuccess = true;
        this.byteInvalidRetryStatus = com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_NONE;
        this.enqueueType = EnqueueType.ENQUEUE_NONE;
        this.lastNotifyProgressTime = new AtomicLong(0L);
        this.isAutoInstallWithoutNotification = null;
    }

    public void setCurBytes(long j2, boolean z2) {
        if (z2) {
            setCurBytes(j2);
        } else if (j2 > getCurBytes()) {
            setCurBytes(j2);
        }
    }

    private DownloadInfo(hp hpVar) {
        this.needDefaultHttpServiceBackUp = true;
        this.retryDelayStatus = eb.DELAY_RETRY_NONE;
        this.needReuseFirstConnection = false;
        this.asyncHandleStatus = com.byazt.oy.hp.ASYNC_HANDLE_NONE;
        this.supportPartial = true;
        this.needSDKMonitor = true;
        this.expiredRedownload = false;
        this.deleteCacheIfCheckFailed = false;
        this.successByCache = false;
        this.chunkCount = 1;
        this.isFirstDownload = true;
        this.isFirstSuccess = true;
        this.byteInvalidRetryStatus = com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_NONE;
        this.enqueueType = EnqueueType.ENQUEUE_NONE;
        this.lastNotifyProgressTime = new AtomicLong(0L);
        this.isAutoInstallWithoutNotification = null;
        if (hpVar == null) {
            return;
        }
        this.name = hpVar.hp;
        this.title = hpVar.f20105l;
        this.url = hpVar.jx;
        String strW = hpVar.f20103j;
        if (TextUtils.isEmpty(strW)) {
            try {
                strW = a.w();
            } catch (Throwable unused) {
            }
        }
        this.savePath = strW;
        String str = hpVar.f20115w;
        this.tempPath = str;
        if (TextUtils.isEmpty(str) && !a.s(strW)) {
            this.tempPath = a.a();
        }
        safePutToDBJsonData("task_key", hpVar.ea);
        if (hpVar.vq) {
            if (com.byazt.yk.jx.di().l(getId()) == null) {
                this.savePath = a.w(this.savePath, this.url);
                this.tempPath = a.w(this.tempPath, this.url);
            }
        } else {
            com.byazt.nu.hp.w(TAG, "The distinct directory option is not set, which may cause 1005 problems and file downloads being covered");
        }
        this.status = new AtomicInteger(0);
        this.curBytes = new AtomicLong(0L);
        this.extra = hpVar.eb;
        this.onlyWifi = hpVar.f20098a;
        this.extraHeaders = hpVar.f20112s;
        this.maxBytes = hpVar.f20110q;
        this.retryCount = hpVar.jl;
        this.backUpUrlRetryCount = hpVar.zy;
        this.force = hpVar.f20104k;
        this.outIp = hpVar.f20101e;
        this.outSize = hpVar.gu;
        this.needPostProgress = hpVar.f20114v;
        this.maxProgressCount = hpVar.f20113u;
        this.minProgressTimeMsInterval = hpVar.xs;
        this.backUpUrls = hpVar.vv;
        this.showNotification = hpVar.ec;
        this.mimeType = hpVar.f20108n;
        this.needHttpsToHttpRetry = hpVar.ns;
        this.needRetryDelay = hpVar.ud;
        this.retryDelayTimeArray = hpVar.nu;
        this.autoResumed = hpVar.cx;
        this.showNotificationForAutoResumed = hpVar.f20099b;
        this.needDefaultHttpServiceBackUp = hpVar.di;
        this.needReuseChunkRunnable = hpVar.f20109o;
        this.packageName = hpVar.f20100d;
        this.md5 = hpVar.wv;
        this.needReuseFirstConnection = hpVar.dy;
        this.needIndependentProcess = hpVar.lv;
        this.enqueueType = hpVar.f20111r;
        this.headConnectionAvailable = hpVar.pu;
        this.ignoreDataVerify = hpVar.ky;
        this.addListenerToSameTask = hpVar.mp;
        this.needChunkDowngradeRetry = hpVar.xh;
        this.iconUrl = hpVar.f20107ms;
        this.throttleNetSpeed = hpVar.as;
        this.openLimitSpeed = hpVar.kg;
        JSONObject jSONObject = hpVar.f20106m;
        if (jSONObject != null) {
            safePutToDBJsonData("download_setting", jSONObject.toString());
        }
        safePutToDBJsonData("dbjson_key_expect_file_length", Long.valueOf(hpVar.hq));
        safePutToDBJsonData("executor_group", Integer.valueOf(hpVar.nd));
        safePutToDBJsonData("auto_install", Integer.valueOf(hpVar.sz ? 1 : 0));
        this.needSDKMonitor = hpVar.f20102f;
        this.monitorScene = hpVar.yr;
        this.extraMonitorStatus = hpVar.rz;
        this.expiredRedownload = hpVar.hd;
        this.deleteCacheIfCheckFailed = hpVar.zx;
        this.ttnetProtectTimeout = hpVar.f20116y;
        this.distinctDirectory = hpVar.vq;
        if (this.expiredRedownload && this.retryCount <= 0) {
            this.retryCount = 1;
        }
        putMonitorSetting();
    }

    public DownloadInfo(Parcel parcel) {
        this.needDefaultHttpServiceBackUp = true;
        this.retryDelayStatus = eb.DELAY_RETRY_NONE;
        this.needReuseFirstConnection = false;
        this.asyncHandleStatus = com.byazt.oy.hp.ASYNC_HANDLE_NONE;
        this.supportPartial = true;
        this.needSDKMonitor = true;
        this.expiredRedownload = false;
        this.deleteCacheIfCheckFailed = false;
        this.successByCache = false;
        this.chunkCount = 1;
        this.isFirstDownload = true;
        this.isFirstSuccess = true;
        this.byteInvalidRetryStatus = com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_NONE;
        this.enqueueType = EnqueueType.ENQUEUE_NONE;
        this.lastNotifyProgressTime = new AtomicLong(0L);
        this.isAutoInstallWithoutNotification = null;
        readFromParcel(parcel);
    }

    public DownloadInfo(Cursor cursor) {
        boolean z2 = true;
        this.needDefaultHttpServiceBackUp = true;
        eb ebVar = eb.DELAY_RETRY_NONE;
        this.retryDelayStatus = ebVar;
        this.needReuseFirstConnection = false;
        this.asyncHandleStatus = com.byazt.oy.hp.ASYNC_HANDLE_NONE;
        this.supportPartial = true;
        this.needSDKMonitor = true;
        this.expiredRedownload = false;
        this.deleteCacheIfCheckFailed = false;
        this.successByCache = false;
        this.chunkCount = 1;
        this.isFirstDownload = true;
        this.isFirstSuccess = true;
        this.byteInvalidRetryStatus = com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_NONE;
        this.enqueueType = EnqueueType.ENQUEUE_NONE;
        this.lastNotifyProgressTime = new AtomicLong(0L);
        this.isAutoInstallWithoutNotification = null;
        if (cursor == null) {
            return;
        }
        try {
            int columnIndex = cursor.getColumnIndex(bz.f48985d);
            if (columnIndex != -1) {
                this.id = cursor.getInt(columnIndex);
            }
            int columnIndex2 = cursor.getColumnIndex("name");
            if (columnIndex2 != -1) {
                this.name = cursor.getString(columnIndex2);
            }
            int columnIndex3 = cursor.getColumnIndex(g.a.f3271h);
            if (columnIndex3 != -1) {
                this.title = cursor.getString(columnIndex3);
            }
            int columnIndex4 = cursor.getColumnIndex("url");
            if (columnIndex4 != -1) {
                this.url = cursor.getString(columnIndex4);
            }
            int columnIndex5 = cursor.getColumnIndex("savePath");
            if (columnIndex5 != -1) {
                this.savePath = cursor.getString(columnIndex5);
            }
            int columnIndex6 = cursor.getColumnIndex("tempPath");
            if (columnIndex6 != -1) {
                this.tempPath = cursor.getString(columnIndex6);
            }
            int columnIndex7 = cursor.getColumnIndex("chunkCount");
            if (columnIndex7 != -1) {
                this.chunkCount = cursor.getInt(columnIndex7);
            }
            int columnIndex8 = cursor.getColumnIndex("status");
            if (columnIndex8 != -1) {
                this.status = new AtomicInteger(cursor.getInt(columnIndex8));
            } else {
                this.status = new AtomicInteger(0);
            }
            int columnIndex9 = cursor.getColumnIndex("curBytes");
            if (columnIndex9 != -1) {
                this.curBytes = new AtomicLong(cursor.getLong(columnIndex9));
            } else {
                this.curBytes = new AtomicLong(0L);
            }
            int columnIndex10 = cursor.getColumnIndex("totalBytes");
            if (columnIndex10 != -1) {
                this.totalBytes = cursor.getLong(columnIndex10);
            }
            int columnIndex11 = cursor.getColumnIndex("eTag");
            if (columnIndex11 != -1) {
                this.eTag = cursor.getString(columnIndex11);
            }
            int columnIndex12 = cursor.getColumnIndex("onlyWifi");
            if (columnIndex12 != -1) {
                this.onlyWifi = cursor.getInt(columnIndex12) != 0;
            }
            int columnIndex13 = cursor.getColumnIndex("force");
            if (columnIndex13 != -1) {
                this.force = cursor.getInt(columnIndex13) != 0;
            }
            int columnIndex14 = cursor.getColumnIndex("retryCount");
            if (columnIndex14 != -1) {
                this.retryCount = cursor.getInt(columnIndex14);
            }
            int columnIndex15 = cursor.getColumnIndex("extra");
            if (columnIndex15 != -1) {
                this.extra = cursor.getString(columnIndex15);
            }
            int columnIndex16 = cursor.getColumnIndex("mimeType");
            if (columnIndex16 != -1) {
                this.mimeType = cursor.getString(columnIndex16);
            }
            int columnIndex17 = cursor.getColumnIndex("notificationEnable");
            if (columnIndex17 != -1) {
                this.showNotification = cursor.getInt(columnIndex17) != 0;
            }
            int columnIndex18 = cursor.getColumnIndex("notificationVisibility");
            if (columnIndex18 != -1) {
                this.notificationVisibility = cursor.getInt(columnIndex18);
            }
            int columnIndex19 = cursor.getColumnIndex("isFirstDownload");
            if (columnIndex19 != -1) {
                this.isFirstDownload = cursor.getInt(columnIndex19) == 1;
            }
            int columnIndex20 = cursor.getColumnIndex("isFirstSuccess");
            if (columnIndex20 != -1) {
                this.isFirstSuccess = cursor.getInt(columnIndex20) == 1;
            }
            int columnIndex21 = cursor.getColumnIndex("needHttpsToHttpRetry");
            if (columnIndex21 != -1) {
                this.needHttpsToHttpRetry = cursor.getInt(columnIndex21) == 1;
            }
            int columnIndex22 = cursor.getColumnIndex("downloadTime");
            if (columnIndex22 != -1) {
                this.downloadTime = cursor.getLong(columnIndex22);
            }
            int columnIndex23 = cursor.getColumnIndex("packageName");
            if (columnIndex23 != -1) {
                this.packageName = cursor.getString(columnIndex23);
            }
            int columnIndex24 = cursor.getColumnIndex(TKDownloadReason.KSAD_TK_MD5);
            if (columnIndex24 != -1) {
                this.md5 = cursor.getString(columnIndex24);
            }
            int columnIndex25 = cursor.getColumnIndex("retryDelay");
            if (columnIndex25 != -1) {
                this.needRetryDelay = cursor.getInt(columnIndex25) == 1;
            }
            int columnIndex26 = cursor.getColumnIndex("curRetryTime");
            if (columnIndex26 != -1) {
                this.curRetryTime = cursor.getInt(columnIndex26);
            }
            int columnIndex27 = cursor.getColumnIndex("retryDelayStatus");
            if (columnIndex27 != -1) {
                int i2 = cursor.getInt(columnIndex27);
                eb ebVar2 = eb.DELAY_RETRY_WAITING;
                if (i2 == ebVar2.ordinal()) {
                    this.retryDelayStatus = ebVar2;
                } else {
                    eb ebVar3 = eb.DELAY_RETRY_DOWNLOADING;
                    if (i2 == ebVar3.ordinal()) {
                        this.retryDelayStatus = ebVar3;
                    } else {
                        eb ebVar4 = eb.DELAY_RETRY_DOWNLOADED;
                        if (i2 == ebVar4.ordinal()) {
                            this.retryDelayStatus = ebVar4;
                        } else {
                            this.retryDelayStatus = ebVar;
                        }
                    }
                }
            }
            int columnIndex28 = cursor.getColumnIndex("defaultHttpServiceBackUp");
            if (columnIndex28 != -1) {
                this.needDefaultHttpServiceBackUp = cursor.getInt(columnIndex28) == 1;
            }
            int columnIndex29 = cursor.getColumnIndex("chunkRunnableReuse");
            if (columnIndex29 != -1) {
                this.needReuseChunkRunnable = cursor.getInt(columnIndex29) == 1;
            }
            int columnIndex30 = cursor.getColumnIndex("retryDelayTimeArray");
            if (columnIndex30 != -1) {
                this.retryDelayTimeArray = cursor.getString(columnIndex30);
            }
            int columnIndex31 = cursor.getColumnIndex("chunkDowngradeRetry");
            if (columnIndex31 != -1) {
                this.needChunkDowngradeRetry = cursor.getInt(columnIndex31) == 1;
            }
            int columnIndex32 = cursor.getColumnIndex("backUpUrlsStr");
            if (columnIndex32 != -1) {
                setBackUpUrlsStr(cursor.getString(columnIndex32));
            }
            int columnIndex33 = cursor.getColumnIndex("backUpUrlRetryCount");
            if (columnIndex33 != -1) {
                this.backUpUrlRetryCount = cursor.getInt(columnIndex33);
            }
            int columnIndex34 = cursor.getColumnIndex("realDownloadTime");
            if (columnIndex34 != -1) {
                this.realDownloadTime = cursor.getLong(columnIndex34);
            }
            int columnIndex35 = cursor.getColumnIndex("retryScheduleMinutes");
            if (columnIndex35 != -1) {
                this.retryScheduleMinutes = cursor.getInt(columnIndex35);
            }
            int columnIndex36 = cursor.getColumnIndex("independentProcess");
            if (columnIndex36 != -1) {
                if (cursor.getInt(columnIndex36) != 1) {
                    z2 = false;
                }
                this.needIndependentProcess = z2;
            }
            int columnIndex37 = cursor.getColumnIndex("auxiliaryJsonobjectString");
            if (columnIndex37 != -1) {
                this.dbJsonDataString = cursor.getString(columnIndex37);
            }
            int columnIndex38 = cursor.getColumnIndex("iconUrl");
            if (columnIndex38 != -1) {
                this.iconUrl = cursor.getString(columnIndex38);
            }
            int columnIndex39 = cursor.getColumnIndex("appVersionCode");
            if (columnIndex39 != -1) {
                this.appVersionCode = cursor.getInt(columnIndex39);
            }
            int columnIndex40 = cursor.getColumnIndex("taskId");
            if (columnIndex40 != -1) {
                this.taskId = cursor.getString(columnIndex40);
            }
            parseMonitorSetting();
        } catch (Exception unused) {
        }
    }
}
