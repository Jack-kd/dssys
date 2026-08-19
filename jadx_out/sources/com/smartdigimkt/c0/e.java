package com.smartdigimkt.c0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.v.o;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.smartdigimkt.c5.w;
import com.smartdigimkt.m3.q;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.i;
import com.smartdigimkt.z.j;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f39625a = 0;

    public static q a(Context context, String str, com.smartdigimkt.m3.c cVar) {
        q qVar = new q();
        qVar.f42142c = !str.startsWith("http");
        qVar.f42143d = str;
        boolean z2 = false;
        qVar.f42144e = false;
        if (a(str, cVar != null ? cVar.f41832w : null)) {
            qVar.f42144e = true;
            return qVar;
        }
        String str2 = cVar != null ? cVar.f41813d0 : "";
        if (c(str)) {
            qVar.f42143d = str;
            SDKContext.getInstance().getClass();
            com.smartdigimkt.z.g gVar = new com.smartdigimkt.z.g();
            gVar.f45290a = str;
            gVar.f45291b = false;
            gVar.f45292c = str2;
            gVar.f45294e = cVar != null && cVar.i();
            if (a(context, new com.smartdigimkt.z.h(gVar))) {
                qVar.f42141b = true;
                qVar.f42140a = 4;
                return qVar;
            }
            com.smartdigimkt.z.g gVar2 = new com.smartdigimkt.z.g();
            gVar2.f45290a = str;
            gVar2.f45291b = false;
            gVar2.f45292c = str2;
            if (cVar != null && cVar.i()) {
                z2 = true;
            }
            gVar2.f45294e = z2;
            if (a(context, new com.smartdigimkt.z.h(gVar2))) {
                qVar.f42141b = true;
                qVar.f42140a = 4;
                return qVar;
            }
        } else if (!str.startsWith("http")) {
            qVar.f42143d = str;
            com.smartdigimkt.z.g gVar3 = new com.smartdigimkt.z.g();
            gVar3.f45290a = str;
            gVar3.f45291b = false;
            gVar3.f45292c = str2;
            if (cVar != null && cVar.i()) {
                z2 = true;
            }
            gVar3.f45294e = z2;
            if (a(context, new com.smartdigimkt.z.h(gVar3))) {
                qVar.f42141b = true;
                qVar.f42140a = 5;
                return qVar;
            }
        } else if (b(str)) {
            String strA = a(str);
            qVar.f42142c = true;
            qVar.f42143d = strA;
            com.smartdigimkt.z.g gVar4 = new com.smartdigimkt.z.g();
            gVar4.f45290a = strA;
            gVar4.f45291b = true;
            gVar4.f45292c = str2;
            gVar4.f45294e = cVar != null && cVar.i();
            if (a(context, new com.smartdigimkt.z.h(gVar4))) {
                qVar.f42141b = true;
                qVar.f42140a = 1;
                return qVar;
            }
            com.smartdigimkt.z.g gVar5 = new com.smartdigimkt.z.g();
            gVar5.f45290a = strA;
            gVar5.f45291b = false;
            gVar5.f45292c = str2;
            if (cVar != null && cVar.i()) {
                z2 = true;
            }
            gVar5.f45294e = z2;
            if (a(context, new com.smartdigimkt.z.h(gVar5))) {
                qVar.f42141b = true;
                qVar.f42140a = 2;
            }
        }
        return qVar;
    }

    public static boolean b(String str) {
        Uri uri;
        try {
            if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && uri.getHost() != null) {
                if (uri.getHost().equals(com.anythink.core.basead.a.e.f1616a)) {
                    return true;
                }
                return uri.getHost().equals(com.anythink.core.basead.a.e.f1617b);
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return Uri.parse(str).getScheme().equals("market");
        } catch (Throwable unused) {
            return false;
        }
    }

    public static q d(String str) {
        q qVar = new q();
        qVar.f42140a = 8;
        qVar.f42142c = false;
        qVar.f42141b = true;
        qVar.f42143d = str;
        try {
            if (Uri.parse(str).getScheme().equals("intent")) {
                Intent uri = Intent.parseUri(str, 1);
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                uri.setSelector(null);
                String stringExtra = uri.getStringExtra("browser_fallback_url");
                if (!TextUtils.isEmpty(stringExtra) && stringExtra.startsWith("http")) {
                    qVar.f42140a = 10;
                    qVar.f42143d = stringExtra;
                    return qVar;
                }
            }
        } catch (Throwable unused) {
        }
        if (c(str)) {
            try {
                str = "https://play.google.com/store/apps/details?id=" + str.replace(BaseConstants.MARKET_PREFIX, "");
            } catch (Throwable unused2) {
            }
            qVar.f42140a = 9;
            qVar.f42143d = str;
        }
        return qVar;
    }

    public static j b(Context context, com.smartdigimkt.z.h hVar) throws JSONException {
        String strA;
        Intent uri;
        ResolveInfo resolveInfoResolveActivity;
        Intent intentCreateChooser;
        String strA2 = "";
        int i2 = 1;
        try {
            Uri uri2 = Uri.parse(hVar.f45297a);
            strA = hVar.f45300d;
            if (uri2.getScheme().equals("intent")) {
                uri = Intent.parseUri(hVar.f45297a, 1);
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                uri.setSelector(null);
            } else if (uri2.getScheme().equals("android-app")) {
                uri = Intent.parseUri(hVar.f45297a, 2);
                uri.setComponent(null);
                uri.setSelector(null);
            } else {
                Intent intent = new Intent("android.intent.action.VIEW", uri2);
                intent.setData(uri2);
                uri = intent;
            }
            if (TextUtils.isEmpty(uri.getPackage())) {
                if (hVar.f45298b) {
                    strA2 = o.a.f8258a;
                    uri.setPackage(o.a.f8258a);
                } else if (c(hVar.f45297a)) {
                    strA2 = a(context, uri, hVar.f45299c);
                    if (!TextUtils.isEmpty(strA2)) {
                        uri.setPackage(strA2);
                    }
                }
            }
            uri.addFlags(C.ENCODING_PCM_MU_LAW);
            resolveInfoResolveActivity = context.getPackageManager().resolveActivity(uri, 65536);
            String strP = com.smartdigimkt.c5.h.p(context);
            if (!TextUtils.isEmpty(strP)) {
                uri.putExtra("android.intent.extra.REFERRER", Uri.parse("android-app://" + strP));
                uri.putExtra("android.intent.extra.REFERRER_NAME", "android-app://" + strP);
            }
        } catch (Throwable unused) {
            Objects.toString(null);
            if (0 != 0) {
                i2 = 3;
            }
        }
        if (hVar.f45301e) {
            if (!b.a("oppo") && !b.a("oneplus") && !b.a("realme")) {
                if (b.a("honor")) {
                    if (TextUtils.isEmpty(strA)) {
                        strA = a(context, uri);
                    }
                    if (!TextUtils.isEmpty(strA)) {
                        String str = hVar.f45297a;
                        String str2 = a.f39614a;
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(a.f39615b, str);
                        jSONObject.put(a.f39616c, strA);
                        if (a.a(context, jSONObject.toString())) {
                            i iVar = new i();
                            iVar.f45305a = 0;
                            iVar.f45306b = strA2;
                            return new j(iVar);
                        }
                    }
                    uri.addFlags(C.ENCODING_PCM_MU_LAW);
                } else {
                    String str3 = a.f39614a;
                    uri.setFlags(805339136);
                    intentCreateChooser = Intent.createChooser(uri, "chooser");
                    uri = intentCreateChooser;
                    uri.addFlags(C.ENCODING_PCM_MU_LAW);
                }
            } else {
                String str4 = a.f39614a;
                try {
                    Method method = uri.getClass().getMethod(a.f39614a, Integer.class);
                    if (!method.isAccessible()) {
                        method.setAccessible(true);
                    }
                    method.invoke(uri, 131072);
                    uri.addFlags(C.ENCODING_PCM_MU_LAW);
                } catch (Throwable unused2) {
                    uri.setFlags(805339136);
                    intentCreateChooser = Intent.createChooser(uri, "chooser");
                }
                uri.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            i iVar2 = new i();
            iVar2.f45305a = i2;
            iVar2.f45306b = strA2;
            return new j(iVar2);
        }
        if (resolveInfoResolveActivity != null) {
            context.startActivity(uri);
            i2 = 0;
        }
        i iVar22 = new i();
        iVar22.f45305a = i2;
        iVar22.f45306b = strA2;
        return new j(iVar22);
    }

    public static j a(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str) {
        int i2;
        if (a(str, aVar != null ? aVar.f41644r : null)) {
            com.smartdigimkt.y3.h.a(1, 0, aVar, cVar, "", false);
            if (cVar != null && TextUtils.isEmpty(cVar.f41821l)) {
                com.smartdigimkt.y3.h.a(2, aVar, cVar);
            }
            i iVar = new i();
            iVar.f45305a = 4;
            return new j(iVar);
        }
        String str2 = "";
        String str3 = cVar != null ? cVar.f41813d0 : "";
        if (cVar != null && ((i2 = cVar.f41824o) == 2 || i2 == 3)) {
            if (!TextUtils.isEmpty(cVar.f41822m)) {
                str2 = cVar.f41822m;
            } else {
                str2 = cVar.f41794O;
            }
        }
        j jVarA = a(context, str, str3, str2, cVar != null && cVar.i());
        if (jVarA.f45307a != 0 && cVar != null && TextUtils.isEmpty(cVar.f41821l)) {
            com.smartdigimkt.y3.h.a(1, aVar, cVar);
        }
        return jVarA;
    }

    public static boolean a(String str, com.smartdigimkt.m3.e eVar) {
        List list;
        if (!TextUtils.isEmpty(str) && eVar != null && (list = eVar.f41971s1) != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                String str2 = (String) list.get(i2);
                if (!TextUtils.isEmpty(str2)) {
                    if (str.startsWith(str2)) {
                        String str3 = "needFilterDeeplinkByScheme url:" + str + ",and scheme:" + str2;
                        ThreadPoolExecutor threadPoolExecutor = w.f39821a;
                        if (SDMSDK.getInstance().isNetworkLogDebug()) {
                            w.a(0, "sdm_".concat("OfferUrlHandler"), str3);
                        }
                        return true;
                    }
                    if (str.startsWith("intent://")) {
                        try {
                            String scheme = Intent.parseUri(str, 1).getScheme();
                            if (TextUtils.isEmpty(scheme)) {
                                continue;
                            } else {
                                if ((scheme + "://").startsWith(str2)) {
                                    String str4 = "needFilterDeeplinkByScheme [Intent Wrapped] url:" + str + ", matched detectScheme:" + str2;
                                    ThreadPoolExecutor threadPoolExecutor2 = w.f39821a;
                                    if (SDMSDK.getInstance().isNetworkLogDebug()) {
                                        w.a(0, "sdm_".concat("OfferUrlHandler"), str4);
                                    }
                                    return true;
                                }
                                continue;
                            }
                        } catch (Throwable unused) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return false;
    }

    public static j a(Context context, String str, String str2, String str3, boolean z2) {
        if (b(str)) {
            String strA = a(str);
            com.smartdigimkt.z.g gVar = new com.smartdigimkt.z.g();
            gVar.f45290a = strA;
            gVar.f45291b = true;
            gVar.f45292c = str2;
            gVar.f45293d = str3;
            gVar.f45294e = z2;
            return b(context, new com.smartdigimkt.z.h(gVar));
        }
        String scheme = Uri.parse(str).getScheme();
        if (scheme != null && !scheme.startsWith("http")) {
            SDKContext.getInstance().getClass();
            com.smartdigimkt.z.g gVar2 = new com.smartdigimkt.z.g();
            gVar2.f45290a = str;
            gVar2.f45291b = false;
            gVar2.f45292c = str2;
            gVar2.f45293d = str3;
            gVar2.f45294e = z2;
            return b(context, new com.smartdigimkt.z.h(gVar2));
        }
        i iVar = new i();
        iVar.f45305a = 2;
        return new j(iVar);
    }

    public static String a(String str) {
        try {
            return com.anythink.core.basead.a.e.f1620e + str.substring(str.indexOf(com.anythink.core.basead.a.e.f1618c));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a(Context context, com.smartdigimkt.z.h hVar) {
        return b(context, hVar).f45307a == 0;
    }

    public static boolean a(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(launchIntentForPackage);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a(Context context, Intent intent, String str) {
        if (context == null) {
            return "";
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA.f39371f || aVarA.f39376h0 == 1) {
            return "";
        }
        if (TextUtils.isEmpty(str)) {
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            if (bVarE != null) {
                str = bVarE.getDefaultMarketSchemePackageName();
            } else {
                SDKContext.getInstance().getClass();
            }
        }
        List listA = com.smartdigimkt.d5.e.a(context, intent);
        if (listA == null || listA.size() <= 1) {
            return "";
        }
        String str2 = ((ResolveInfo) listA.get(0)).activityInfo.packageName;
        for (int i2 = 0; i2 < listA.size(); i2++) {
            String str3 = ((ResolveInfo) listA.get(i2)).activityInfo.packageName;
            if (TextUtils.equals(str, ((ResolveInfo) listA.get(i2)).activityInfo.packageName)) {
                return str;
            }
        }
        return str2;
    }

    public static String a(Context context, Intent intent) {
        List listA;
        if (context == null) {
            return "";
        }
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA.f39371f || aVarA.f39376h0 == 1 || (listA = com.smartdigimkt.d5.e.a(context, intent)) == null || listA.size() <= 0) {
            return "";
        }
        for (int i2 = 0; i2 < listA.size(); i2++) {
            String str = ((ResolveInfo) listA.get(i2)).activityInfo.packageName;
            if (!TextUtils.isEmpty(((ResolveInfo) listA.get(i2)).activityInfo.packageName)) {
                return ((ResolveInfo) listA.get(i2)).activityInfo.packageName;
            }
        }
        return "";
    }
}
