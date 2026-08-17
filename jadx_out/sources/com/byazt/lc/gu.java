package com.byazt.lc;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1769, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public final class gu {
    public static volatile ArrayList<String> hp;

    /* renamed from: l, reason: collision with root package name */
    public static String f22416l;

    public static List<String> hp() {
        AssetManager assetManager;
        try {
            assetManager = (AssetManager) AssetManager.class.newInstance();
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "Execute 'AssetManager.class.newInstance()' failed. ", e2);
            assetManager = null;
        }
        return hp(assetManager);
    }

    public static String l(AssetManager assetManager) {
        return hp(hp(assetManager));
    }

    public static synchronized List<String> l() {
        try {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_web", "start");
            if (hp == null) {
                synchronized (gu.class) {
                    if (hp == null) {
                        hp = new ArrayList<>();
                        if (q.j()) {
                            try {
                                Resources resources = Zeus.getAppApplication().getResources();
                                hp.add(Zeus.getAppApplication().createPackageContext(resources.getString(resources.getIdentifier("android:string/config_webViewPackageName", "string", "android")), 0).getApplicationInfo().sourceDir);
                            } catch (Exception e2) {
                                ZeusLogger.w(ZeusLogger.TAG_LOAD, "getWebViewPaths1 failed.", e2);
                            }
                        } else if (q.e()) {
                            try {
                                Object objInvokeStaticMethod = MethodUtils.invokeStaticMethod(Class.forName("android.webkit.WebViewFactory"), "getWebViewContextAndSetProvider", new Object[0]);
                                if (q.v()) {
                                    Collections.addAll(hp, hp(((Context) objInvokeStaticMethod).getApplicationInfo()));
                                } else {
                                    hp.add(((Context) objInvokeStaticMethod).getApplicationInfo().sourceDir);
                                }
                            } catch (Exception e3) {
                                ZeusLogger.w(ZeusLogger.TAG_LOAD, "getWebViewPaths2 failed.", e3);
                            }
                        }
                    }
                }
            }
            GlobalParam.getInstance().getReporter().hp("zeus_stage_web", "finish :" + hp);
        } catch (Throwable th) {
            throw th;
        }
        return hp;
    }

    public static List<String> hp(AssetManager assetManager) {
        ArrayList arrayList = new ArrayList();
        if (assetManager != null) {
            try {
                if (q.k()) {
                    Object[] objArr = (Object[]) MethodUtils.invokeMethod(assetManager, "getApkAssets", new Object[0]);
                    if (objArr != null && objArr.length > 0) {
                        for (Object obj : objArr) {
                            arrayList.add((String) MethodUtils.invokeMethod(obj, "getAssetPath", new Object[0]));
                        }
                    }
                } else {
                    int iIntValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                    for (int i2 = 0; i2 < iIntValue; i2++) {
                        try {
                            String str = (String) MethodUtils.invokeMethod(assetManager, "getCookieName", Integer.valueOf(i2 + 1));
                            if (!TextUtils.isEmpty(str)) {
                                arrayList.add(str);
                            }
                        } catch (IndexOutOfBoundsException unused) {
                        }
                    }
                }
            } catch (Throwable th) {
                ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "ResUtils GetAssetsPaths error. ", th);
            }
        }
        return arrayList;
    }

    public static boolean hp(AssetManager assetManager, String str) {
        try {
            if (q.k()) {
                Object[] objArr = (Object[]) MethodUtils.invokeMethod(assetManager, "getApkAssets", new Object[0]);
                if (objArr != null && objArr.length > 0) {
                    for (Object obj : objArr) {
                        if (TextUtils.equals((String) MethodUtils.invokeMethod(obj, "getAssetPath", new Object[0]), str)) {
                            return true;
                        }
                    }
                }
            } else {
                int iIntValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                int i2 = 0;
                while (i2 < iIntValue) {
                    i2++;
                    if (TextUtils.equals((String) MethodUtils.invokeMethod(assetManager, "getCookieName", Integer.valueOf(i2)), str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "containsPath error. ", th);
        }
        return false;
    }

    public static String hp(List<String> list) {
        StringBuilder sb = new StringBuilder("[");
        if (list != null && list.size() > 0) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(" , ");
            }
            sb.delete(sb.lastIndexOf(" , "), sb.length());
        }
        sb.append("]");
        return sb.toString();
    }

    @RequiresApi(api = 21)
    private static String[] hp(ApplicationInfo applicationInfo) {
        String[] strArr;
        try {
            strArr = (String[]) com.byazt.vw.hp.hp((Class<?>) ApplicationInfo.class, "resourceDirs").get(applicationInfo);
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "get resourceDirs failed.", th);
            strArr = new String[0];
        }
        String[][] strArr2 = {applicationInfo.splitSourceDirs, applicationInfo.sharedLibraryFiles, strArr};
        ArrayList arrayList = new ArrayList(10);
        String str = applicationInfo.sourceDir;
        if (str != null) {
            arrayList.add(str);
        }
        for (int i2 = 0; i2 < 3; i2++) {
            String[] strArr3 = strArr2[i2];
            if (strArr3 != null) {
                arrayList.addAll(Arrays.asList(strArr3));
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
