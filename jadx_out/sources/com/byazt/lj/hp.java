package com.byazt.lj;

import com.byazt.uid.a;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.ymw.s;
import com.byazt.ymw.u;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

@com.byazt.kj.hp(hp = {0, 1, 1763, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    @com.byazt.kj.hp(hp = {0, 1, 1763, 170})
    /* renamed from: com.byazt.lj.hp$hp, reason: collision with other inner class name */
    public class CallableC0307hp implements Callable<Void> {

        /* renamed from: l, reason: collision with root package name */
        public final File f22621l;

        private CallableC0307hp(File file) {
            this.f22621l = file;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            hp.this.l(this.f22621l);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(File file) throws IOException {
        try {
            s.l(file);
        } catch (Throwable unused) {
        }
        List<File> listHp = s.hp(file.getParentFile());
        u.l("splashLoadAd", "LruDiskFile touchInBackground files.size() " + listHp.size());
        hp(listHp);
    }

    public abstract void hp(List<File> list);

    public abstract boolean hp(long j2, int i2);

    public abstract boolean hp(File file, long j2, int i2);

    public void hp(File file) throws IOException {
        final a aVar = new a(new CallableC0307hp(file), 1, 2);
        w.l(new eb("touch", aVar.hp()) { // from class: com.byazt.lj.hp.1
            @Override // java.lang.Runnable
            public void run() {
                aVar.run();
            }
        });
    }

    public long l(List<File> list) {
        Iterator<File> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }
}
