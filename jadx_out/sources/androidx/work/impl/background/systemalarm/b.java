package androidx.work.impl.background.systemalarm;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DelayMetCommandHandler f1129b;

    public /* synthetic */ b(DelayMetCommandHandler delayMetCommandHandler) {
        this.f1129b = delayMetCommandHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1129b.startWork();
    }
}
