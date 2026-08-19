package com.sigmob.sdk.downloader.core.listener;

import com.sigmob.sdk.downloader.core.listener.assist.a;

/* loaded from: classes4.dex */
public abstract class c extends a {

    /* renamed from: com.sigmob.sdk.downloader.core.listener.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37629a;

        static {
            int[] iArr = new int[com.sigmob.sdk.downloader.core.cause.a.values().length];
            f37629a = iArr;
            try {
                iArr[com.sigmob.sdk.downloader.core.cause.a.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37629a[com.sigmob.sdk.downloader.core.cause.a.CANCELED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37629a[com.sigmob.sdk.downloader.core.cause.a.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37629a[com.sigmob.sdk.downloader.core.cause.a.PRE_ALLOCATE_FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37629a[com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37629a[com.sigmob.sdk.downloader.core.cause.a.SAME_TASK_BUSY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public abstract void a(com.sigmob.sdk.downloader.f fVar);

    @Override // com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, a.b bVar) {
        switch (AnonymousClass1.f37629a[aVar.ordinal()]) {
            case 1:
                a(fVar);
                break;
            case 2:
                c(fVar);
                break;
            case 3:
            case 4:
                a(fVar, exc);
                break;
            case 5:
            case 6:
                d(fVar);
                break;
            default:
                com.sigmob.sdk.downloader.core.c.a("DownloadListener3", "Don't support " + aVar);
                break;
        }
    }

    public abstract void a(com.sigmob.sdk.downloader.f fVar, Exception exc);

    public abstract void b(com.sigmob.sdk.downloader.f fVar);

    public abstract void c(com.sigmob.sdk.downloader.f fVar);

    public abstract void d(com.sigmob.sdk.downloader.f fVar);

    @Override // com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
    public final void a(com.sigmob.sdk.downloader.f fVar, a.b bVar) {
        b(fVar);
    }
}
