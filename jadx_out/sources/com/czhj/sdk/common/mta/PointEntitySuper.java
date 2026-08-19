package com.czhj.sdk.common.mta;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.seamless.xhtml.XHTML;

/* loaded from: classes3.dex */
public abstract class PointEntitySuper {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29349a = UUID.randomUUID().toString();

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicLong f29350b = new AtomicLong(1);

    /* renamed from: c, reason: collision with root package name */
    private String f29351c;

    /* renamed from: d, reason: collision with root package name */
    private String f29352d;

    /* renamed from: e, reason: collision with root package name */
    private String f29353e;

    /* renamed from: f, reason: collision with root package name */
    private String f29354f;

    /* renamed from: g, reason: collision with root package name */
    private String f29355g;

    /* renamed from: h, reason: collision with root package name */
    private String f29356h;

    /* renamed from: i, reason: collision with root package name */
    private String f29357i;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, String> f29358j;

    /* renamed from: k, reason: collision with root package name */
    private String f29359k;

    /* renamed from: l, reason: collision with root package name */
    private String f29360l;

    /* renamed from: m, reason: collision with root package name */
    private String f29361m;
    protected Object mPointEntityClass;

    /* renamed from: n, reason: collision with root package name */
    private int f29362n;

    /* renamed from: o, reason: collision with root package name */
    private String f29363o;

    /* renamed from: p, reason: collision with root package name */
    private int f29364p;

    /* renamed from: q, reason: collision with root package name */
    private final long f29365q = f29350b.getAndIncrement();

    /* renamed from: r, reason: collision with root package name */
    private final long f29366r = System.currentTimeMillis();

    private boolean a(String str) {
        return Arrays.asList("motion_before", "motion_after", PointParamKey.FREQUENCY_CONTROL_LIST).contains(str);
    }

    public static String captureName(String str) {
        char[] charArray = str.toCharArray();
        char c2 = charArray[0];
        if (c2 <= '`' || c2 >= '{') {
            return str;
        }
        charArray[0] = (char) (c2 - ' ');
        return String.valueOf(charArray);
    }

    public static String getSessionId() {
        return f29349a;
    }

    public static String lowFirstChar(String str) {
        char[] charArray = str.toCharArray();
        char c2 = charArray[0];
        if (c2 <= '@' || c2 >= '[') {
            return str;
        }
        charArray[0] = (char) (c2 + ' ');
        return String.valueOf(charArray);
    }

