package com.ubix.ssp.ad.e.b0.h.s;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes5.dex */
public abstract class e implements com.ubix.ssp.ad.e.b0.h.s.a {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f46753a = Executors.newSingleThreadExecutor(new a());

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.PingThread");
        }
    }

    public class b implements Callable<Void> {

        /* renamed from: a, reason: collision with root package name */
        private final File f46755a;

        public b(File file) {
            this.f46755a = file;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws IOException {
            e.this.b(this.f46755a);
            return null;
        }
    }

    private long a(List<File> list) {
        Iterator<File> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        d.e(file);
        b(d.a(file.getParentFile()));
    }

    public abstract boolean a(File file, long j2, int i2);

    private void b(List<File> list) {
        long jA = a(list);
        int size = list.size();
        for (File file : list) {
            if (!a(file, jA, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jA -= length;
                }
            }
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.s.a
    public void a(File file) {
        this.f46753a.submit(new b(file));
    }
}
