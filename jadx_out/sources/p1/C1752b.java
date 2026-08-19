package p1;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import com.anythink.core.common.m.f;
import com.baidu.mobads.sdk.internal.bn;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.q;
import kotlin.collections.r;
import kotlin.jvm.internal.j;
import kotlin.text.B;
import kotlin.text.z;

/* renamed from: p1.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1752b implements MethodChannel.MethodCallHandler {

    /* renamed from: b, reason: collision with root package name */
    public final PackageManager f52712b;

    /* renamed from: c, reason: collision with root package name */
    public final ActivityManager f52713c;

    /* renamed from: d, reason: collision with root package name */
    public final ContentResolver f52714d;

    public C1752b(PackageManager packageManager, ActivityManager activityManager, ContentResolver contentResolver) {
        j.e(packageManager, "packageManager");
        j.e(activityManager, "activityManager");
        j.e(contentResolver, "contentResolver");
        this.f52712b = packageManager;
        this.f52713c = activityManager;
        this.f52714d = contentResolver;
    }

    public final List a() {
        FeatureInfo[] systemAvailableFeatures = this.f52712b.getSystemAvailableFeatures();
        j.d(systemAvailableFeatures, "getSystemAvailableFeatures(...)");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (FeatureInfo featureInfo : systemAvailableFeatures) {
            if (featureInfo.name != null) {
                arrayList.add(featureInfo);
            }
        }
        ArrayList arrayList2 = new ArrayList(r.v(arrayList, 10));
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            arrayList2.add(((FeatureInfo) obj).name);
        }
        return arrayList2;
    }

    public final boolean b() {
        String BRAND = Build.BRAND;
        j.d(BRAND, "BRAND");
        if (z.H(BRAND, "generic", false, 2, null)) {
            String DEVICE = Build.DEVICE;
            j.d(DEVICE, "DEVICE");
            if (z.H(DEVICE, "generic", false, 2, null)) {
                return true;
            }
        }
        String FINGERPRINT = Build.FINGERPRINT;
        j.d(FINGERPRINT, "FINGERPRINT");
        if (z.H(FINGERPRINT, "generic", false, 2, null)) {
            return true;
        }
        j.d(FINGERPRINT, "FINGERPRINT");
        if (z.H(FINGERPRINT, "unknown", false, 2, null)) {
            return true;
        }
        String HARDWARE = Build.HARDWARE;
        j.d(HARDWARE, "HARDWARE");
        if (B.M(HARDWARE, "goldfish", false, 2, null)) {
            return true;
        }
        j.d(HARDWARE, "HARDWARE");
        if (B.M(HARDWARE, "ranchu", false, 2, null)) {
            return true;
        }
        String MODEL = Build.MODEL;
        j.d(MODEL, "MODEL");
        if (B.M(MODEL, "google_sdk", false, 2, null)) {
            return true;
        }
        j.d(MODEL, "MODEL");
        if (B.M(MODEL, "Emulator", false, 2, null)) {
            return true;
        }
        j.d(MODEL, "MODEL");
        if (B.M(MODEL, "Android SDK built for x86", false, 2, null)) {
            return true;
        }
        String MANUFACTURER = Build.MANUFACTURER;
        j.d(MANUFACTURER, "MANUFACTURER");
        if (B.M(MANUFACTURER, "Genymotion", false, 2, null)) {
            return true;
        }
        String PRODUCT = Build.PRODUCT;
        j.d(PRODUCT, "PRODUCT");
        if (B.M(PRODUCT, "sdk", false, 2, null)) {
            return true;
        }
        j.d(PRODUCT, "PRODUCT");
        if (B.M(PRODUCT, "vbox86p", false, 2, null)) {
            return true;
        }
        j.d(PRODUCT, "PRODUCT");
        if (B.M(PRODUCT, "emulator", false, 2, null)) {
            return true;
        }
        j.d(PRODUCT, "PRODUCT");
        return B.M(PRODUCT, "simulator", false, 2, null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        j.e(call, "call");
        j.e(result, "result");
        if (!call.method.equals("getDeviceInfo")) {
            result.notImplemented();
            return;
        }
        HashMap map = new HashMap();
        map.put("board", Build.BOARD);
        map.put("bootloader", Build.BOOTLOADER);
        map.put("brand", Build.BRAND);
        map.put("device", Build.DEVICE);
        map.put("display", Build.DISPLAY);
        map.put("fingerprint", Build.FINGERPRINT);
        map.put("hardware", Build.HARDWARE);
        map.put(f.bU, Build.HOST);
        map.put("id", Build.ID);
        map.put("manufacturer", Build.MANUFACTURER);
        map.put("model", Build.MODEL);
        map.put("product", Build.PRODUCT);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25) {
            String string = Settings.Global.getString(this.f52714d, bv.f48883J);
            if (string == null) {
                string = "";
            }
            map.put("name", string);
        }
        String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
        map.put("supported32BitAbis", q.o(Arrays.copyOf(strArr, strArr.length)));
        String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
        map.put("supported64BitAbis", q.o(Arrays.copyOf(strArr2, strArr2.length)));
        String[] strArr3 = Build.SUPPORTED_ABIS;
        map.put("supportedAbis", q.o(Arrays.copyOf(strArr3, strArr3.length)));
        map.put(bn.f11199l, Build.TAGS);
        map.put("type", Build.TYPE);
        map.put("isPhysicalDevice", Boolean.valueOf(!b()));
        map.put("systemFeatures", a());
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        map.put("freeDiskSize", Long.valueOf(statFs.getFreeBytes()));
        map.put("totalDiskSize", Long.valueOf(statFs.getTotalBytes()));
        HashMap map2 = new HashMap();
        map2.put("baseOS", Build.VERSION.BASE_OS);
        map2.put("previewSdkInt", Integer.valueOf(Build.VERSION.PREVIEW_SDK_INT));
        map2.put("securityPatch", Build.VERSION.SECURITY_PATCH);
        map2.put("codename", Build.VERSION.CODENAME);
        map2.put("incremental", Build.VERSION.INCREMENTAL);
        map2.put("release", Build.VERSION.RELEASE);
        map2.put("sdkInt", Integer.valueOf(i2));
        map.put(cl.f49059n, map2);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f52713c.getMemoryInfo(memoryInfo);
        map.put("isLowRamDevice", Boolean.valueOf(memoryInfo.lowMemory));
        map.put("physicalRamSize", Long.valueOf(memoryInfo.totalMem / 1048576));
        map.put("availableRamSize", Long.valueOf(memoryInfo.availMem / 1048576));
        result.success(map);
    }
}
