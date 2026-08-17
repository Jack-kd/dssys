package com.byazt.anq;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.byazt.lc.gu;
import com.byazt.lc.q;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1051, 28})
/* loaded from: classes2.dex */
public class hp {
    public static Map<String, Integer> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public LinkedHashMap<String, Integer> f18047l;

    static {
        List<String> listHp = gu.hp();
        if (listHp == null || listHp.size() <= 0) {
            return;
        }
        Iterator<String> it = listHp.iterator();
        while (it.hasNext()) {
            hp.put(it.next(), 0);
        }
    }

    public hp() {
        LinkedHashMap<String, Integer> linkedHashMap = new LinkedHashMap<>();
        this.f18047l = linkedHashMap;
        linkedHashMap.put(Zeus.getAppApplication().getApplicationInfo().sourceDir, 0);
    }

    private AssetManager jx(AssetManager assetManager, String str, boolean z2) {
        int i2;
        int iIntValue;
        Throwable th = null;
        int i3 = 3;
        loop0: while (true) {
            int i4 = i3 - 1;
            if (i3 < 0) {
                break;
            }
            try {
                synchronized (assetManager) {
                    iIntValue = 0;
                    for (int i5 = 0; i5 < 3; i5++) {
                        try {
                            if (q.j()) {
                                iIntValue = ((Integer) MethodUtils.invokeMethod(assetManager, "addAssetPathNative", new Object[]{str}, new Class[]{String.class})).intValue();
                            } else if (q.gu()) {
                                iIntValue = ((Integer) MethodUtils.invokeMethod(assetManager, "addAssetPathNative", new Object[]{str, Boolean.valueOf(z2)}, new Class[]{String.class, Boolean.TYPE})).intValue();
                            }
                            if (iIntValue != 0) {
                                break loop0;
                            }
                        } finally {
                        }
                    }
                    break loop0;
                }
            } catch (Throwable th2) {
                th = th2;
                i3 = i4;
            }
        }
        if (iIntValue == 0) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.appendAssetPathSafely() failed, cookie = " + iIntValue + " " + str);
        } else {
            Object field = FieldUtils.readField(assetManager, "mStringBlocks");
            int length = field != null ? Array.getLength(field) : 0;
            int iIntValue2 = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
            Object objNewInstance = Array.newInstance(field.getClass().getComponentType(), iIntValue2);
            for (i2 = 0; i2 < iIntValue2; i2++) {
                if (i2 < length) {
                    Array.set(objNewInstance, i2, Array.get(field, i2));
                } else {
                    Long l2 = (Long) MethodUtils.invokeMethod(assetManager, "getNativeStringBlock", new Object[]{Integer.valueOf(i2)}, new Class[]{Integer.TYPE});
                    l2.longValue();
                    Array.set(objNewInstance, i2, MethodUtils.invokeConstructor(field.getClass().getComponentType(), new Object[]{l2, Boolean.TRUE}, new Class[]{Long.TYPE, Boolean.TYPE}));
                }
            }
            FieldUtils.writeField(assetManager, "mStringBlocks", objNewInstance);
            ZeusLogger.d(ZeusLogger.TAG_LOAD, "AssetManagerProcessor appendAssetPathSafely success, sourceDir = ".concat(String.valueOf(str)));
        }
        if (th != null) {
            if (!q.sz()) {
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor appendAssetPathSafely failed, sourceDir = ".concat(String.valueOf(str)), th);
            }
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor appendAssetPathSafely failed, sourceDir = ".concat(String.valueOf(str)), th);
        }
        return assetManager;
    }

    private AssetManager l(AssetManager assetManager, String str, boolean z2) throws NoSuchMethodException, SecurityException {
        int iIntValue;
        String str2 = "addAssetPath";
        String str3 = z2 ? "addAssetPathAsSharedLibrary" : "addAssetPath";
        if (q.xs() && !z2 && str.startsWith("/product/overlay/")) {
            str3 = "addOverlayPath";
        }
        Method accessibleMethod = MethodUtils.getAccessibleMethod(AssetManager.class, str3, String.class);
        if (accessibleMethod == null && z2) {
            accessibleMethod = MethodUtils.getAccessibleMethod(AssetManager.class, "addAssetPath", String.class);
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor AssetManager.addAssetPath() invoke addAssetPathAsSharedLibrary failed. use addAssetPath.");
        } else {
            str2 = str3;
        }
        if (accessibleMethod == null) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor reflect AssetManager.addAssetPath() failed. addAssetPathMethod == null. asSharedLibrary = " + z2 + " methodName:" + str2);
            return assetManager;
        }
        int i2 = 3;
        while (true) {
            int i3 = i2 - 1;
            if (i2 < 0) {
                break;
            }
            try {
                iIntValue = ((Integer) accessibleMethod.invoke(assetManager, str)).intValue();
            } catch (Exception e2) {
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() failed. asSharedLibrary = " + z2 + ", methodName = " + str2, e2);
            }
            if (iIntValue != 0) {
                ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() success, cookie = " + iIntValue + ", path = " + str);
                break;
            }
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() failed, cookie = " + iIntValue + " " + str);
            i2 = i3;
        }
        return assetManager;
    }

    public AssetManager hp(AssetManager assetManager, String str, boolean z2) {
        AssetManager assetManagerHp;
        if (str.endsWith(".frro")) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor updateAssetManager skip frro. ".concat(str));
            return assetManager;
        }
        if (!q.hp()) {
            assetManagerHp = hp(assetManager, str);
        } else if (q.a()) {
            assetManagerHp = jx(assetManager, str, z2);
            if (!gu.hp(assetManagerHp, str)) {
                assetManagerHp = l(assetManager, str, z2);
            }
        } else {
            assetManagerHp = l(assetManager, str, z2);
        }
        synchronized (this.f18047l) {
            this.f18047l.put(str, 0);
        }
        return assetManagerHp;
    }

    private AssetManager hp(AssetManager assetManager, String str) throws NoSuchMethodException, SecurityException {
        AssetManager assetManager2;
        List<String> listHp = gu.hp(assetManager);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (String str2 : listHp) {
            if (!hp.containsKey(str2) && !this.f18047l.containsKey(str2) && !str2.equals(str)) {
                arrayList.add(str2);
            }
        }
        ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager, runtimeAdditionalAssets path = ".concat(String.valueOf(str)));
        try {
            if (assetManager.getClass().getName().equals("android.content.res.BaiduAssetManager")) {
                assetManager2 = (AssetManager) Class.forName("android.content.res.BaiduAssetManager").getConstructor(null).newInstance(null);
            } else {
                assetManager2 = (AssetManager) AssetManager.class.newInstance();
            }
            ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager = ".concat(String.valueOf(assetManager2)));
            synchronized (this.f18047l) {
                try {
                    for (Map.Entry<String, Integer> entry : this.f18047l.entrySet()) {
                        if (!hp.containsKey(entry.getKey())) {
                            sb.append(entry.getKey());
                            l(assetManager2, entry.getKey(), false);
                        }
                    }
                } finally {
                }
            }
            if (!sb.toString().contains(Zeus.getAppApplication().getApplicationInfo().sourceDir)) {
                l(assetManager2, Zeus.getAppApplication().getApplicationInfo().sourceDir, false);
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager lost host path : " + hp.containsKey(Zeus.getAppApplication().getApplicationInfo().sourceDir));
            }
            sb.append(str);
            l(assetManager2, str, false);
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String str3 = (String) obj;
                    sb.append(str3);
                    l(assetManager2, str3, false);
                }
            }
            if (q.w() && !sb.toString().toLowerCase().contains("webview")) {
                try {
                    Resources resources = Zeus.getAppApplication().getResources();
                    String str4 = Zeus.getAppApplication().createPackageContext(resources.getString(resources.getIdentifier("android:string/config_webViewPackageName", "string", "android")), 0).getApplicationInfo().sourceDir;
                    if (!TextUtils.isEmpty(str4)) {
                        l(assetManager2, str4, false);
                    }
                } catch (Exception e2) {
                    ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager appendAsset webview failed.", e2);
                }
            }
            assetManager = assetManager2;
        } catch (Exception e3) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager failed.", e3);
            l(assetManager, str, false);
        }
        try {
            MethodUtils.invokeMethod(assetManager, "ensureStringBlocks", new Object[0]);
            ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor ensureStringBlocks");
        } catch (Exception e4) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor ensureStringBlocks failed.", e4);
        }
        return assetManager;
    }
}
