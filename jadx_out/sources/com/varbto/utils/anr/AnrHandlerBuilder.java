package com.varbto.utils.anr;

import android.content.Context;
import k1.o;
import k1.r;

/* loaded from: classes5.dex */
public class AnrHandlerBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final Context f50566a;

    /* renamed from: b, reason: collision with root package name */
    public r f50567b;

    /* renamed from: c, reason: collision with root package name */
    public AnrRecorder f50568c;

    /* renamed from: d, reason: collision with root package name */
    public long f50569d = 5000;

    /* renamed from: e, reason: collision with root package name */
    public boolean f50570e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f50571f;

    public AnrHandlerBuilder(Context context) {
        this.f50566a = context;
    }

    public AnrHandler build() {
        if (this.f50567b == null) {
            this.f50567b = new o();
        }
        if (this.f50568c == null) {
            this.f50568c = new LoggingAnrRecorder(this.f50566a, this.f50571f);
        }
        AnrHandler anrHandler = new AnrHandler(this.f50566a, this.f50567b, this.f50568c, this.f50569d, this.f50571f);
        if (this.f50570e) {
            anrHandler.startMonitoring();
        }
        return anrHandler;
    }

    public AnrHandlerBuilder setAnrRecorder(AnrRecorder anrRecorder) {
        this.f50568c = anrRecorder;
        return this;
    }

    public AnrHandlerBuilder setAnrStaceSwitch(boolean z2) {
        this.f50571f = z2;
        return this;
    }

    public AnrHandlerBuilder setCheckIntervalMs(long j2) {
        this.f50569d = j2;
        return this;
    }

    public AnrHandlerBuilder setErrorService(r rVar) {
        this.f50567b = rVar;
        return this;
    }

    public AnrHandlerBuilder setStartImmediately(boolean z2) {
        this.f50570e = z2;
        return this;
    }
}
