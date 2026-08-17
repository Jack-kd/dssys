package com.byazt.ya;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.pg.r;
import com.byazt.ym.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.ya.hp {

    /* renamed from: a, reason: collision with root package name */
    public final Set<hp> f27866a;

    /* renamed from: e, reason: collision with root package name */
    public final Runnable f27867e;
    public volatile long eb;
    public final Handler gu;
    public final File hp;

    /* renamed from: j, reason: collision with root package name */
    public final ReentrantReadWriteLock.ReadLock f27868j;
    public final ReentrantReadWriteLock jx;

    /* renamed from: l, reason: collision with root package name */
    public final LinkedHashMap<String, File> f27869l = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q, reason: collision with root package name */
    public final l f27870q;

    /* renamed from: s, reason: collision with root package name */
    public volatile float f27871s;

    /* renamed from: w, reason: collision with root package name */
    public final ReentrantReadWriteLock.WriteLock f27872w;

    public interface hp {
        void hp(String str);

        void hp(Set<String> set);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO, 224})
    public static final class l {
        public final Map<String, Integer> hp;

        private l() {
            this.hp = new HashMap();
        }

        public synchronized void hp(String str) {
            if (!TextUtils.isEmpty(str)) {
                Integer num = this.hp.get(str);
                if (num == null) {
                    this.hp.put(str, 1);
                    return;
                }
                this.hp.put(str, Integer.valueOf(num.intValue() + 1));
            }
        }

        public synchronized boolean jx(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return this.hp.containsKey(str);
        }

        public synchronized void l(String str) {
            Integer num;
            if (!TextUtils.isEmpty(str) && (num = this.hp.get(str)) != null) {
                if (num.intValue() == 1) {
                    this.hp.remove(str);
                    return;
                }
                this.hp.put(str, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public jx(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.jx = reentrantReadWriteLock;
        this.f27868j = reentrantReadWriteLock.readLock();
        this.f27872w = reentrantReadWriteLock.writeLock();
        this.f27866a = Collections.newSetFromMap(new ConcurrentHashMap());
        this.eb = 104857600L;
        this.f27871s = 0.5f;
        this.f27870q = new l();
        this.f27867e = new Runnable() { // from class: com.byazt.ya.jx.1
            @Override // java.lang.Runnable
            public void run() {
                ((r) j.getService("thread_service")).executeNormalTask(new Runnable() { // from class: com.byazt.ya.jx.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        jx jxVar = jx.this;
                        jxVar.l(jxVar.eb);
                    }
                });
            }
        };
        this.gu = new Handler(Looper.getMainLooper());
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            this.hp = file;
            ((r) j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.ya.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    jx.this.l();
                }
            });
            return;
        }
        if (file == null) {
            str = " dir null";
        } else {
            str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
        }
        throw new IOException("dir error!  ".concat(String.valueOf(str)));
    }

    private void jx() {
        this.gu.removeCallbacks(this.f27867e);
        this.gu.postDelayed(this.f27867e, 10000L);
    }

    @Override // com.byazt.ya.hp
    public File j(String str) {
        if (!this.f27868j.tryLock()) {
            return null;
        }
        File file = this.f27869l.get(str);
        this.f27868j.unlock();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.f27872w.lock();
        try {
            File[] fileArrListFiles = this.hp.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                final HashMap map = new HashMap(fileArrListFiles.length);
                ArrayList arrayList = new ArrayList(fileArrListFiles.length);
                int i2 = 0;
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        map.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>() { // from class: com.byazt.ya.jx.3
                    @Override // java.util.Comparator
                    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        long jLongValue = ((Long) map.get(file2)).longValue() - ((Long) map.get(file3)).longValue();
                        if (jLongValue < 0) {
                            return -1;
                        }
                        return jLongValue > 0 ? 1 : 0;
                    }
                });
                int size = arrayList.size();
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    File file2 = (File) obj;
                    this.f27869l.put(hp(file2), file2);
                }
            }
            this.f27872w.unlock();
            jx();
        } catch (Throwable th) {
            this.f27872w.unlock();
            throw th;
        }
    }

    public void hp(hp hpVar) {
        if (hpVar != null) {
            this.f27866a.add(hpVar);
        }
    }

    @Override // com.byazt.ya.hp
    public File jx(String str) {
        this.f27868j.lock();
        File file = this.f27869l.get(str);
        this.f27868j.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.hp, str);
        this.f27872w.lock();
        this.f27869l.put(str, file2);
        this.f27872w.unlock();
        Iterator<hp> it = this.f27866a.iterator();
        while (it.hasNext()) {
            it.next().hp(str);
        }
        jx();
        return file2;
    }

    public void hp(long j2) {
        this.eb = j2;
        jx();
    }

    public void hp() {
        com.byazt.mg.jx.hp().l();
        Context context = com.byazt.mg.j.getContext();
        if (context != null) {
            com.byazt.zt.jx.hp(context).hp(0);
        }
        this.gu.removeCallbacks(this.f27867e);
        ((r) j.getService("thread_service")).executeNormalTask(new Runnable() { // from class: com.byazt.ya.jx.4
            @Override // java.lang.Runnable
            public void run() {
                jx.this.l(0L);
            }
        });
    }

    @Override // com.byazt.ya.hp
    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f27870q.hp(str);
    }

    private String hp(File file) {
        return file.getName();
    }

    @Override // com.byazt.ya.hp
    public void l(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f27870q.l(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(long j2) {
        HashSet hashSet;
        long length;
        final HashSet hashSet2 = new HashSet();
        this.f27872w.lock();
        try {
            Iterator<Map.Entry<String, File>> it = this.f27869l.entrySet().iterator();
            length = 0;
            while (it.hasNext()) {
                length += it.next().getValue().length();
            }
        } catch (Throwable unused) {
            hashSet = null;
        }
        if (length <= j2) {
            this.f27872w.unlock();
            return;
        }
        long j3 = (long) (j2 * this.f27871s);
        hashSet = new HashSet();
        try {
            for (Map.Entry<String, File> entry : this.f27869l.entrySet()) {
                File value = entry.getValue();
                if (value != null && value.exists()) {
                    if (!this.f27870q.jx(hp(value))) {
                        long length2 = value.length();
                        File file = new File(value.getAbsolutePath() + "-tmp");
                        if (value.renameTo(file)) {
                            hashSet2.add(file);
                            length -= length2;
                            hashSet.add(entry.getKey());
                        }
                    }
                } else {
                    hashSet.add(entry.getKey());
                }
                if (length <= j3) {
                    break;
                }
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                this.f27869l.remove((String) it2.next());
            }
        } catch (Throwable unused2) {
        }
        this.f27872w.unlock();
        Iterator<hp> it3 = this.f27866a.iterator();
        while (it3.hasNext()) {
            it3.next().hp(hashSet);
        }
        ((r) j.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.ya.jx.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    try {
                        ((File) it4.next()).delete();
                    } catch (Throwable unused3) {
                    }
                }
            }
        });
    }
}
