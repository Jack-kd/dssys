package com.sigmob.sdk.mraid2;

import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid2.q, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1339q {

    /* renamed from: a, reason: collision with root package name */
    private final String f38208a;

    /* renamed from: b, reason: collision with root package name */
    private final int f38209b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f38210c;

    /* renamed from: d, reason: collision with root package name */
    private final C1326d f38211d;

    /* renamed from: e, reason: collision with root package name */
    private Timer f38212e = null;

    /* renamed from: f, reason: collision with root package name */
    private TimerTask f38213f = null;

    /* renamed from: com.sigmob.sdk.mraid2.q$1, reason: invalid class name */
    public class AnonymousClass1 extends TimerTask {
        public AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (C1339q.this.f38211d == null) {
                return;
            }
            C1339q.this.f38211d.a().post(new Runnable() { // from class: com.sigmob.sdk.mraid2.N
                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    this.f38105b.a();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() throws JSONException {
            C1339q.this.f38211d.e(C1339q.this.f38208a);
        }
    }

    public C1339q(C1326d c1326d, JSONObject jSONObject) {
        this.f38211d = c1326d;
        this.f38209b = jSONObject.optInt("interval");
        this.f38210c = jSONObject.optBoolean("repeats");
        this.f38208a = jSONObject.optString("uniqueId");
    }

    private void d() {
        this.f38212e = new Timer();
        this.f38213f = new AnonymousClass1();
    }

    public void c() {
        TimerTask timerTask = this.f38213f;
        if (timerTask != null) {
            timerTask.cancel();
            this.f38213f = null;
        }
        Timer timer = this.f38212e;
        if (timer != null) {
            timer.cancel();
            this.f38212e.purge();
            this.f38212e = null;
        }
    }

    public void a() {
        c();
    }

    public void b() {
        try {
            c();
            d();
            int i2 = this.f38209b;
            if (i2 > 0) {
                if (this.f38210c) {
                    this.f38212e.schedule(this.f38213f, i2, i2);
                } else {
                    this.f38212e.schedule(this.f38213f, i2);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
