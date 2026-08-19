package com.varbto.utils.crash;

import android.content.Context;

/* loaded from: classes5.dex */
public class CrashHandlerBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final Context f50596a;

    /* renamed from: b, reason: collision with root package name */
    public CrashAttributionService f50597b;

    /* renamed from: c, reason: collision with root package name */
    public CrashRecorder f50598c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f50599d = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f50600e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f50601f = false;

    public CrashHandlerBuilder(Context context) {
        this.f50596a = context.getApplicationContext();
    }

    public CrashHandler build() {
        if (!this.f50601f) {
            this.f50597b = null;
        } else if (this.f50597b == null) {
            this.f50597b = new DefaultCrashAttributionService();
        }
        if (this.f50598c == null) {
            this.f50598c = new LoggingCrashRecorder(this.f50596a, this.f50600e);
        }
        CrashHandler crashHandler = new CrashHandler(this.f50596a, this.f50597b, this.f50598c);
        if (this.f50599d) {
            crashHandler.install();
        }
        return crashHandler;
    }

    public CrashHandlerBuilder setAttributionService(CrashAttributionService crashAttributionService) {
        this.f50597b = crashAttributionService;
        return this;
    }

    public CrashHandlerBuilder setCrashRecorder(CrashRecorder crashRecorder) {
        this.f50598c = crashRecorder;
        return this;
    }

    public CrashHandlerBuilder setEnableAttribution(boolean z2) {
        this.f50601f = z2;
        return this;
    }

    public CrashHandlerBuilder setSaveStackSwitch(boolean z2) {
        this.f50600e = z2;
        return this;
    }

    public CrashHandlerBuilder setStartImmediately(boolean z2) {
        this.f50599d = z2;
        return this;
    }
}
