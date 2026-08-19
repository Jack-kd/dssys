package com.byakv.z;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.media.MediaDrm;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import androidx.work.PeriodicWorkRequest;
import com.byazt.gjx.a;
import com.byazt.gjx.q;
import com.byazt.gjx.s;
import com.byazt.rz.l;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SoftDecTool {
    public static final String SP_NAME = "softdec";

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f17940a = false;
    public static volatile double acs = -1.0d;
    public static volatile long act = 0;
    public static volatile String eb = null;

    /* renamed from: f, reason: collision with root package name */
    public static volatile boolean f17941f = false;

    /* renamed from: h, reason: collision with root package name */
    public static volatile boolean f17942h = false;
    public static SharedPreferences hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static volatile String f17943j = null;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f17944l = false;
    public static final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static volatile int f17945w = 0;
    public static long LastReportTooltypeTime = System.currentTimeMillis();
    public static Map<Integer, Integer> codeIdCountMap = new HashMap();

    /* JADX WARN: Can't wrap try/catch for region: R(6:6|(4:68|7|66|8)|(5:70|9|(1:11)|(2:62|17)|(2:58|19))|52|20|41) */
    /* JADX WARN: Multi-variable type inference failed */
    @com.bytedance.component.sdk.annotation.DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b() throws java.lang.Throwable {
        /*
            java.lang.String r0 = com.byazt.gjx.a.w()
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lc
            r0 = 1
            return r0
        Lc:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "/apk/base-1.apk"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r1 = 11
            r2 = 0
            java.util.zip.ZipFile r3 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La5
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> La5
            java.lang.String r0 = "classes.dex"
            java.util.zip.ZipEntry r0 = r3.getEntry(r0)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
            java.io.InputStream r0 = r3.getInputStream(r0)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
            java.lang.String r4 = hp(r0)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            r5.<init>()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            int r6 = r4.length()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            int r6 = r6 / 2
            java.lang.String r6 = r4.substring(r6)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            r5.append(r6)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            int r6 = r4.length()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            int r6 = r6 / 2
            r7 = 0
            java.lang.String r4 = r4.substring(r7, r6)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            r5.append(r4)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.lang.String r5 = "assets/pangle_vp_config.db"
            java.util.zip.ZipEntry r5 = r3.getEntry(r5)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            if (r5 == 0) goto L7f
            java.io.InputStream r2 = r3.getInputStream(r5)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            int r5 = r2.available()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            byte[] r5 = new byte[r5]     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            r2.read(r5)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            boolean r1 = r6.equals(r4)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            goto L7f
        L76:
            r1 = move-exception
            r8 = r2
            r2 = r0
            r0 = r8
            goto L95
        L7b:
            r8 = r2
            r2 = r0
            r0 = r8
            goto La7
        L7f:
            if (r0 == 0) goto L84
            r0.close()     // Catch: java.io.IOException -> L84
        L84:
            if (r2 == 0) goto L89
            r2.close()     // Catch: java.io.IOException -> L89
        L89:
            r3.close()     // Catch: java.io.IOException -> Lb4
            goto Lb4
        L8d:
            r1 = move-exception
            r0 = r2
            goto L95
        L90:
            r0 = r2
            goto La7
        L92:
            r1 = move-exception
            r0 = r2
            r3 = r0
        L95:
            if (r2 == 0) goto L9a
            r2.close()     // Catch: java.io.IOException -> L9a
        L9a:
            if (r0 == 0) goto L9f
            r0.close()     // Catch: java.io.IOException -> L9f
        L9f:
            if (r3 == 0) goto La4
            r3.close()     // Catch: java.io.IOException -> La4
        La4:
            throw r1
        La5:
            r0 = r2
            r3 = r0
        La7:
            if (r2 == 0) goto Lac
            r2.close()     // Catch: java.io.IOException -> Lac
        Lac:
            if (r0 == 0) goto Lb1
            r0.close()     // Catch: java.io.IOException -> Lb1
        Lb1:
            if (r3 == 0) goto Lb4
            goto L89
        Lb4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byakv.z.SoftDecTool.b():int");
    }

    @HungeonFlag
    public static native Object b(int i2, Object[] objArr);

    public static native byte[] bc(int i2, byte[] bArr);

    @DungeonFlag
    public static synchronized Object cn(int i2, Object[] objArr) {
        if (!q.l()) {
            return null;
        }
        return b(i2, objArr);
    }

    @DungeonFlag
    public static void cs(String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("sofchara", str).putLong(bv.aI, System.currentTimeMillis()).apply();
        }
    }

    @DungeonFlag
    public static String dgb() throws NumberFormatException {
        StringBuilder sb = new StringBuilder();
        sb.append(hp(Build.BOARD, "ro.product.board"));
        sb.append(hp(Build.MODEL, "ro.product.model"));
        sb.append(hp(Build.VERSION.RELEASE, "ro.build.version.release"));
        sb.append(hp(Build.MANUFACTURER, "ro.product.manufacturer"));
        sb.append(hp(Build.DISPLAY, "ro.build.display.id"));
        long j2 = Build.TIME;
        long j3 = Long.parseLong(a.hp("ro.build.date.utc", "-1"));
        if (j2 == -1000 || j3 == -1) {
            sb.append(e.f35456V);
        } else {
            if (String.valueOf(j2).length() >= 10) {
                sb.append(Long.parseLong(String.valueOf(j2).substring(0, 10)) == j3 ? 0 : 1);
            } else {
                sb.append(1);
            }
            sb.append(j2 == j3 * 1000 ? 0 : 1);
        }
        return sb.toString();
    }

    @DungeonFlag
    public static String dn() {
        try {
            return Settings.Secure.getString(a.jx().getContentResolver(), "bluetooth_name");
        } catch (Throwable unused) {
            return "-1";
        }
    }

    @DungeonFlag
    public static long fi() {
        try {
            return a.jx().getPackageManager().getPackageInfo(a.jx().getPackageName(), 0).firstInstallTime / 1000;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0L;
        }
    }

    @DungeonFlag
    public static long fr() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences == null) {
            return 0L;
        }
        long j2 = sharedPreferences.getLong("frt", 0L);
        if (j2 != 0) {
            return j2;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        sharedPreferences.edit().putLong("frt", jCurrentTimeMillis).apply();
        return jCurrentTimeMillis;
    }

    @DungeonFlag
    public static String gc() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("sofchara", "");
            long j2 = sharedPreferences.getLong(bv.aI, 0L);
            if (j2 != 0 && !TextUtils.isEmpty(string) && System.currentTimeMillis() - j2 <= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                return string;
            }
        }
        return "";
    }

    @DungeonFlag
    public static JSONObject gdh() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            if (sharedPreferences == null || sharedPreferences.getBoolean("reported_devicehardware_2", false) || a.jx() == null || hp(a.jx().getPackageManager().getPackageInfo(a.jx().getPackageName(), 0).firstInstallTime, System.currentTimeMillis())) {
                return null;
            }
            String strHp = a.hp("gsm.version.baseband", "");
            String strHp2 = a.hp("ro.build.fingerprint", "");
            String property = System.getProperty("os.version");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("radio", strHp);
            jSONObject.put("fp", strHp2);
            jSONObject.put("kernel", property);
            jSONObject.put("rom_version", a.hp("ro.build.display.id", ""));
            jSONObject.put("build_id", a.hp("ro.build.id", ""));
            jSONObject.put("incremental", a.hp("ro.build.version.incremental", ""));
            jSONObject.put("compiling_time", a.hp("ro.build.date.utc", ""));
            sharedPreferences.edit().putBoolean("reported_devicehardware_2", true).apply();
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getBId() {
        if (eb != null) {
            return eb;
        }
        synchronized (SoftDecTool.class) {
            if (eb == null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/sys/kernel/random/boot_id"));
                    try {
                        eb = bufferedReader.readLine();
                        bufferedReader.close();
                    } finally {
                    }
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return eb;
    }

    public static SharedPreferences getSharedPreferences(String str) {
        if (hp == null) {
            try {
                Context contextJx = a.jx();
                if (contextJx != null && str != null) {
                    Context contextCreateDeviceProtectedStorageContext = contextJx.createDeviceProtectedStorageContext();
                    contextCreateDeviceProtectedStorageContext.moveSharedPreferencesFrom(contextJx, str);
                    hp = l.l(contextCreateDeviceProtectedStorageContext, str, 0);
                }
                return null;
            } catch (Throwable unused) {
            }
        }
        return hp;
    }

    public static String getss() {
        boolean z2;
        SensorManager sensorManager;
        List<Sensor> sensorList;
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        String string = sharedPreferences.getString("sensor_fingerprint", null);
        int i2 = 0;
        if (string == null || string.isEmpty()) {
            string = null;
            z2 = false;
        } else {
            z2 = true;
        }
        boolean zHp = hp(System.currentTimeMillis(), sharedPreferences.getLong("last_sensor_hash_time", 0L));
        if (!zHp) {
            f17944l = false;
        }
        if (!f17944l && (!z2 || !zHp)) {
            f17944l = true;
            try {
                s sVarA = a.a();
                JSONObject jSONObject = new JSONObject();
                if (sVarA != null && (sensorManager = (SensorManager) a.jx().getSystemService("sensor")) != null && (sensorList = sensorManager.getSensorList(-1)) != null && !sensorList.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArray = new JSONArray();
                    int i3 = 0;
                    for (Sensor sensor : sensorList) {
                        if (sensor != null) {
                            i3++;
                            if (i3 > 100) {
                                break;
                            }
                            arrayList.add(jx(sensor.getName() + "|" + sensor.getVendor() + "|" + sensor.getVersion()));
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("name", sensor.getName());
                            jSONObject2.put("vendor", sensor.getVendor());
                            jSONObject2.put(cl.f49059n, sensor.getVersion());
                            jSONArray.put(jSONObject2);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    Collections.sort(arrayList);
                    StringBuilder sb = new StringBuilder();
                    int size = arrayList.size();
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        sb.append((String) obj);
                        sb.append("|");
                    }
                    String strJ = j(sb.toString());
                    sharedPreferences.edit().putString("sensor_fingerprint", strJ).putLong("last_sensor_hash_time", System.currentTimeMillis()).apply();
                    jSONObject.put("sensors", jSONArray);
                    jSONObject.put("sensor_fingerprint", strJ);
                    sVarA.hp("device_hardware_sensor", jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        return string;
    }

    @DungeonFlag
    public static String getwvid() {
        if (f17943j != null) {
            return f17943j;
        }
        if (!jx.compareAndSet(false, true)) {
            return null;
        }
        w.l(new eb("wvid") { // from class: com.byakv.z.SoftDecTool.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    MediaDrm mediaDrm = new MediaDrm(UUID.fromString("edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"));
                    byte[] propertyByteArray = mediaDrm.getPropertyByteArray("deviceUniqueId");
                    mediaDrm.release();
                    if (propertyByteArray == null || propertyByteArray.length <= 0) {
                        return;
                    }
                    String unused = SoftDecTool.f17943j = SoftDecTool.j(SoftDecTool.l(propertyByteArray));
                } catch (Throwable unused2) {
                    SoftDecTool.jx.set(false);
                }
            }
        });
        return null;
    }

    @DungeonFlag
    public static synchronized int h(String str, boolean z2) {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            int i2 = sharedPreferences.getInt(str, 0);
            if (!z2) {
                return i2;
            }
            int i3 = i2 + 1;
            sharedPreferences.edit().putInt(str, i3).apply();
            return i3;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @DungeonFlag
    public static int hv() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) a.jx().getSystemService("connectivity");
            return connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork()).hasCapability(15) ? 0 : 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @DungeonFlag
    public static String i() {
        int i2 = f17945w + 1;
        f17945w = i2;
        if (i2 != 2) {
            return "2";
        }
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) a.jx().getSystemService("accessibility");
            TreeSet treeSet = new TreeSet();
            for (AccessibilityServiceInfo accessibilityServiceInfo : accessibilityManager.getInstalledAccessibilityServiceList()) {
                treeSet.add(String.format("%s#%s", accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName, accessibilityServiceInfo.getResolveInfo().serviceInfo.name));
            }
            JSONArray jSONArray = new JSONArray((Collection) treeSet);
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            String string = jSONArray.toString();
            String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            String string2 = sharedPreferences.getString("iacba", "");
            String string3 = sharedPreferences.getString("date", "1970-01-01");
            if (string2.equals(jSONArray.toString()) && str.equals(string3)) {
                return "2";
            }
            sharedPreferences.edit().putString("iacba", string).apply();
            sharedPreferences.edit().putString("date", str).apply();
            return string;
        } catch (Throwable unused) {
            return "-1";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(String str) throws Exception {
        return l(Arrays.copyOf(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)), 16));
    }

    private static String jx(String str) throws Exception {
        return l(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)));
    }

    @DungeonFlag
    public static String kv() {
        return System.getProperty("os.version");
    }

    @DungeonFlag
    public static String p() {
        return l.hp(a.jx()).getPath();
    }

    @DungeonFlag
    public static String prx() {
        String property = System.getProperty("http.proxyHost");
        String property2 = System.getProperty("http.proxyPort");
        return (TextUtils.isEmpty(property) && TextUtils.isEmpty(property2)) ? "" : String.format("%s:%s", property, property2);
    }

    @DungeonFlag
    public static void rsd(final String str) {
        com.byazt.ymw.e.hp().postDelayed(new Runnable() { // from class: com.byakv.z.SoftDecTool.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s sVarA = a.a();
                    if (sVarA != null) {
                        JSONObject jSONObjectGdh = SoftDecTool.gdh();
                        if (jSONObjectGdh == null && !TextUtils.isEmpty(str)) {
                            jSONObjectGdh = new JSONObject();
                        }
                        if (jSONObjectGdh != null) {
                            if (!TextUtils.isEmpty(str)) {
                                jSONObjectGdh.put("rd2", str);
                            }
                            sVarA.hp("device_hardware", jSONObjectGdh);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }, 20000L);
    }

    public static JSONObject t() {
        try {
            if (System.currentTimeMillis() - LastReportTooltypeTime <= 3000 || codeIdCountMap.isEmpty()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<Integer, Integer> entry : codeIdCountMap.entrySet()) {
                jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
            }
            jSONObject.put("ctt", jSONObject2);
            LastReportTooltypeTime = System.currentTimeMillis();
            codeIdCountMap.clear();
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    @DungeonFlag
    public static long tft() {
        return a.eb();
    }

    @DungeonFlag
    public static int trc() {
        return a.s();
    }

    @DungeonFlag
    public static int u() {
        UsbAccessory[] accessoryList = ((UsbManager) a.jx().getSystemService("usb")).getAccessoryList();
        return (accessoryList == null || accessoryList.length == 0) ? 0 : 1;
    }

    public static void ua() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            acs = sharedPreferences.getFloat("acs", -1.0f);
            act = sharedPreferences.getLong("act", 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return sb.toString();
    }

    @DungeonFlag
    private static String hp(InputStream inputStream) throws NoSuchAlgorithmException, IOException {
        int i2;
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i3 = inputStream.read(bArr);
                if (i3 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i3);
            }
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                int i4 = b3 & 255;
                if (i4 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i4));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UnsupportedEncodingException", e2);
        } catch (IOException unused) {
            return "";
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException("NoSuchAlgorithmException", e3);
        }
    }

    public static void ua(double d2, long j2) {
        acs = d2;
        act = j2;
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putFloat("acs", (float) d2).putLong("act", j2).apply();
        }
    }

    private static boolean hp(long j2, long j3) {
        long j4 = j3 - j2;
        return j4 < 86400000 && j4 > -86400000 && hp(j2) == hp(j3);
    }

    private static long hp(long j2) {
        return (j2 + TimeZone.getDefault().getOffset(j2)) / 86400000;
    }

    @DungeonFlag
    private static int hp(String str, String str2) {
        String strHp = a.hp(str2, "unknown");
        return (str.equals("unknown") || strHp.equals("unknown") || str.equals(strHp)) ? 0 : 1;
    }
}
