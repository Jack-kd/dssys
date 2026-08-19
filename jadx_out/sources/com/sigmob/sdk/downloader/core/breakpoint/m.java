package com.sigmob.sdk.downloader.core.breakpoint;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes4.dex */
public class m implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    static final int f37352a = 0;

    /* renamed from: b, reason: collision with root package name */
    static final int f37353b = -1;

    /* renamed from: c, reason: collision with root package name */
    static final int f37354c = -2;

    /* renamed from: d, reason: collision with root package name */
    static final int f37355d = -3;

    /* renamed from: e, reason: collision with root package name */
    private static final String f37356e = "RemitSyncExecutor";

    /* renamed from: f, reason: collision with root package name */
    private final Handler f37357f;

    /* renamed from: g, reason: collision with root package name */
    private final Set<Integer> f37358g;

    /* renamed from: h, reason: collision with root package name */
    private final a f37359h;

    public interface a {
        void a(List<Integer> list) throws IOException;

        void h(int i2) throws IOException;

        void i(int i2);
    }

    public m(a aVar) {
        this.f37359h = aVar;
        this.f37358g = new HashSet();
        HandlerThread handlerThread = new HandlerThread("FileDownload RemitHandoverToDB");
        handlerThread.start();
        this.f37357f = new Handler(handlerThread.getLooper(), this);
    }

    public void a() {
        this.f37357f.getLooper().quit();
    }

    public void b(int i2) {
        this.f37357f.sendEmptyMessage(i2);
    }

    public void c(int i2) {
        Message messageObtainMessage = this.f37357f.obtainMessage(-3);
        messageObtainMessage.arg1 = i2;
        this.f37357f.sendMessage(messageObtainMessage);
    }

    public void d(int i2) {
        Message messageObtainMessage = this.f37357f.obtainMessage(-2);
        messageObtainMessage.arg1 = i2;
        this.f37357f.sendMessage(messageObtainMessage);
    }

    public void e(int i2) {
        this.f37357f.removeMessages(i2);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2;
        StringBuilder sb;
        String str;
        String str2;
        int i3 = message.what;
        if (i3 == -3) {
            i2 = message.arg1;
            this.f37358g.remove(Integer.valueOf(i2));
            this.f37359h.i(i2);
            sb = new StringBuilder();
            str = "remove info ";
        } else {
            if (i3 != -2) {
                if (i3 == -1) {
                    List list = (List) message.obj;
                    this.f37358g.removeAll(list);
                    sb = new StringBuilder();
                    sb.append("remove free bunch ids ");
                    sb.append(list);
                    com.sigmob.sdk.downloader.core.c.b(f37356e, sb.toString());
                    return true;
                }
                if (i3 != 0) {
                    try {
                        this.f37359h.h(i3);
                        this.f37358g.add(Integer.valueOf(i3));
                        com.sigmob.sdk.downloader.core.c.b(f37356e, "sync info with id: " + i3);
                        return true;
                    } catch (IOException unused) {
                        str2 = "sync cache to db failed for id: " + i3;
                    }
                } else {
                    List<Integer> list2 = (List) message.obj;
                    try {
                        this.f37359h.a(list2);
                        this.f37358g.addAll(list2);
                        com.sigmob.sdk.downloader.core.c.b(f37356e, "sync bunch info with ids: " + list2);
                        return true;
                    } catch (IOException unused2) {
                        str2 = "sync info to db failed for ids: " + list2;
                    }
                }
                com.sigmob.sdk.downloader.core.c.a(f37356e, str2);
                return true;
            }
            i2 = message.arg1;
            this.f37358g.remove(Integer.valueOf(i2));
            sb = new StringBuilder();
            str = "remove free bunch id ";
        }
        sb.append(str);
        sb.append(i2);
        com.sigmob.sdk.downloader.core.c.b(f37356e, sb.toString());
        return true;
    }

    public m(a aVar, Handler handler, Set<Integer> set) {
        this.f37359h = aVar;
        this.f37357f = handler;
        this.f37358g = set;
    }

    public void a(int i2, long j2) {
        this.f37357f.sendEmptyMessageDelayed(i2, j2);
    }

    public void b(List<Integer> list) {
        Message messageObtainMessage = this.f37357f.obtainMessage(-1);
        messageObtainMessage.obj = list;
        this.f37357f.sendMessage(messageObtainMessage);
    }

    public void a(List<Integer> list) {
        Message messageObtainMessage = this.f37357f.obtainMessage(0);
        messageObtainMessage.obj = list;
        this.f37357f.sendMessage(messageObtainMessage);
    }

    public void a(int[] iArr) {
        for (int i2 : iArr) {
            this.f37357f.removeMessages(i2);
        }
    }

    public boolean a(int i2) {
        return this.f37358g.contains(Integer.valueOf(i2));
    }
}
