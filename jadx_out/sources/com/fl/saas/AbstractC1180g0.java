package com.fl.saas;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.fl.saas.g0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1180g0 implements D {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f30392a = Executors.newSingleThreadExecutor();

    /* renamed from: com.fl.saas.g0$a */
    public class a implements Callable {

        /* renamed from: a, reason: collision with root package name */
        private final File f30393a;

        public a(File file) {
            this.f30393a = file;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws IOException {
            AbstractC1180g0.this.b(this.f30393a);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        O.e(file);
        b(O.a(file.getParentFile()));
    }

    public abstract boolean a(File file, long j2, int i2);

    private long a(List list) {
        Iterator it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += ((File) it.next()).length();
        }
        return length;
    }

    private void b(List list) {
        long jA = a(list);
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (!a(file, jA, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jA -= length;
                }
            }
        }
    }

    @Override // com.fl.saas.D
    public void a(File file) {
        this.f30392a.submit(new a(file));
    }
}
