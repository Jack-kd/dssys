package com.byazt.ap;

import android.text.TextUtils;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.sigmob.sdk.downloader.core.c;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

@com.byazt.kj.hp(hp = {0, 1, 1229, 34})
/* loaded from: classes2.dex */
public class l extends j {
    public File hp;

    /* renamed from: l, reason: collision with root package name */
    public File f18058l;

    public l(jl jlVar) {
        super(jlVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(Map<String, String> map) {
        if (TextUtils.equals(map.get(c.f37370i), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get(c.f37367f);
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long eb(Map<String, String> map) {
        String str = map.containsKey("content-length") ? map.get("content-length") : map.containsKey(c.f37366e) ? map.get(c.f37366e) : null;
        if (!TextUtils.isEmpty(str) && str != null) {
            try {
                return Long.valueOf(str).longValue();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean s(Map<String, String> map) {
        return TextUtils.equals(map.get("Content-Encoding"), "gzip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            this.hp.delete();
        } catch (Throwable unused) {
        }
        try {
            this.f18058l.delete();
        } catch (Throwable unused2) {
        }
    }

    public l(jl jlVar, String str, String str2, String str3) {
        super(jlVar);
        hp(str);
        hp(str2, str3);
    }

    public void hp(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.hp = new File(str, str2);
        this.f18058l = new File(str, str2 + ".temp");
    }

    public void hp(final com.byazt.mnb.hp hpVar) {
        File file = this.hp;
        if (file == null || this.f18058l == null) {
            if (hpVar != null) {
                hpVar.hp(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.hp.length() != 0 && hpVar != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.byazt.oyr.l lVar = new com.byazt.oyr.l(true, 200, "Success", null, null, jCurrentTimeMillis, jCurrentTimeMillis);
            lVar.hp(this.hp);
            hpVar.hp(this, lVar);
            return;
        }
        long length = this.f18058l.length();
        final long j2 = length >= 0 ? length : 0L;
        k.hp hpVar2 = new k.hp();
        hpVar2.hp((Object) l());
        l(c.f37363b, BytesRange.PREFIX + j2 + "-");
        if (TextUtils.isEmpty(this.f18049a)) {
            hpVar.hp(this, new IOException("Url is Empty"));
            return;
        }
        try {
            hpVar2.hp(this.f18049a);
            hp(hpVar2);
            this.jx.hp(hpVar2.hp().l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.ap.l.1
                @Override // com.byazt.uhg.jx
                public void onFailure(com.byazt.uhg.l lVar2, IOException iOException) {
                    com.byazt.mnb.hp hpVar3 = hpVar;
                    if (hpVar3 != null) {
                        hpVar3.hp(l.this, iOException);
                    }
                    l.this.w();
                }

                /* JADX WARN: Removed duplicated region for block: B:121:0x017c A[EDGE_INSN: B:121:0x017c->B:60:0x017c BREAK  A[LOOP:1: B:52:0x0152->B:59:0x0179], SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:54:0x015c A[Catch: all -> 0x0148, TryCatch #5 {all -> 0x0148, blocks: (B:44:0x012f, B:46:0x013d, B:48:0x0141, B:51:0x014b, B:52:0x0152, B:54:0x015c, B:56:0x0168, B:58:0x0170, B:61:0x017e, B:64:0x018a, B:66:0x0194, B:68:0x01a0, B:70:0x01ac, B:71:0x01bb, B:72:0x01c8, B:75:0x01e2), top: B:112:0x012f }] */
                /* JADX WARN: Removed duplicated region for block: B:61:0x017e A[Catch: all -> 0x0148, TryCatch #5 {all -> 0x0148, blocks: (B:44:0x012f, B:46:0x013d, B:48:0x0141, B:51:0x014b, B:52:0x0152, B:54:0x015c, B:56:0x0168, B:58:0x0170, B:61:0x017e, B:64:0x018a, B:66:0x0194, B:68:0x01a0, B:70:0x01ac, B:71:0x01bb, B:72:0x01c8, B:75:0x01e2), top: B:112:0x012f }] */
                /* JADX WARN: Removed duplicated region for block: B:72:0x01c8 A[Catch: all -> 0x0148, TryCatch #5 {all -> 0x0148, blocks: (B:44:0x012f, B:46:0x013d, B:48:0x0141, B:51:0x014b, B:52:0x0152, B:54:0x015c, B:56:0x0168, B:58:0x0170, B:61:0x017e, B:64:0x018a, B:66:0x0194, B:68:0x01a0, B:70:0x01ac, B:71:0x01bb, B:72:0x01c8, B:75:0x01e2), top: B:112:0x012f }] */
                /* JADX WARN: Removed duplicated region for block: B:74:0x01e1  */
                @Override // com.byazt.uhg.jx
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onResponse(com.byazt.uhg.l r21, com.byazt.uhg.u r22) throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 556
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.ap.l.AnonymousClass1.onResponse(com.byazt.uhg.l, com.byazt.uhg.u):void");
                }
            });
        } catch (IllegalArgumentException unused) {
            hpVar.hp(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x021c A[Catch: all -> 0x01fd, TryCatch #18 {all -> 0x01fd, blocks: (B:86:0x01ea, B:94:0x020b, B:103:0x0226, B:105:0x022e, B:107:0x0238, B:109:0x0242, B:113:0x024e, B:117:0x0268, B:121:0x027c, B:100:0x021c), top: B:213:0x01ea }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x01aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0208 A[EDGE_INSN: B:217:0x0208->B:92:0x0208 BREAK  A[LOOP:1: B:75:0x01c2->B:87:0x01f6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0149 A[PHI: r11
      0x0149: PHI (r11v5 long) = (r11v4 long), (r11v9 long) binds: [B:38:0x0101, B:40:0x0110] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01bb A[PHI: r2
      0x01bb: PHI (r2v22 java.io.InputStream) = (r2v20 java.io.InputStream), (r2v20 java.io.InputStream), (r2v21 java.io.InputStream) binds: [B:66:0x01a8, B:68:0x01ac, B:70:0x01b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020b A[Catch: all -> 0x01fd, TryCatch #18 {all -> 0x01fd, blocks: (B:86:0x01ea, B:94:0x020b, B:103:0x0226, B:105:0x022e, B:107:0x0238, B:109:0x0242, B:113:0x024e, B:117:0x0268, B:121:0x027c, B:100:0x021c), top: B:213:0x01ea }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0213  */
    @Override // com.byazt.ap.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.oyr.l hp() {
        /*
            Method dump skipped, instructions count: 846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ap.l.hp():com.byazt.oyr.l");
    }
}
