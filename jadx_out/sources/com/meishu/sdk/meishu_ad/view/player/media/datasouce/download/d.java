package com.meishu.sdk.meishu_ad.view.player.media.datasouce.download;

import com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.c;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.Call;
import okhttp3.Callback;

/* loaded from: classes4.dex */
public class d implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.b.a f32778a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f32779b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f32780c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f32781d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RandomAccessFile f32782e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ c.b f32783f;

    public d(c.b bVar, c.b.a aVar, long j2, String str, Object obj, RandomAccessFile randomAccessFile) {
        this.f32783f = bVar;
        this.f32778a = aVar;
        this.f32779b = j2;
        this.f32780c = str;
        this.f32781d = obj;
        this.f32782e = randomAccessFile;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        c.b.a aVar = this.f32778a;
        if (aVar != null) {
            ((c.a) aVar).a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:2:0x0000, B:4:0x0022, B:7:0x002c, B:9:0x003f, B:12:0x0046, B:14:0x005a, B:21:0x0067, B:23:0x0071, B:25:0x008f, B:27:0x0093, B:29:0x00a4, B:30:0x00a7, B:31:0x00ac, B:33:0x00b7, B:34:0x00b9, B:38:0x00c7, B:40:0x00cb, B:42:0x00d3, B:44:0x00e8, B:48:0x00ee, B:49:0x00ef, B:51:0x011b, B:53:0x0123, B:54:0x0128, B:56:0x0137, B:24:0x0075, B:57:0x013b, B:59:0x0159, B:35:0x00ba, B:36:0x00c4), top: B:74:0x0000, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075 A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:2:0x0000, B:4:0x0022, B:7:0x002c, B:9:0x003f, B:12:0x0046, B:14:0x005a, B:21:0x0067, B:23:0x0071, B:25:0x008f, B:27:0x0093, B:29:0x00a4, B:30:0x00a7, B:31:0x00ac, B:33:0x00b7, B:34:0x00b9, B:38:0x00c7, B:40:0x00cb, B:42:0x00d3, B:44:0x00e8, B:48:0x00ee, B:49:0x00ef, B:51:0x011b, B:53:0x0123, B:54:0x0128, B:56:0x0137, B:24:0x0075, B:57:0x013b, B:59:0x0159, B:35:0x00ba, B:36:0x00c4), top: B:74:0x0000, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0093 A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:2:0x0000, B:4:0x0022, B:7:0x002c, B:9:0x003f, B:12:0x0046, B:14:0x005a, B:21:0x0067, B:23:0x0071, B:25:0x008f, B:27:0x0093, B:29:0x00a4, B:30:0x00a7, B:31:0x00ac, B:33:0x00b7, B:34:0x00b9, B:38:0x00c7, B:40:0x00cb, B:42:0x00d3, B:44:0x00e8, B:48:0x00ee, B:49:0x00ef, B:51:0x011b, B:53:0x0123, B:54:0x0128, B:56:0x0137, B:24:0x0075, B:57:0x013b, B:59:0x0159, B:35:0x00ba, B:36:0x00c4), top: B:74:0x0000, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b7 A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:2:0x0000, B:4:0x0022, B:7:0x002c, B:9:0x003f, B:12:0x0046, B:14:0x005a, B:21:0x0067, B:23:0x0071, B:25:0x008f, B:27:0x0093, B:29:0x00a4, B:30:0x00a7, B:31:0x00ac, B:33:0x00b7, B:34:0x00b9, B:38:0x00c7, B:40:0x00cb, B:42:0x00d3, B:44:0x00e8, B:48:0x00ee, B:49:0x00ef, B:51:0x011b, B:53:0x0123, B:54:0x0128, B:56:0x0137, B:24:0x0075, B:57:0x013b, B:59:0x0159, B:35:0x00ba, B:36:0x00c4), top: B:74:0x0000, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011b A[Catch: all -> 0x0061, TryCatch #1 {all -> 0x0061, blocks: (B:2:0x0000, B:4:0x0022, B:7:0x002c, B:9:0x003f, B:12:0x0046, B:14:0x005a, B:21:0x0067, B:23:0x0071, B:25:0x008f, B:27:0x0093, B:29:0x00a4, B:30:0x00a7, B:31:0x00ac, B:33:0x00b7, B:34:0x00b9, B:38:0x00c7, B:40:0x00cb, B:42:0x00d3, B:44:0x00e8, B:48:0x00ee, B:49:0x00ef, B:51:0x011b, B:53:0x0123, B:54:0x0128, B:56:0x0137, B:24:0x0075, B:57:0x013b, B:59:0x0159, B:35:0x00ba, B:36:0x00c4), top: B:74:0x0000, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef A[EDGE_INSN: B:77:0x00ef->B:49:0x00ef BREAK  A[LOOP:0: B:31:0x00ac->B:81:0x00ac], SYNTHETIC] */
    @Override // okhttp3.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResponse(okhttp3.Call r13, okhttp3.Response r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.d.onResponse(okhttp3.Call, okhttp3.Response):void");
    }
}
