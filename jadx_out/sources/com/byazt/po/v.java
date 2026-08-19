package com.byazt.po;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.ec;
import com.byazt.b.n;
import com.byazt.b.vv;
import com.byazt.fn.hq;
import com.byazt.fu.DownloadInfo;
import com.byazt.ip.IDownloadHttpService;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.m.hp;
import com.byazt.po.jx;
import com.byazt.po.k;
import com.byazt.v.hp;
import com.byazt.v.l;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.DownloaderBuilder;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.zn.ky;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 212, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public static Context f24476a;
    public static Map<Integer, jx.hp> eb;
    public static volatile String hp;
    public static com.byazt.po.j jx;

    /* renamed from: q, reason: collision with root package name */
    public static final com.byazt.x.hp f24479q;

    /* renamed from: s, reason: collision with root package name */
    public static com.byazt.gu.l f24480s;

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicBoolean f24477j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static final AtomicBoolean f24481w = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    public static boolean f24478l = true;

    @com.byazt.kj.hp(hp = {0, 1, 212, 2153})
    public static class a implements IDownloadHttpService {
        @Override // com.byazt.ip.IDownloadHttpService
        public com.byazt.ip.q downloadWithConnection(int i2, String str, List<com.byazt.fu.jx> list) throws IOException {
            final k.hp hpVarHp = k.hp(str, list);
            if (hpVarHp != null) {
                return new com.byazt.ip.q() { // from class: com.byazt.po.v.a.1
                    @Override // com.byazt.ip.q
                    public InputStream hp() {
                        return hpVarHp.hp;
                    }

                    @Override // com.byazt.ip.q
                    public void j() {
                        try {
                            hpVarHp.f24464j.disconnect();
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.byazt.ip.eb
                    public void jx() {
                    }

                    @Override // com.byazt.ip.eb
                    public int l() {
                        return hpVarHp.jx;
                    }

                    @Override // com.byazt.ip.eb
                    public String hp(String str2) {
                        Map<String, String> map = hpVarHp.f24465l;
                        if (map != null) {
                            return map.get(str2);
                        }
                        return null;
                    }
                };
            }
            return null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 212, 2154})
    public static class j implements com.byazt.b.q {
        @Override // com.byazt.b.q
        public void hp(Activity activity, int i2, String[] strArr, int[] iArr) {
        }

        @Override // com.byazt.b.q
        public void hp(Activity activity, String[] strArr, final n nVar) {
            if (v.eb() != null) {
                v.eb().hp(activity, strArr, new com.byazt.po.a() { // from class: com.byazt.po.v.j.1
                    @Override // com.byazt.po.a
                    public void hp() {
                        n nVar2 = nVar;
                        if (nVar2 != null) {
                            nVar2.hp();
                        }
                    }

                    @Override // com.byazt.po.a
                    public void hp(String str) {
                        n nVar2 = nVar;
                        if (nVar2 != null) {
                            nVar2.hp(str);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.b.q
        public boolean hp(Context context, String str) {
            if (v.eb() != null) {
                return v.eb().hp(context, str);
            }
            return false;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 212, 2156})
    public static class l implements com.byazt.b.eb {
        private void jx(com.byazt.v.jx jxVar) {
            if (jxVar == null) {
                return;
            }
            Object objJl = jxVar.jl();
            s sVarL = s.hp().hp(jxVar.l()).l(jxVar.s()).hp(objJl instanceof JSONObject ? (JSONObject) objJl : null).l(jxVar.jx());
            boolean z2 = "download_notification".equals(jxVar.l()) || "landing_h5_download_ad_button".equals(jxVar.l());
            if (v.eb() != null) {
                v.eb().hp(sVarL, z2);
            }
        }

        @Override // com.byazt.b.eb
        public void hp(com.byazt.v.jx jxVar) throws JSONException {
            hp(jxVar, true);
        }

        @Override // com.byazt.b.eb
        public void l(com.byazt.v.jx jxVar) throws JSONException {
            hp(jxVar, false);
            jx(jxVar);
        }

        private void hp(com.byazt.v.jx jxVar, boolean z2) throws JSONException {
            eb ebVarL;
            if (v.eb() == null || (ebVarL = v.eb().l()) == null || jxVar == null) {
                return;
            }
            if (ebVarL.hp() && v.eb().hp(jxVar.toString())) {
                return;
            }
            if (z2) {
                v.l(jxVar);
            } else {
                v.l(jxVar);
            }
        }
    }

    static {
        try {
            hp = com.byazt.ymw.eb.hp(getContext(), Environment.DIRECTORY_DOWNLOADS, false, null).getPath();
        } catch (Throwable unused) {
        }
        f24479q = new com.byazt.x.hp() { // from class: com.byazt.po.v.2
            @Override // com.byazt.x.hp
            public void hp(DownloadInfo downloadInfo, String str) {
                v.jx(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.po.j eb() {
        if (jx == null) {
            jx = zy.j();
        }
        return jx;
    }

    private static Context getContext() {
        Context context = f24476a;
        return context == null ? sz.getContext() : context;
    }

    public static Map<Integer, jx.hp> j() {
        return eb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(String str) {
        com.byazt.zv.l lVarHp;
        JSONObject jSONObjectEb;
        if (TextUtils.isEmpty(str) || (lVarHp = com.byazt.w.a.hp().hp(str)) == null || (jSONObjectEb = lVarHp.eb()) == null || eb() == null) {
            return;
        }
        eb().hp(jSONObjectEb, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject q() throws JSONException {
        try {
            com.byazt.po.j jVarEb = eb();
            if (jVarEb != null) {
                JSONObject jSONObjectHp = jVarEb.hp();
                if (jSONObjectHp.optInt("enable_app_install_receiver", 1) == 0) {
                    jSONObjectHp.put("enable_app_install_receiver", 0);
                }
                return jSONObjectHp;
            }
        } catch (Exception unused) {
        }
        return new JSONObject();
    }

    private static boolean s() {
        return UMModuleRegister.INNER.equals(d.f21859s);
    }

    @com.byazt.kj.hp(hp = {0, 1, 212, 709})
    public static class hp implements com.byazt.b.e {
        private hp() {
        }

        @Override // com.byazt.b.e
        public boolean hp(DownloadModel downloadModel, DownloadInfo downloadInfo) {
            com.byazt.po.j jVarEb = v.eb();
            if (jVarEb != null) {
                return jVarEb.hp(downloadModel, downloadInfo);
            }
            return false;
        }

        @Override // com.byazt.b.e
        public boolean l(DownloadModel downloadModel, DownloadInfo downloadInfo) {
            com.byazt.po.j jVarEb = v.eb();
            if (jVarEb != null) {
                return jVarEb.l(downloadModel, downloadInfo);
            }
            return false;
        }

        @Override // com.byazt.b.e
        public boolean hp(DownloadModel downloadModel) {
            com.byazt.po.j jVarEb = v.eb();
            if (jVarEb != null) {
                return jVarEb.hp(downloadModel);
            }
            return false;
        }
    }

    public static com.byazt.l.e l() {
        hp(getContext());
        return com.byazt.l.e.hp(getContext());
    }

    @com.byazt.kj.hp(hp = {0, 1, 212, 696})
    public static class jx implements com.byazt.b.s {
        private jx() {
        }

        @Override // com.byazt.b.s
        public void hp(String str, String str2, Map<String, Object> map, final ec ecVar) {
            str.getClass();
            int i2 = 0;
            if (!str.equals("GET") && str.equals("POST")) {
                i2 = 1;
            }
            if (v.eb() != null) {
                v.eb().hp(i2, str2, map, new com.byazt.po.w() { // from class: com.byazt.po.v.jx.1
                    @Override // com.byazt.po.w
                    public void hp(String str3) {
                        ec ecVar2 = ecVar;
                        if (ecVar2 != null) {
                            ecVar2.hp(str3);
                        }
                    }

                    @Override // com.byazt.po.w
                    public void hp(Throwable th) {
                        ec ecVar2 = ecVar;
                        if (ecVar2 != null) {
                            ecVar2.hp(th);
                        }
                    }
                });
            }
        }

        @Override // com.byazt.b.s
        public void hp(String str, byte[] bArr, String str2, int i2, final ec ecVar) {
            if (v.eb() != null) {
                v.eb().hp(str, bArr, str2, new com.byazt.po.w() { // from class: com.byazt.po.v.jx.2
                    @Override // com.byazt.po.w
                    public void hp(String str3) {
                        ec ecVar2 = ecVar;
                        if (ecVar2 != null) {
                            ecVar2.hp(str3);
                        }
                    }

                    @Override // com.byazt.po.w
                    public void hp(Throwable th) {
                        ec ecVar2 = ecVar;
                        if (ecVar2 != null) {
                            ecVar2.hp(th);
                        }
                    }
                });
            }
        }
    }

    public static void hp(com.byazt.gu.l lVar) {
        f24480s = lVar;
    }

    @com.byazt.kj.hp(hp = {0, 1, 212, 2160})
    public static class w implements com.byazt.b.zy {
        public final WeakReference<Context> hp;

        public w(Context context) {
            this.hp = new WeakReference<>(context);
        }

        private com.byazt.po.hp jx(final com.byazt.v.l lVar) {
            return com.byazt.po.hp.hp().hp(lVar.f26533l).l(lVar.jx).j(lVar.f26536w).jx(lVar.f26532j).hp(lVar.eb).hp(new com.byazt.po.l() { // from class: com.byazt.po.v.w.2
                @Override // com.byazt.po.l
                public void hp(DialogInterface dialogInterface) {
                    l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                    if (interfaceC0391l != null) {
                        interfaceC0391l.hp(dialogInterface);
                    }
                }

                @Override // com.byazt.po.l
                public void jx(DialogInterface dialogInterface) {
                    l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                    if (interfaceC0391l != null) {
                        interfaceC0391l.jx(dialogInterface);
                    }
                }

                @Override // com.byazt.po.l
                public void l(DialogInterface dialogInterface) {
                    l.InterfaceC0391l interfaceC0391l = lVar.f26535s;
                    if (interfaceC0391l != null) {
                        try {
                            interfaceC0391l.l(dialogInterface);
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }

        @Override // com.byazt.b.zy
        public void hp(int i2, final Context context, DownloadModel downloadModel, final String str, Drawable drawable, int i3) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                com.byazt.dnb.s.hp((Runnable) new com.byazt.uid.eb("tt_download_toast") { // from class: com.byazt.po.v.w.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(context, str, 0).show();
                    }
                });
            } catch (Exception e2) {
                com.byazt.ymw.u.l("LibUIFactory", "showToastWithDuration e " + e2.getMessage());
            }
        }

        @Override // com.byazt.b.zy
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public AlertDialog l(com.byazt.v.l lVar) {
            if (lVar != null && v.eb() != null) {
                Context context = lVar.hp;
                if (context != null && (context instanceof Activity)) {
                    return v.eb().hp((Activity) lVar.hp, lVar.f26531e == 1, jx(lVar));
                }
                v.eb().hp(this.hp, lVar.f26531e == 1, jx(lVar));
            }
            return null;
        }
    }

    public static com.byazt.gu.l hp() {
        return f24480s;
    }

    private static boolean l(final Context context) {
        com.byazt.ec.hp hpVarHp;
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            packageName = "";
        }
        if (s()) {
            try {
                hpVarHp = com.byazt.l.e.hp(applicationContext).hp(AdBaseConstants.DownloadConfigureName.PANGOLIN);
            } catch (Throwable unused) {
            }
        } else {
            hpVarHp = com.byazt.l.e.hp(applicationContext).hp();
        }
        if (hpVarHp == null) {
            return false;
        }
        hpVarHp.hp(new j()).hp(new l()).hp(new w(applicationContext)).hp(new jx()).hp(new com.byazt.f.eb() { // from class: com.byazt.po.v.9
            @Override // com.byazt.f.eb
            public Uri hp(int i2, String str, String str2) {
                return u.instance(context).hp(str, str2);
            }
        }).hp(new com.byazt.f.jx() { // from class: com.byazt.po.v.8
            @Override // com.byazt.f.jx
            public Map<String, Object> hp(Object obj) {
                return u.instance(context).hp(obj);
            }
        }).hp(new com.byazt.b.gu() { // from class: com.byazt.po.v.7
            @Override // com.byazt.b.gu
            public JSONObject hp() {
                return v.q();
            }
        }).hp(new hp()).hp(new com.byazt.b.l() { // from class: com.byazt.po.v.6
            @Override // com.byazt.b.l
            public boolean hp() {
                if (v.eb() != null) {
                    return v.eb().jx();
                }
                return false;
            }
        }).hp(new hp.C0390hp().l("143").hp("open_news").jx(d.f21860w).j(String.valueOf(d.f21856j)).hp()).hp(new vv() { // from class: com.byazt.po.v.5
            @Override // com.byazt.b.vv
            public byte[] hp(byte[] bArr, int i2) {
                return new byte[0];
            }
        }).hp(packageName + ".TTFileProvider").hp(new com.byazt.b.sz() { // from class: com.byazt.po.v.4
            @Override // com.byazt.b.sz
            public void hp(@Nullable Context context2, @Nullable DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, @Nullable String str, int i2) {
                v.l(downloadModel);
            }
        }).hp(new com.byazt.b.jx() { // from class: com.byazt.po.v.1
            @Override // com.byazt.b.jx
            public void hp(@Nullable Context context2, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, @NonNull String str2) {
                v.l(downloadModel);
            }
        }).hp(hp(applicationContext, q())).hp();
        com.byazt.y.hp.hp();
        if (!d.f21859s.equals(UMModuleRegister.INNER)) {
            com.byazt.l.e.hp(applicationContext).j().hp(1);
            com.byazt.l.e.hp(applicationContext).hp(f24479q);
            com.byazt.ni.j.gu().hp(new hq() { // from class: com.byazt.po.v.10
                @Override // com.byazt.fn.hq
                public boolean hp(Intent intent) {
                    return false;
                }
            });
        }
        return true;
    }

    public static void hp(Context context) {
        if (context == null) {
            context = sz.getContext();
        }
        if (context == null) {
            return;
        }
        String strL = com.byazt.ymw.sz.l(context);
        if (strL != null && strL.contains(":downloader") && d.f21856j >= 7000) {
            com.byazt.yk.jx.hp(new a());
        }
        AtomicBoolean atomicBoolean = f24477j;
        if (!atomicBoolean.get()) {
            synchronized (v.class) {
                try {
                    if (!atomicBoolean.get()) {
                        f24476a = context.getApplicationContext();
                        if (eb() != null) {
                            String strHp = eb().hp(f24478l);
                            if (!TextUtils.isEmpty(strHp)) {
                                hp = strHp;
                            }
                        }
                        atomicBoolean.set(l(f24476a));
                    }
                } finally {
                }
            }
        }
        if (atomicBoolean.get()) {
            AtomicBoolean atomicBoolean2 = f24481w;
            if (atomicBoolean2.compareAndSet(false, true)) {
                if ((eb() != null ? eb().l() : null) == null) {
                    atomicBoolean2.set(false);
                }
            }
        }
    }

    public static void jx() {
        l().eb();
        if (eb() != null) {
            eb().l(hp);
        }
    }

    public static void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hp = str;
    }

    public static boolean hp(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return l().w().hp(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener);
    }

    public static boolean hp(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return l().w().hp(context, uri, downloadModel, downloadEventConfig, downloadController);
    }

    public static boolean hp(Uri uri) {
        return com.byazt.j.e.hp(uri);
    }

    public static void hp(int i2) {
        Map<Integer, jx.hp> map = eb;
        if (map != null) {
            map.remove(Integer.valueOf(i2));
        }
    }

    public static void hp(int i2, jx.hp hpVar) {
        if (hpVar != null) {
            if (eb == null) {
                eb = Collections.synchronizedMap(new WeakHashMap());
            }
            eb.put(Integer.valueOf(i2), hpVar);
        }
    }

    public static boolean hp(String str, String str2, JSONObject jSONObject, Object obj) {
        Map<Integer, jx.hp> mapJ;
        String str3;
        String str4;
        Object obj2;
        boolean z2 = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && jSONObject != null && (mapJ = j()) != null) {
            for (Map.Entry<Integer, jx.hp> entry : mapJ.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                jx.hp value = entry.getValue();
                if (value != null) {
                    str3 = str;
                    str4 = str2;
                    obj2 = obj;
                    boolean zHp = value.hp(iIntValue, jSONObject.toString(), str3, str4, obj2);
                    if (!z2 && !zHp) {
                        z2 = true;
                    }
                } else {
                    str3 = str;
                    str4 = str2;
                    obj2 = obj;
                }
                str = str3;
                str2 = str4;
                obj = obj2;
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(DownloadModel downloadModel) {
        JSONObject extra;
        JSONObject jSONObjectOptJSONObject;
        if (downloadModel == null || (extra = downloadModel.getExtra()) == null || (jSONObjectOptJSONObject = extra.optJSONObject("open_ad_sdk_download_extra")) == null) {
            return;
        }
        String strOptString = jSONObjectOptJSONObject.optString("material_meta");
        String strOptString2 = jSONObjectOptJSONObject.optString("tag");
        if (!TextUtils.isEmpty(strOptString) && strOptString.contains("self_reward_callback") && com.byazt.y.zy.hp(downloadModel)) {
            com.byazt.jz.l.hp().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.jz.l.hp().put("save_jump_success_ad_tag", strOptString2);
            com.byazt.jz.l.hp().put("save_download_open_app_success_meta", strOptString);
        }
    }

    private static DownloaderBuilder hp(Context context, JSONObject jSONObject) {
        return new DownloaderBuilder(context).downloadSetting(new com.byazt.fn.d() { // from class: com.byazt.po.v.11
            @Override // com.byazt.fn.d
            public JSONObject hp() {
                return v.q();
            }
        }).httpService(new a());
    }

    public static boolean hp(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            List<DownloadInfo> listL = com.byazt.ni.j.gu().l(context);
            if (!listL.isEmpty()) {
                for (DownloadInfo downloadInfo : listL) {
                    if (downloadInfo != null && str.equals(downloadInfo.getUrl())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject l(com.byazt.v.jx jxVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PointParamKey.CATEGORY, jxVar.hp());
            jSONObject.put("tag", jxVar.l());
            jSONObject.put("label", jxVar.jx());
            jSONObject.put("isAd", jxVar.j());
            jSONObject.put("adId", jxVar.w());
            jSONObject.put("logExtra", jxVar.a());
            jSONObject.put("extValue", jxVar.eb());
            jSONObject.put("extJson", jxVar.s());
            jSONObject.put("paramsJson", jxVar.q());
            jSONObject.put("eventSource", jxVar.gu());
            jSONObject.put("extraObject", jxVar.jl());
            jSONObject.put("clickTrackUrl", jxVar.e());
            jSONObject.put("isV3", jxVar.zy());
            jSONObject.put("V3EventName", jxVar.k());
            jSONObject.put("V3EventParams", jxVar.v());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static Bundle hp(com.byazt.hy.hp hpVar, int i2) {
        String str;
        boolean z2;
        String str2;
        Bundle bundle = new Bundle();
        try {
            if (i2 == 101) {
                boolean zL = ky.l(hpVar.jx());
                String str3 = zL ? "open" : "install";
                if (zL) {
                    com.byazt.w.eb ebVarHp = com.byazt.y.q.hp(hpVar.jx());
                    str2 = ebVarHp.getType() + "_" + ebVarHp.hp() + "_" + ebVarHp.l();
                    bundle.putString("msg", "open ".concat(String.valueOf(str2)));
                    z2 = true;
                } else {
                    boolean zHp = com.byazt.ni.j.hp(f24476a, hpVar.j());
                    if (!zHp) {
                        str = "cache install";
                        zHp = com.byazt.ni.j.hp(f24476a, hp(hpVar.e(), hpVar.q()));
                    } else {
                        str = "mem install";
                    }
                    String str4 = str;
                    z2 = zHp;
                    str2 = str4;
                    bundle.putString("msg", "install ".concat(String.valueOf(z2)));
                }
                com.byazt.ff.w.hp(hpVar.eb(), hpVar, str3, "media_install", str2, z2 ? cb.f11292o : "failure");
                return bundle;
            }
            bundle.putString("msg", "event_type:" + i2 + " not support");
            com.byazt.ff.w.hp(hpVar.eb(), hpVar, "notSupport_".concat(String.valueOf(i2)), "media_install", "error", "failure");
            return bundle;
        } catch (Exception e2) {
            bundle.putString("msg", e2.getMessage());
            return bundle;
        }
    }

    private static int hp(String str, String str2) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return 0;
        }
        String strW = com.byazt.xq.a.w(String.format("%s_%s", str, str2));
        if (TextUtils.isEmpty(strW)) {
            return 0;
        }
        return strW.hashCode();
    }

    public static boolean hp(Activity activity, final com.byazt.gu.hp hpVar) {
        return com.byazt.m.hp.hp().hp(activity, false, new hp.InterfaceC0308hp() { // from class: com.byazt.po.v.3
            @Override // com.byazt.m.hp.InterfaceC0308hp
            public void hp() {
                com.byazt.gu.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
            }
        });
    }
}