    public static String toURLEncoded(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(new String(str.getBytes(), "UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            SigmobLog.e(e2.getMessage());
            return "";
        }
    }

    public abstract String appId();

    public void commit() {
        this.mPointEntityClass = this;
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.mta.PointEntitySuper.1
            @Override // java.lang.Runnable
            public void run() {
                PointEntitySuper.this.insertToDB(null);
            }
        });
    }

    public String getAc_type() {
        return this.f29351c;
    }

    public String getAndroid_id() {
        return getDeviceContext() != null ? getDeviceContext().getAndroidId() : ClientMetadata.getInstance().getAndroidId();
    }

    public String getAppinfo_switch() {
        return this.f29353e;
    }

    public String getCarrier() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getNetworkOperatorForUrl() : deviceContext.getCarrier();
    }

    public String getCategory() {
        return this.f29355g;
    }

    public String getClientversion() {
        return ClientMetadata.getDeviceOsVersion();
    }

    public int getCompatible() {
        return this.f29364p;
    }

    public abstract DeviceContext getDeviceContext();

    public String getExt() {
        return this.f29357i;
    }

    public String getGameversion() {
        return ClientMetadata.getInstance().getAppVersion();
    }

    public String getGoogle_aid() {
        return ClientMetadata.getInstance().getAdvertisingId();
    }

    public String getImei() {
        return getDeviceContext() != null ? getDeviceContext().getImei() : ClientMetadata.getInstance().getDeviceId();
    }

    public String getImei1() {
        return getDeviceContext() != null ? getDeviceContext().getImei1() : ClientMetadata.getInstance().getDeviceId(0);
    }

    public String getImei2() {
        return getDeviceContext() != null ? getDeviceContext().getImei2() : ClientMetadata.getInstance().getDeviceId(1);
    }

    public int getIntegration() {
        return this.f29362n;
    }

    public String getIs_mediation() {
        return this.f29352d;
    }

    public String getLocation_switch() {
        return this.f29354f;
    }

    public String getMd5() {
        return this.f29360l;
    }

    public String getName() {
        return this.f29361m;
    }

    public String getNetworktype() {
        return String.valueOf(ClientMetadata.getInstance().getActiveNetworkType());
    }

    public String getOaid() {
        DeviceContext deviceContext = getDeviceContext();
        return deviceContext == null ? ClientMetadata.getInstance().getOAID() : deviceContext.getOaid();
    }

    public String getOaid_api() {
        return ClientMetadata.getInstance().getOAID_API();
    }

    public Map<String, String> getOptions() {
        if (this.f29358j == null) {
            this.f29358j = new HashMap();
        }
        return this.f29358j;
    }

    public String getOs() {
        return "2";
    }

    public abstract String getSdkversion();

    public String getSeconds_from_GMT() {
        return String.valueOf(((TimeZone.getDefault().getRawOffset() / 1000) / 60) / 60);
    }

    public String getSeq_id() {
        return String.valueOf(this.f29365q);
    }

    public String getSha1() {
        return this.f29359k;
    }

    public String getSub_category() {
        return this.f29356h;
    }

    public String getTime_zone() {
        return TimeZone.getDefault().getID();
    }

    public String getTimestamp() {
        return String.valueOf(this.f29366r);
    }

    public String getUdid() {
        return ClientMetadata.getInstance().getUDID();
    }

    public String getUid() {
        return ClientMetadata.getUid();
    }

    public String getUser_id() {
        return ClientMetadata.getUserId();
    }

    public String getVersion() {
        return this.f29363o;
    }

    public String getWmsession_id() {
        return f29349a;
    }

    public void insertToDB(final SQLiteMTAHelper.ExecCallBack execCallBack) {
        try {
            if (!isAcTypeBlock() && !TextUtils.isEmpty(appId())) {
                Map<String, Object> map = toMap();
                Map<String, String> options = getOptions();
                if (options != null) {
                    map.remove("options");
                    map.putAll(options);
                }
                map.put("_uniq_key", "sigandroid_" + appId());
                String jsonString = toJsonString(map);
                if (TextUtils.isEmpty(jsonString)) {
                    return;
                }
                SigmobLog.d("dcdebug:" + jsonString);
                SQLiteMTAHelper sQLiteMTAHelper = SQLiteMTAHelper.getInstance();
                if (sQLiteMTAHelper == null) {
                    return;
                }
                SQLiteDatabase writableDatabase = sQLiteMTAHelper.getWritableDatabase();
                SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
                builder.setTableName(SQLiteMTAHelper.TABLE_POINT);
                HashMap map2 = new HashMap();
                map2.put("item", AESUtil.EncryptString(jsonString, Constants.AESKEY));
                map2.put("encryption", 1);
                builder.setColumnValues(map2);
                SQLiteMTAHelper.insert(writableDatabase, builder.build(), new SQLiteMTAHelper.ExecCallBack() { // from class: com.czhj.sdk.common.mta.PointEntitySuper.2
                    @Override // com.czhj.sdk.common.Database.SQLiteMTAHelper.ExecCallBack
                    public void onFailed(Throwable th) {
                        SQLiteMTAHelper.ExecCallBack execCallBack2 = execCallBack;
                        if (execCallBack2 != null) {
                            execCallBack2.onFailed(th);
                        }
                        SigmobLog.e(th.getMessage());
                    }

                    @Override // com.czhj.sdk.common.Database.SQLiteMTAHelper.ExecCallBack
                    public void onSuccess() {
                        SigmobLog.d("insert success!");
                        SQLiteMTAHelper.ExecCallBack execCallBack2 = execCallBack;
                        if (execCallBack2 != null) {
                            execCallBack2.onSuccess();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public abstract boolean isAcTypeBlock();

    public void sendServe() {
        sendServe(null);
    }

    public void setAc_type(String str) {
        this.f29351c = str;
    }

    public void setAppinfo_switch(String str) {
        this.f29353e = str;
    }

    public void setCategory(String str) {
        this.f29355g = str;
    }

    public void setCompatible(int i2) {
        this.f29364p = i2;
    }

    public void setExt(String str) {
        this.f29357i = str;
    }

    public void setIntegration(int i2) {
        this.f29362n = i2;
    }

    public void setIs_mediation(String str) {
        this.f29352d = str;
    }

    public void setLocation_switch(String str) {
        this.f29354f = str;
    }

    public void setMd5(String str) {
        this.f29360l = str;
    }

    public void setName(String str) {
        this.f29361m = str;
    }

    public void setOptions(Map<String, String> map) {
        Map<String, String> options = getOptions();
        this.f29358j = options;
        options.putAll(map);
    }

    public void setSha1(String str) {
        this.f29359k = str;
    }

    public void setSub_category(String str) {
        this.f29356h = str;
    }

    public void setTimestamp(String str) {
    }

    public void setVersion(String str) {
        this.f29363o = str;
    }

    public String testJsonString() {
        Map<String, Object> map = toMap();
        if (getOptions() != null) {
            map.remove("options");
            map.putAll(getOptions());
        }
        return toJsonString(map);
    }

    public String toJsonString(Map<String, Object> map) {
        String string;
        if (map.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        boolean z2 = false;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                if (z2) {
                    sb.append(",");
                }
                sb.append("\"" + key + "\":");
                if (value instanceof String) {
                    string = (String) value;
                    if (!a(key)) {
                        string = toURLEncoded(string);
                    }
                } else {
                    string = value.toString();
                }
                if (string.startsWith("{") || string.startsWith("[")) {
                    sb.append(string);
                } else {
                    sb.append("\"" + string + "\"");
                }
                z2 = true;
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public Map<String, Object> toMap() {
        List<Method> methodWithTraversal = ReflectionUtil.getMethodWithTraversal(this.mPointEntityClass.getClass());
        if (methodWithTraversal == null || methodWithTraversal.isEmpty()) {
            return new HashMap();
        }
        HashMap map = new HashMap(methodWithTraversal.size());
        for (Method method : methodWithTraversal) {
            String name = method.getName();
            if (name.startsWith("get") && !name.equals("getLogs") && !name.equals("getDeviceContext")) {
                try {
                    Object objInvoke = method.invoke(this.mPointEntityClass, null);
                    String strLowFirstChar = lowFirstChar(name.substring(3));
                    if (objInvoke != null && (!(objInvoke instanceof String) || !TextUtils.isEmpty((String) objInvoke))) {
                        if (strLowFirstChar.equalsIgnoreCase(f.f37333k)) {
                            strLowFirstChar = "content-length";
                        } else if (strLowFirstChar.equalsIgnoreCase("content_type")) {
                            strLowFirstChar = "content-type";
                        } else if (strLowFirstChar.equalsIgnoreCase("ac_type")) {
                            strLowFirstChar = PointParamKey._AC_TYPE;
                        } else if (strLowFirstChar.equalsIgnoreCase("user_id")) {
                            strLowFirstChar = "_user_id";
                        } else if (!strLowFirstChar.equalsIgnoreCase(XHTML.ATTR.CLASS)) {
                        }
                        map.put(strLowFirstChar, objInvoke);
                    }
                } catch (Throwable th) {
                    SigmobLog.e("name " + name + th.getMessage());
                }
            }
        }
        return map;
    }

    public void sendServe(BuriedPointRequest.RequestListener requestListener) {
        this.mPointEntityClass = this;
        String jsonString = toJsonString(toMap());
        if (TextUtils.isEmpty(jsonString)) {
            return;
        }
        try {
            String str = "sigandroid_" + appId();
            BuriedPointRequest.BuriedPointSend(toURLEncoded(BuriedPointManager.deflateAndBase64("_uniq_key=" + str + "&_batch_value=" + ("[" + jsonString + "]"))), requestListener);
        } catch (Exception e2) {
            SigmobLog.e(e2.getMessage());
        }
    }
}
