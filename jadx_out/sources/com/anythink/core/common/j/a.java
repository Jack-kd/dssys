package com.anythink.core.common.j;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATGDPRAuthCallback;
import com.anythink.core.api.ATGDPRConsentDismissListener;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.NetTrafficeCallback;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.u;
import com.anythink.core.common.j.d;
import com.anythink.core.common.j.d.AnonymousClass3;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: i, reason: collision with root package name */
    private static final String f5285i = "anythink_ump";

    /* renamed from: j, reason: collision with root package name */
    private static volatile a f5286j;

    /* renamed from: k, reason: collision with root package name */
    private Map<Integer, c> f5295k;

    /* renamed from: l, reason: collision with root package name */
    private Map<Integer, c> f5296l;

    /* renamed from: q, reason: collision with root package name */
    private List<Integer> f5301q;

    /* renamed from: a, reason: collision with root package name */
    final int f5287a = -1;

    /* renamed from: b, reason: collision with root package name */
    final int f5288b = 100;

    /* renamed from: c, reason: collision with root package name */
    final int f5289c = 101;

    /* renamed from: d, reason: collision with root package name */
    final int f5290d = 102;

    /* renamed from: e, reason: collision with root package name */
    final int f5291e = 103;

    /* renamed from: f, reason: collision with root package name */
    final int f5292f = 104;

    /* renamed from: g, reason: collision with root package name */
    final int f5293g = 105;

    /* renamed from: h, reason: collision with root package name */
    final int f5294h = 106;

    /* renamed from: n, reason: collision with root package name */
    private String f5298n = "";

    /* renamed from: o, reason: collision with root package name */
    private String f5299o = "";

    /* renamed from: p, reason: collision with root package name */
    private String f5300p = "";

    /* renamed from: m, reason: collision with root package name */
    private boolean f5297m = false;

    /* renamed from: com.anythink.core.common.j.a$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f5302a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ATGDPRConsentDismissListener f5303b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Activity f5304c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f5305d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f5306e;

        private AnonymousClass1(Context context, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, Activity activity, boolean z2, String str) {
            this.f5302a = context;
            this.f5303b = aTGDPRConsentDismissListener;
            this.f5304c = activity;
            this.f5305d = z2;
            this.f5306e = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int iE = u.a(this.f5302a).e();
            if (iE == -100 || iE == 1) {
                u.a(this.f5302a).a(new u.a() { // from class: com.anythink.core.common.j.a.1.1
                    @Override // com.anythink.core.common.d.u.a
                    public final void a(boolean z2, boolean z3) {
                        a.b("checkIsEuTraffic:onResultCallback:" + z2 + ":" + z3);
                        if (!z3) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            a.a(a.this, anonymousClass1.f5302a, anonymousClass1.f5304c, anonymousClass1.f5305d, anonymousClass1.f5303b);
                        } else if (z2) {
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            a.a(a.this, anonymousClass12.f5302a, anonymousClass12.f5304c, anonymousClass12.f5305d, anonymousClass12.f5303b);
                        } else {
                            AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                            a.this.a(anonymousClass13.f5303b, "", 102);
                        }
                    }

                    @Override // com.anythink.core.api.NetTrafficeCallback
                    public final void onErrorCallback(String str) {
                        a.b("checkIsEuTraffic:onErrorCallback:".concat(String.valueOf(str)));
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        a.a(a.this, anonymousClass1.f5302a, anonymousClass1.f5304c, anonymousClass1.f5305d, anonymousClass1.f5303b);
                    }

                    @Override // com.anythink.core.api.NetTrafficeCallback
                    public final void onResultCallback(boolean z2) {
                        a.b("checkIsEuTraffic:onResultCallback:".concat(String.valueOf(z2)));
                    }
                }, this.f5306e);
            } else {
                a.a(a.this, this.f5302a, this.f5304c, this.f5305d, this.f5303b);
            }
        }
    }

    /* renamed from: com.anythink.core.common.j.a$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f5312a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ATGDPRConsentDismissListener f5313b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Activity f5314c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f5315d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f5316e;

        private AnonymousClass3(Context context, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, Activity activity, boolean z2, String str) {
            this.f5312a = context;
            this.f5313b = aTGDPRConsentDismissListener;
            this.f5314c = activity;
            this.f5315d = z2;
            this.f5316e = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int iE = u.a(this.f5312a).e();
            if (iE == -100 || iE == 1) {
                u.a(this.f5312a).a(new u.a() { // from class: com.anythink.core.common.j.a.3.1
                    @Override // com.anythink.core.common.d.u.a
                    public final void a(boolean z2, boolean z3) {
                        a.b("checkIsEuTraffic:onResultCallback:" + z2 + ":" + z3);
                        if (!z3) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            a.a(a.this, anonymousClass3.f5312a, anonymousClass3.f5314c, anonymousClass3.f5315d, anonymousClass3.f5313b, anonymousClass3.f5316e);
                        } else if (z2) {
                            AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                            a.a(a.this, anonymousClass32.f5312a, anonymousClass32.f5314c, anonymousClass32.f5315d, anonymousClass32.f5313b, anonymousClass32.f5316e);
                        } else {
                            AnonymousClass3 anonymousClass33 = AnonymousClass3.this;
                            a.this.a(anonymousClass33.f5313b, "", 102);
                        }
                    }

                    @Override // com.anythink.core.api.NetTrafficeCallback
                    public final void onErrorCallback(String str) {
                        a.b("checkIsEuTraffic:onErrorCallback:".concat(String.valueOf(str)));
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        a.a(a.this, anonymousClass3.f5312a, anonymousClass3.f5314c, anonymousClass3.f5315d, anonymousClass3.f5313b, anonymousClass3.f5316e);
                    }

                    @Override // com.anythink.core.api.NetTrafficeCallback
                    public final void onResultCallback(boolean z2) {
                        a.b("checkIsEuTraffic:onResultCallback:".concat(String.valueOf(z2)));
                    }
                }, this.f5316e);
            } else {
                a.a(a.this, this.f5312a, this.f5314c, this.f5315d, this.f5313b, this.f5316e);
            }
        }
    }

    /* renamed from: com.anythink.core.common.j.a$4, reason: invalid class name */
    public class AnonymousClass4 implements d.a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(boolean z2) {
            a.b("(UMP Update)UMP onConsentSuccess isRealTimeDialogDismiss:".concat(String.valueOf(z2)));
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(String str) {
            a.b("(UMP Update)UMP onConsentFail:".concat(String.valueOf(str)));
        }
    }

    private a() {
        HashMap map = new HashMap();
        this.f5295k = map;
        map.put(2, new c(2, 755, 1));
        this.f5295k.put(33, new c(33, 755, 1));
        this.f5295k.put(6, new c(6, 867, 1));
        this.f5295k.put(3, new c(3, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 1));
        this.f5295k.put(37, new c(37, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 1));
        this.f5295k.put(13, new c(13, 667, 1));
        this.f5295k.put(36, new c(36, 31, 1));
        this.f5295k.put(58, new c(58, 512, 1));
        this.f5295k.put(75, new c(75, 793, 1));
        this.f5295k.put(1, new c(1, 89, 2));
        this.f5295k.put(12, new c(12, 3234, 2));
        this.f5295k.put(5, new c(5, 1301, 2));
        this.f5295k.put(9, new c(9, 2898, 2));
        this.f5295k.put(11, new c(11, 2878, 2));
        this.f5295k.put(59, new c(59, 16831, 2));
        this.f5295k.put(45, new c(45, 3183, 2));
        this.f5295k.put(25, new c(25, 2312, 2));
        this.f5296l = new HashMap();
        this.f5301q = new ArrayList();
    }

    public final void b(ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
        s.b();
        a(aTGDPRConsentDismissListener, "is cn sdk!", -1);
    }

    public final String c() {
        return this.f5298n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) {
        String strA = b.a(context).a();
        if (TextUtils.isEmpty(strA) || strA.contains("1")) {
            u.a(context).a(0);
        } else {
            u.a(context).a(1);
        }
    }

    private synchronized void b(Context context) {
        boolean zA;
        try {
            if (TextUtils.isEmpty(this.f5298n)) {
                this.f5298n = b.a(context).b();
                this.f5300p = b.a(context).d();
                this.f5299o = b.a(context).c();
            }
            b("IABTCF_TCString:" + this.f5298n);
            b("IABTCF_VendorConsents:" + this.f5300p);
            b("IABTCF_AddtlConsent:" + this.f5299o);
            if (TextUtils.isEmpty(this.f5298n)) {
                this.f5297m = true;
                return;
            }
            this.f5297m = false;
            this.f5296l.clear();
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(this.f5299o)) {
                try {
                    String[] strArrSplit = this.f5299o.split("~");
                    if (strArrSplit.length >= 2) {
                        for (String str : strArrSplit[1].split("\\.")) {
                            arrayList.add(Integer.valueOf(Integer.parseInt(str)));
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            for (Map.Entry<Integer, c> entry : this.f5295k.entrySet()) {
                Integer key = entry.getKey();
                c value = entry.getValue();
                int iC = value.c();
                if (iC == 1) {
                    zA = a(this.f5300p, value.b());
                } else if (iC == 2) {
                    zA = arrayList.size() == 0 ? false : arrayList.contains(Integer.valueOf(value.b()));
                } else {
                    this.f5296l.put(key, value);
                    b("initNetworkConsentMap " + value.a() + ":" + value.d());
                }
                value.a(zA);
                this.f5296l.put(key, value);
                b("initNetworkConsentMap " + value.a() + ":" + value.d());
            }
            c(context);
            StringBuilder sb = new StringBuilder("initNetworkConsentMap others:");
            sb.append(u.a(context).a() == 0);
            b(sb.toString());
            this.f5297m = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: com.anythink.core.common.j.a$2, reason: invalid class name */
    public class AnonymousClass2 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f5309a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ATGDPRConsentDismissListener f5310b;

        public AnonymousClass2(Context context, ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
            this.f5309a = context;
            this.f5310b = aTGDPRConsentDismissListener;
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(boolean z2) {
            if (s.b().G()) {
                a.b("UMP onConsentSuccess isRealTimeDialogDismiss:".concat(String.valueOf(z2)));
            }
            if (z2) {
                a.c(this.f5309a);
            }
            a.this.a(this.f5310b, "", z2 ? 105 : 103);
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(String str) {
            if (s.b().G()) {
                a.b("UMP onConsentFail:".concat(String.valueOf(str)));
            }
            if (!d.a(this.f5309a).b()) {
                a.this.a(this.f5310b, str, -1);
            } else {
                a.b("UMP canRequestAd:true after onConsentFail");
                a.this.a(this.f5310b, "", 106);
            }
        }
    }

    /* renamed from: com.anythink.core.common.j.a$5, reason: invalid class name */
    public class AnonymousClass5 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f5320a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ATGDPRConsentDismissListener f5321b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f5322c;

        public AnonymousClass5(Context context, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
            this.f5320a = context;
            this.f5321b = aTGDPRConsentDismissListener;
            this.f5322c = str;
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(boolean z2) {
            if (s.b().G()) {
                a.b("UMP onConsentSuccess isRealTimeDialogDismiss:".concat(String.valueOf(z2)));
            }
            if (z2) {
                a.c(this.f5320a);
            }
            a.this.a(this.f5321b, "", z2 ? 105 : 103);
        }

        @Override // com.anythink.core.common.j.d.a
        public final void a(String str) {
            if (s.b().G()) {
                a.b("UMP onConsentFail:".concat(String.valueOf(str)));
            }
            if (d.a(this.f5320a).b()) {
                a.b("UMP canRequestAd:true after onConsentFail");
                a.this.a(this.f5321b, "", 106);
            } else {
                a.this.a(this.f5320a, this.f5321b, this.f5322c);
            }
        }
    }

    public static a a() {
        if (f5286j == null) {
            synchronized (a.class) {
                try {
                    if (f5286j == null) {
                        f5286j = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5286j;
    }

    public final void a(ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
        s.b();
        a(aTGDPRConsentDismissListener, "is cn sdk!", -1);
    }

    private void a(Context context, Activity activity, boolean z2, ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
        if (z2) {
            d dVarA = d.a(context);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(context, aTGDPRConsentDismissListener);
            try {
                if (dVarA.a()) {
                    s.b();
                    s.b(dVarA.new AnonymousClass3(activity, anonymousClass2));
                } else {
                    anonymousClass2.a("isPrivacyOptionsRequired is not.");
                }
            } catch (Throwable th) {
                anonymousClass2.a("secondAdsConsent:" + th.getMessage());
            }
            if (d.a(context).b()) {
                b("UMP canRequestAd:true");
                a(aTGDPRConsentDismissListener, "", 104);
                return;
            }
            return;
        }
        a(aTGDPRConsentDismissListener, "ump sdk not exist", -1);
    }

    private void a(Context context, Activity activity, boolean z2, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
        if (!TextUtils.isEmpty(b.a(context).b())) {
            if (z2) {
                d.a(context).a(activity, new AnonymousClass4());
            }
            a(aTGDPRConsentDismissListener, "", 101);
        } else {
            if (z2) {
                d.a(context).a(activity, new AnonymousClass5(context, aTGDPRConsentDismissListener, str));
                if (d.a(context).b()) {
                    b("UMP canRequestAd:true");
                    a(aTGDPRConsentDismissListener, "", 104);
                    return;
                }
                return;
            }
            a(context, aTGDPRConsentDismissListener, str);
        }
    }

    public final void a(final Context context, final ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
        if (u.a(context).a() != 2) {
            a(aTGDPRConsentDismissListener, "", 101);
        } else {
            ATSDK.checkIsEuTraffic(context, new NetTrafficeCallback() { // from class: com.anythink.core.common.j.a.6
                @Override // com.anythink.core.api.NetTrafficeCallback
                public final void onErrorCallback(String str2) {
                    a.this.a(aTGDPRConsentDismissListener, str2, -1);
                }

                @Override // com.anythink.core.api.NetTrafficeCallback
                public final void onResultCallback(boolean z2) {
                    if (z2) {
                        u.a(context).a(context, new ATGDPRAuthCallback() { // from class: com.anythink.core.common.j.a.6.1
                            @Override // com.anythink.core.api.ATGDPRAuthCallback
                            public final void onAuthResult(int i2) {
                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                a.this.a(aTGDPRConsentDismissListener, "", 100);
                            }

                            @Override // com.anythink.core.api.ATGDPRAuthCallback
                            public final void onPageLoadFail() {
                                AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                a.this.a(aTGDPRConsentDismissListener, "showUploadDataNotifyDialog onPageLoadFail", -1);
                            }
                        });
                    } else {
                        a.this.a(aTGDPRConsentDismissListener, "", 102);
                    }
                }
            }, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ATGDPRConsentDismissListener aTGDPRConsentDismissListener, final String str, final int i2) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.core.common.j.a.7
            @Override // java.lang.Runnable
            public final void run() {
                if (aTGDPRConsentDismissListener == null || a.this.f5301q.contains(Integer.valueOf(aTGDPRConsentDismissListener.hashCode()))) {
                    return;
                }
                a.this.f5301q.add(Integer.valueOf(aTGDPRConsentDismissListener.hashCode()));
                aTGDPRConsentDismissListener.onDismiss(new ATGDPRConsentDismissListener.ConsentDismissInfo(str, i2));
            }
        });
    }

    public final synchronized boolean a(Context context, int i2) {
        c cVar;
        if (this.f5296l.size() > 0 && (cVar = this.f5296l.get(Integer.valueOf(i2))) != null) {
            return cVar.d();
        }
        return u.a(context).c();
    }

    public final synchronized boolean b() {
        return this.f5297m;
    }

    private static boolean a(String str, int i2) {
        if (!TextUtils.isEmpty(str) && i2 > 0) {
            try {
                if (str.length() >= i2) {
                    if (str.charAt(i2 - 1) == '1') {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str) {
        ATSDK.isNetworkLogDebug();
    }

    private static boolean a(List<Integer> list, int i2) {
        if (list.size() == 0) {
            return false;
        }
        return list.contains(Integer.valueOf(i2));
    }

    public final synchronized JSONObject a(JSONObject jSONObject) {
        if (!b() && TextUtils.isEmpty(this.f5298n)) {
            this.f5298n = b.a(s.b().g()).b();
            this.f5300p = b.a(s.b().g()).d();
            this.f5299o = b.a(s.b().g()).c();
        }
        try {
            if (!TextUtils.isEmpty(this.f5298n)) {
                jSONObject.put("tc_string", this.f5298n);
            }
            if (!TextUtils.isEmpty(this.f5299o)) {
                jSONObject.put("addtl_consent", this.f5299o);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static /* synthetic */ void a(a aVar, Context context, Activity activity, boolean z2, ATGDPRConsentDismissListener aTGDPRConsentDismissListener) {
        if (z2) {
            d dVarA = d.a(context);
            AnonymousClass2 anonymousClass2 = aVar.new AnonymousClass2(context, aTGDPRConsentDismissListener);
            try {
                if (dVarA.a()) {
                    s.b();
                    s.b(dVarA.new AnonymousClass3(activity, anonymousClass2));
                } else {
                    anonymousClass2.a("isPrivacyOptionsRequired is not.");
                }
            } catch (Throwable th) {
                anonymousClass2.a("secondAdsConsent:" + th.getMessage());
            }
            if (d.a(context).b()) {
                b("UMP canRequestAd:true");
                aVar.a(aTGDPRConsentDismissListener, "", 104);
                return;
            }
            return;
        }
        aVar.a(aTGDPRConsentDismissListener, "ump sdk not exist", -1);
    }

    public static /* synthetic */ void a(a aVar, Context context, Activity activity, boolean z2, ATGDPRConsentDismissListener aTGDPRConsentDismissListener, String str) {
        if (!TextUtils.isEmpty(b.a(context).b())) {
            if (z2) {
                d.a(context).a(activity, aVar.new AnonymousClass4());
            }
            aVar.a(aTGDPRConsentDismissListener, "", 101);
        } else {
            if (z2) {
                d.a(context).a(activity, aVar.new AnonymousClass5(context, aTGDPRConsentDismissListener, str));
                if (d.a(context).b()) {
                    b("UMP canRequestAd:true");
                    aVar.a(aTGDPRConsentDismissListener, "", 104);
                    return;
                }
                return;
            }
            aVar.a(context, aTGDPRConsentDismissListener, str);
        }
    }
}
