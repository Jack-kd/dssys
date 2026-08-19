package com.byazt.zn;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {

    @com.byazt.kj.hp(hp = {0, 1, 442, 672})
    public static class hp {
        public String hp;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f28586l;

        public hp(String str, String str2, String str3) {
            this.hp = str;
            this.f28586l = str2;
            this.jx = str3;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof hp)) {
                return super.equals(obj);
            }
            hp hpVar = (hp) obj;
            String str2 = this.hp;
            return str2 != null && str2.equals(hpVar.hp) && (str = this.jx) != null && str.equals(hpVar.jx);
        }

        public String toString() {
            try {
                return "<" + this.hp + " name=\"" + this.f28586l + "\" path=\"" + this.jx + "\" />";
            } catch (Throwable unused) {
                return super.toString();
            }
        }
    }

    public static void hp() {
        Context context = com.byazt.jz.sz.getContext();
        if (context != null && com.byazt.ymw.u.jx()) {
            hp(context);
            String packageName = context.getPackageName();
            int i2 = context.getApplicationInfo().targetSdkVersion;
            PackageManager packageManager = context.getPackageManager();
            boolean z2 = false;
            boolean z3 = false;
            for (ProviderInfo providerInfo : packageManager.queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072)) {
                if ("com.byazt.fd.TTMultiProvider".equals(providerInfo.name)) {
                    String str = packageName + ".TTMultiProvider";
                    if (TextUtils.isEmpty(str) || !str.equals(providerInfo.authority)) {
                        com.byazt.ymw.u.l("TTAdSdk-InitChecker", "AndroidManifest.xml中TTMultiProvider配置异常：android:authorities，请参考接入文档");
                        com.byazt.oz.jx.jx(3, "0");
                    } else {
                        com.byazt.oz.jx.jx(3, "1");
                    }
                    z2 = true;
                } else {
                    if (providerInfo.authority.equals(packageName + ".TTFileProvider")) {
                        if (i2 < 24) {
                            com.byazt.oz.jx.jx(3, "1");
                        } else {
                            if (providerInfo.exported) {
                                com.byazt.ymw.u.l("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:exported，请参考接入文档");
                                com.byazt.oz.jx.jx(3, "0");
                            }
                            if (!providerInfo.grantUriPermissions) {
                                com.byazt.ymw.u.l("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:grantUriPermissions，请参考接入文档");
                                com.byazt.oz.jx.jx(3, "0");
                            }
                            try {
                                List<hp> listHp = hp(context, Integer.valueOf(String.valueOf(packageManager.getProviderInfo(new ComponentName(packageName, providerInfo.name), 128).metaData.get("android.support.FILE_PROVIDER_PATHS"))).intValue());
                                if (listHp == null || listHp.isEmpty()) {
                                    com.byazt.ymw.u.l("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider中路径配置异常，请参考接入文档");
                                    com.byazt.oz.jx.jx(3, "0");
                                } else {
                                    List<hp> listJx = jx();
                                    List<hp> listJ = j();
                                    for (hp hpVar : listHp) {
                                        if (hpVar != null) {
                                            listJx.remove(hpVar);
                                            listJ.remove(hpVar);
                                        }
                                    }
                                    if (listJx.isEmpty() && listJ.isEmpty()) {
                                        com.byazt.oz.jx.jx(3, "1");
                                    } else {
                                        Iterator<hp> it = listJx.iterator();
                                        while (it.hasNext()) {
                                            com.byazt.ymw.u.l("TTAdSdk-InitChecker", "    TTFileProvider缺少必要路径：" + it.next().toString());
                                        }
                                        Iterator<hp> it2 = listJ.iterator();
                                        while (it2.hasNext()) {
                                            com.byazt.ymw.u.l("TTAdSdk-InitChecker", "    TTFileProvider缺少可选路径：" + it2.next().toString());
                                        }
                                        com.byazt.oz.jx.jx(3, "0");
                                    }
                                }
                            } catch (Throwable th) {
                                com.byazt.ymw.u.hp("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置错误，请参考接入文档", th);
                                com.byazt.oz.jx.jx(3, "0");
                            }
                        }
                        z3 = true;
                    }
                }
            }
            try {
                String[] strArr = packageManager.getPackageInfo(packageName, 4096).requestedPermissions;
                if (strArr == null || strArr.length <= 0) {
                    com.byazt.ymw.u.l("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置丢失，请参考接入文档");
                } else {
                    List<String> listL = l();
                    for (String str2 : strArr) {
                        if (str2 != null) {
                            listL.remove(str2);
                        }
                    }
                    if (!listL.isEmpty()) {
                        Iterator<String> it3 = listL.iterator();
                        while (it3.hasNext()) {
                            com.byazt.ymw.u.l("TTAdSdk-InitChecker", "    可能缺少权限：" + it3.next() + "，请参考接入文档");
                        }
                    }
                }
            } catch (Throwable th2) {
                com.byazt.ymw.u.hp("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置错误，请参考接入文档", th2);
            }
            if (i2 >= 23) {
                try {
                    boolean zHp = com.byazt.sii.w.hp().hp(context, "android.permission.READ_PHONE_STATE");
                    boolean zHp2 = com.byazt.sii.w.hp().hp(context, g.f31166h);
                    boolean zHp3 = com.byazt.sii.w.hp().hp(context, g.f31165g);
                    boolean zHp4 = com.byazt.sii.w.hp().hp(context, "android.permission.WRITE_EXTERNAL_STORAGE");
                    if (!zHp) {
                        com.byazt.ymw.u.l("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.READ_PHONE_STATE");
                    }
                    if (!zHp2) {
                        com.byazt.ymw.u.l("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_COARSE_LOCATION");
                    }
                    if (!zHp3) {
                        com.byazt.ymw.u.l("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_FINE_LOCATION");
                    }
                    if (!zHp4) {
                        com.byazt.ymw.u.l("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.WRITE_EXTERNAL_STORAGE");
                    }
                } catch (Throwable th3) {
                    com.byazt.ymw.u.hp("TTAdSdk-InitChecker", "动态权限获取异常，请检查并详细阅读接入文档", th3);
                }
            }
            if (!z2) {
                com.byazt.ymw.u.l("TTAdSdk-InitChecker", "××您没有配置TTMultiProvider，请参考接入文档，否则影响转化××");
            }
            if (z3) {
                return;
            }
            com.byazt.ymw.u.l("TTAdSdk-InitChecker", "××您没有配置TTFileProvider，请参考接入文档，否则影响转化××");
        }
    }

    private static List<hp> j() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new hp("external-path", "tt_external_root", i.f2495E));
        return arrayList;
    }

    private static List<hp> jx() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new hp("external-path", "tt_external_download", "Download"));
        arrayList.add(new hp("external-files-path", "tt_external_files_download", "Download"));
        arrayList.add(new hp("files-path", "tt_internal_file_download", "Download"));
        arrayList.add(new hp("cache-path", "tt_internal_cache_download", "Download"));
        return arrayList;
    }

    private static List<String> l() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(g.f31159a);
        arrayList.add(g.f31160b);
        arrayList.add(g.f31162d);
        arrayList.add("android.permission.READ_PHONE_STATE");
        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
        arrayList.add(g.f31166h);
        arrayList.add(g.f31165g);
        return arrayList;
    }

    private static String hp(Context context) {
        try {
            return com.byazt.ymw.sz.l(context);
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static List<hp> hp(Context context, int i2) {
        XmlResourceParser xml;
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            xml = context.getResources().getXml(i2);
        } catch (Throwable unused) {
            xml = null;
        }
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    int attributeCount = xml.getAttributeCount();
                    String attributeValue = null;
                    String attributeValue2 = null;
                    for (int i3 = 0; i3 < attributeCount; i3++) {
                        String attributeName = xml.getAttributeName(i3);
                        if (attributeName.equals("name")) {
                            attributeValue = xml.getAttributeValue(i3);
                        } else if (attributeName.equals("path")) {
                            attributeValue2 = xml.getAttributeValue(i3);
                        }
                    }
                    if (!TextUtils.isEmpty(name) && !TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(attributeValue2)) {
                        arrayList.add(new hp(name, attributeValue, attributeValue2));
                    }
                }
            }
            xml.close();
            return arrayList;
        } catch (Throwable unused2) {
            if (xml != null) {
                xml.close();
            }
            return null;
        }
    }
}
