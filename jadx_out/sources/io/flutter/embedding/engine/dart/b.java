package io.flutter.embedding.engine.dart;

import io.flutter.embedding.engine.dart.DartMessenger;

/* loaded from: classes5.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DartMessenger.SerialTaskQueue f50841b;

    public /* synthetic */ b(DartMessenger.SerialTaskQueue serialTaskQueue) {
        this.f50841b = serialTaskQueue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f50841b.flush();
    }
}
