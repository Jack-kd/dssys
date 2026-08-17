package com.anythink.core.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    public static final String f7145b = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ=";

    /* renamed from: c, reason: collision with root package name */
    public static final String f7146c = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ=";

    /* renamed from: d, reason: collision with root package name */
    public static final String f7147d = "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT";

    /* renamed from: e, reason: collision with root package name */
    public static final String f7148e = "Y29udGVudDovL2NvbS54aWFvbWkubWFya2V0LnByb3ZpZGVyLkRpcmVjdE1haWxQcm92aWRlcg==";

    /* renamed from: f, reason: collision with root package name */
    private static final String f7149f = "code";

    /* renamed from: g, reason: collision with root package name */
    private static final String f7150g = "packageName";

    /* renamed from: j, reason: collision with root package name */
    private static volatile String f7151j;

    /* renamed from: n, reason: collision with root package name */
    private static volatile o f7152n;

    /* renamed from: a, reason: collision with root package name */
    BroadcastReceiver f7153a;

    /* renamed from: h, reason: collision with root package name */
    private CopyOnWriteArrayList<com.anythink.core.common.h.w> f7154h = new CopyOnWriteArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f7155i = new AtomicBoolean(false);

    /* renamed from: k, reason: collision with root package name */
    private volatile Boolean f7156k;

    /* renamed from: l, reason: collision with root package name */
    private com.anythink.core.common.h.w f7157l;

    /* renamed from: m, reason: collision with root package name */
    private Context f7158m;

    /* renamed from: com.anythink.core.common.o$1, reason: invalid class name */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        private com.anythink.core.common.h.w a(String str) {
            if (o.this.f7157l != null && TextUtils.equals(o.this.f7157l.t(), str)) {
                return o.this.f7157l;
            }
            if (o.this.f7154h == null || o.this.f7154h.size() <= 0) {
                return null;
            }
            Iterator it = o.this.f7154h.iterator();
            while (it.hasNext()) {
                com.anythink.core.common.h.w wVar = (com.anythink.core.common.h.w) it.next();
                if (wVar != null && TextUtils.equals(wVar.t(), str)) {
                    return wVar;
                }
            }
            return null;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Bundle extras;
            com.anythink.core.common.h.w wVar;
            String action = intent.getAction();
            if (TextUtils.isEmpty(action) || action.equals(com.anythink.core.common.v.j.b(o.f7145b)) || action.equals(com.anythink.core.common.v.j.b(o.f7146c)) || !action.equals(com.anythink.core.common.v.j.b(o.f7147d)) || (extras = intent.getExtras()) == null) {
                return;
            }
            int i2 = extras.getInt("code", -1);
            String string = extras.getString(o.f7150g, "");
            if (i2 == -1 || TextUtils.isEmpty(string)) {
                return;
            }
            if (o.this.f7157l != null && TextUtils.equals(o.this.f7157l.t(), string)) {
                wVar = o.this.f7157l;
            } else if (o.this.f7154h == null || o.this.f7154h.size() <= 0) {
                wVar = null;
            } else {
                Iterator it = o.this.f7154h.iterator();
                while (it.hasNext()) {
                    com.anythink.core.common.h.w wVar2 = (com.anythink.core.common.h.w) it.next();
                    if (wVar2 != null && TextUtils.equals(wVar2.t(), string)) {
                        wVar = wVar2;
                        break;
                    }
                }
                wVar = null;
            }
            if (wVar == null) {
                return;
            }
            if (i2 == 4) {
                o.this.a(wVar);
            }
            com.anythink.core.common.u.f.a(wVar.f(), wVar.i(), "", i2, "", wVar.M(), wVar.N());
        }
    }

    private o() {
    }

    private com.anythink.core.common.h.w d() {
        return this.f7157l;
    }

    private void e() {
        if (this.f7156k == null || !this.f7156k.booleanValue() || this.f7158m == null) {
            return;
        }
        try {
            this.f7153a = new AnonymousClass1();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(com.anythink.core.common.v.j.b(f7145b));
            intentFilter.addAction(com.anythink.core.common.v.j.b(f7146c));
            intentFilter.addAction(com.anythink.core.common.v.j.b(f7147d));
            this.f7158m.registerReceiver(this.f7153a, intentFilter);
        } catch (Throwable unused) {
        }
    }

    private static Boolean f() {
        Cursor cursorQuery;
        Context contextG = com.anythink.core.common.d.s.b().g();
        Boolean boolValueOf = null;
        if (contextG != null && contextG.getContentResolver() != null) {
            try {
                cursorQuery = contextG.getContentResolver().query(Uri.parse(com.anythink.core.common.v.j.b(f7148e)), null, null, null, null);
            } catch (Throwable unused) {
                cursorQuery = null;
            }
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("support"));
                        if (!TextUtils.isEmpty(string) && !string.equalsIgnoreCase("null") && (string.equalsIgnoreCase("false") || string.equalsIgnoreCase("true"))) {
                            boolValueOf = Boolean.valueOf(Boolean.parseBoolean(string));
                        }
                    } catch (Throwable unused2) {
                    }
                    try {
                        f7151j = cursorQuery.getString(cursorQuery.getColumnIndex("detailStyle"));
                    } catch (Exception unused3) {
                    }
                }
                try {
                    cursorQuery.close();
                } catch (Throwable unused4) {
                }
            }
        }
        return boolValueOf;
    }

    public final int c() {
        if (this.f7156k != null) {
            return this.f7156k.booleanValue() ? 1 : 0;
        }
        return -1;
    }

    public static o a() {
        if (f7152n == null) {
            synchronized (o.class) {
                try {
                    if (f7152n == null) {
                        f7152n = new o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7152n;
    }

    private void b(com.anythink.core.common.h.w wVar) {
        if (this.f7156k == null || wVar == null || !this.f7156k.booleanValue()) {
            return;
        }
        this.f7157l = wVar;
        this.f7154h.add(wVar);
    }

    private void b(Context context) {
        BroadcastReceiver broadcastReceiver = this.f7153a;
        if (broadcastReceiver == null || context == null) {
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (Throwable unused) {
        }
        this.f7157l = null;
        this.f7154h.clear();
        this.f7154h = null;
        this.f7153a = null;
        this.f7158m = null;
    }

    public final void a(com.anythink.core.common.h.w wVar) {
        if (this.f7156k == null || wVar == null || !this.f7156k.booleanValue()) {
            return;
        }
        this.f7157l = null;
        try {
            this.f7154h.remove(wVar);
        } catch (Exception unused) {
        }
    }

    public final void a(Context context) {
        this.f7158m = context;
        if (this.f7155i.compareAndSet(false, true)) {
            try {
                this.f7156k = f();
                if (this.f7156k == null || !this.f7156k.booleanValue() || this.f7158m == null) {
                    return;
                }
                this.f7153a = new AnonymousClass1();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(com.anythink.core.common.v.j.b(f7145b));
                intentFilter.addAction(com.anythink.core.common.v.j.b(f7146c));
                intentFilter.addAction(com.anythink.core.common.v.j.b(f7147d));
                this.f7158m.registerReceiver(this.f7153a, intentFilter);
            } catch (Throwable unused) {
            }
        }
    }

    public static String b() {
        try {
            return f7151j == null ? "" : String.format("[%s]", f7151j);
        } catch (Throwable unused) {
            return "";
        }
    }
}
