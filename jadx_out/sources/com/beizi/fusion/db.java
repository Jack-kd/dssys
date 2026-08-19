package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class db implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    protected final String f13420a;

    /* renamed from: b, reason: collision with root package name */
    protected final Context f13421b;

    public class a extends b1 {
        public a() {
        }

        @Override // com.beizi.fusion.ua
        public void a(pc pcVar) {
        }

        @Override // com.beizi.fusion.b1
        public void a(ta taVar) {
            if (taVar == null || TextUtils.isEmpty(taVar.b())) {
                return;
            }
            db.this.a(taVar.b());
        }
    }

    public db(Context context, String str) {
        this.f13421b = context.getApplicationContext();
        this.f13420a = str;
    }

    public abstract void a(String str);

    @Override // java.lang.Runnable
    public void run() {
        C1150v c1150vA = ((C1135g) C1136h.a().b(this.f13421b)).a();
        if (c1150vA != null) {
            ((w9) o0.a().b(this.f13421b)).a(this.f13420a + "?id=" + g3.b(c1150vA.e()), new a());
        }
    }
}
