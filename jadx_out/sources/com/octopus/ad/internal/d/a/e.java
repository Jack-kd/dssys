package com.octopus.ad.internal.d.a;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes4.dex */
abstract class e implements com.octopus.ad.internal.d.a.a {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f34650a = Executors.newSingleThreadExecutor();

    public class a implements Callable<Void> {

        /* renamed from: b, reason: collision with root package name */
        private final File f34652b;

        public a(File file) {
            this.f34652b = file;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            e.this.b(this.f34652b);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        d.c(file);
        a(d.b(file.getParentFile()));
    }

    public abstract boolean a(File file, long j2, int i2);

    @Override // com.octopus.ad.internal.d.a.a
    public void a(File file) throws IOException {
        this.f34650a.submit(new a(file));
    }

    private void a(List<File> list) {
        long jB = b(list);
        int size = list.size();
        for (File file : list) {
            if (!a(file, jB, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jB -= length;
                    com.octopus.ad.internal.c.f.c(com.octopus.ad.internal.c.f.f34580p, "Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34580p, "Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }

    private long b(List<File> list) {
        Iterator<File> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }
}
