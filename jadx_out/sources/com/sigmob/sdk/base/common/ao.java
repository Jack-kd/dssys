package com.sigmob.sdk.base.common;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ap;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.windad.WindAds;
import java.util.EnumSet;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    private static final b f35805a = new b() { // from class: com.sigmob.sdk.base.common.ao.1
        @Override // com.sigmob.sdk.base.common.ao.b
        public void a(String str, an anVar) {
        }

        @Override // com.sigmob.sdk.base.common.ao.b
        public void b(String str, an anVar) {
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private static final c f35806b = new c() { // from class: com.sigmob.sdk.base.common.ao.2
        @Override // com.sigmob.sdk.base.common.ao.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.ao.c
        public void b() {
        }

        @Override // com.sigmob.sdk.base.common.ao.c
        public void c() {
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private final EnumSet<an> f35807c;

    /* renamed from: d, reason: collision with root package name */
    private final b f35808d;

    /* renamed from: e, reason: collision with root package name */
    private final b f35809e;

    /* renamed from: f, reason: collision with root package name */
    private final c f35810f;

    /* renamed from: g, reason: collision with root package name */
    private final BaseAdUnit f35811g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f35812h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f35813i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f35814j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f35815k;

    /* renamed from: com.sigmob.sdk.base.common.ao$3, reason: invalid class name */
    public class AnonymousClass3 implements ap.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ an f35816a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f35817b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ao f35818c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Uri f35819d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f35820e;

        public AnonymousClass3(an anVar, Context context, ao aoVar, Uri uri, String str) {
            this.f35816a = anVar;
            this.f35817b = context;
            this.f35818c = aoVar;
            this.f35819d = uri;
            this.f35820e = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, an anVar) {
            try {
                ao.this.f35808d.a(str, anVar);
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(String str, an anVar) {
            try {
                ao.this.f35808d.b(str, anVar);
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(String str, an anVar) {
            try {
                ao.this.f35808d.a(str, anVar);
            } catch (Throwable unused) {
            }
        }

        @Override // com.sigmob.sdk.base.common.ap.a
        public void a(final String str) {
            final an anVar = this.f35816a;
            if (!str.toLowerCase().startsWith("http")) {
                anVar = an.FOLLOW_DEEP_LINK;
            }
            try {
                anVar.a(this.f35817b, Uri.parse(str), this.f35818c, ao.this.f35811g);
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.S
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35638b.d(str, anVar);
                    }
                });
            } catch (Exception unused) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.T
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35641b.c(str, anVar);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, an anVar) {
            try {
                ao.this.f35808d.b(str, anVar);
            } catch (Throwable unused) {
            }
        }

        @Override // com.sigmob.sdk.base.common.ap.a
        public void a(String str, Throwable th) {
            try {
                this.f35816a.a(this.f35817b, this.f35819d, this.f35818c, ao.this.f35811g);
                Handler handler = WindAds.sharedAds().getHandler();
                final String str2 = this.f35820e;
                final an anVar = this.f35816a;
                handler.post(new Runnable() { // from class: com.sigmob.sdk.base.common.P
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35629b.b(str2, anVar);
                    }
                });
            } catch (Exception unused) {
                Handler handler2 = WindAds.sharedAds().getHandler();
                final String str3 = this.f35820e;
                final an anVar2 = this.f35816a;
                handler2.post(new Runnable() { // from class: com.sigmob.sdk.base.common.Q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35633b.a(str3, anVar2);
                    }
                });
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private EnumSet<an> f35825a = EnumSet.of(an.NOOP);

        /* renamed from: b, reason: collision with root package name */
        private b f35826b = ao.f35805a;

        /* renamed from: c, reason: collision with root package name */
        private b f35827c = ao.f35805a;

        /* renamed from: d, reason: collision with root package name */
        private c f35828d = ao.f35806b;

        /* renamed from: e, reason: collision with root package name */
        private boolean f35829e = false;

        /* renamed from: f, reason: collision with root package name */
        private boolean f35830f = false;

        /* renamed from: g, reason: collision with root package name */
        private BaseAdUnit f35831g;

        public a a(an anVar, an... anVarArr) {
            this.f35825a = EnumSet.of(anVar, anVarArr);
            return this;
        }

        public a b(b bVar) {
            this.f35827c = bVar;
            return this;
        }

        public a a(b bVar) {
            this.f35826b = bVar;
            return this;
        }

        public a b(boolean z2) {
            this.f35830f = z2;
            return this;
        }

        public a a(c cVar) {
            this.f35828d = cVar;
            return this;
        }

        public a a(BaseAdUnit baseAdUnit) {
            this.f35831g = baseAdUnit;
            return this;
        }

        public a a(boolean z2) {
            this.f35829e = z2;
            return this;
        }

        public ao a() {
            return new ao(this.f35825a, this.f35826b, this.f35827c, this.f35828d, this.f35829e, this.f35831g, this.f35830f);
        }
    }

    public interface b {
        void a(String str, an anVar);

        void b(String str, an anVar);
    }

    public interface c {
        void a();

        void b();

        void c();
    }

    private ao(EnumSet<an> enumSet, b bVar, b bVar2, c cVar, boolean z2, BaseAdUnit baseAdUnit, boolean z3) {
        this.f35807c = EnumSet.copyOf((EnumSet) enumSet);
        this.f35808d = bVar;
        this.f35809e = bVar2;
        this.f35810f = cVar;
        this.f35812h = z2;
        this.f35811g = baseAdUnit;
        this.f35813i = false;
        this.f35814j = false;
        this.f35815k = z3;
    }

    public void a(Context context, String str) {
        Preconditions.NoThrow.checkNotNull(context);
        b(context, str);
    }

    private void a(String str, an anVar, String str2, Throwable th) {
        Preconditions.NoThrow.checkNotNull(str2);
        if (anVar == null) {
            anVar = an.NOOP;
        }
        SigmobLog.d(str2, th);
        this.f35808d.b(str, anVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    public boolean b(Context context, String str) {
        Context context2;
        Uri uri;
        AndroidMarket androidMarket;
        an anVar = an.NOOP;
        Iterator<an> it = this.f35807c.iterator();
        String str2 = null;
        while (it.hasNext()) {
            final an next = it.next();
            String strA = next.a(this.f35811g);
            int interactionType = this.f35811g.getInteractionType();
            if (!TextUtils.isEmpty(str) && interactionType != 7) {
                strA = str;
            }
            ao aoVarIsEmpty = TextUtils.isEmpty(strA);
            if (aoVarIsEmpty == 0) {
                final String strMacroProcess = this.f35811g.getMacroCommon().macroProcess(strA);
                try {
                    uri = Uri.parse(strMacroProcess);
                    androidMarket = this.f35811g.getAndroidMarket();
                } catch (Throwable unused) {
                    aoVarIsEmpty = this;
                    context2 = context;
                }
                if (next == an.FOLLOW_DEEP_LINK) {
                    aoVarIsEmpty = "market";
                    if (uri.getScheme().equalsIgnoreCase("market") && androidMarket != null && !TextUtils.isEmpty(androidMarket.market_url)) {
                        str2 = strMacroProcess;
                    }
                }
                if (next.a(uri, interactionType)) {
                    try {
                        if (this.f35815k || an.OPEN_WITH_BROWSER != next) {
                            ao aoVar = this;
                            context2 = context;
                            next.a(context2, uri, this, aoVar.f35811g);
                            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.ao.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    ao.this.f35808d.a(strMacroProcess, next);
                                }
                            });
                            aoVarIsEmpty = aoVar;
                        } else {
                            ao aoVar2 = this;
                            context2 = context;
                            ap.a(strMacroProcess, aoVar2.new AnonymousClass3(next, context2, this, uri, strMacroProcess));
                            aoVarIsEmpty = aoVar2;
                        }
                        return true;
                    } catch (Throwable unused2) {
                        aoVarIsEmpty.f35808d.b(strMacroProcess, next);
                        str2 = strMacroProcess;
                        context = context2;
                    }
                } else {
                    context2 = context;
                    str2 = strMacroProcess;
                }
            } else {
                context2 = context;
            }
            context = context2;
        }
        try {
            a(str2, anVar, "Link ignored. Unable to handle url: ", null);
            return false;
        } catch (Throwable th) {
            SigmobLog.e("handleResolvedUrl error", th);
            return false;
        }
    }

    public boolean a() {
        return this.f35812h;
    }
}
