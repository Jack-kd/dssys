package androidx.work.impl.background.systemalarm;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelayMetCommandHandler f1128b;

    public /* synthetic */ a(DelayMetCommandHandler delayMetCommandHandler) {
        this.f1128b = delayMetCommandHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1128b.stopWork();
    }
}
