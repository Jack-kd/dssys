package com.anythink.core.common.s;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.t;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7661a;

    /* renamed from: b, reason: collision with root package name */
    private final String f7662b;

    /* renamed from: c, reason: collision with root package name */
    private final int f7663c;

    /* renamed from: d, reason: collision with root package name */
    private final int f7664d;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f7665a;

        /* renamed from: b, reason: collision with root package name */
        private String f7666b;

        /* renamed from: c, reason: collision with root package name */
        private int f7667c;

        /* renamed from: d, reason: collision with root package name */
        private int f7668d;

        public final a a(Context context) {
            this.f7665a = context;
            return this;
        }

        public final a b(int i2) {
            this.f7668d = i2;
            return this;
        }

        private void b() {
            if (TextUtils.isEmpty(this.f7666b) || !this.f7666b.equalsIgnoreCase(t.b.f3063f)) {
                return;
            }
            this.f7667c = 0;
        }

        public final a a(String str) {
            this.f7666b = str;
            return this;
        }

        public final a a(int i2) {
            this.f7667c = i2;
            return this;
        }

        public final c a() {
            if (!TextUtils.isEmpty(this.f7666b) && this.f7666b.equalsIgnoreCase(t.b.f3063f)) {
                this.f7667c = 0;
            }
            return new c(this.f7665a, this.f7666b, this.f7667c, this.f7668d, (byte) 0);
        }
    }

    public /* synthetic */ c(Context context, String str, int i2, int i3, byte b3) {
        this(context, str, i2, i3);
    }

    public final Context a() {
        return this.f7661a;
    }

    public final String b() {
        return this.f7662b;
    }

    public final int c() {
        return this.f7663c;
    }

    public final int d() {
        return this.f7664d;
    }

    private c(Context context, String str, int i2, int i3) {
        this.f7661a = context;
        this.f7662b = str;
        this.f7663c = i2;
        this.f7664d = i3;
    }
}
